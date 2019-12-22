#include<vector>

using std::vector;

typedef struct POOL {
  int size;
  char* const location;
  int32_t tag;
  int previousSize;
} _POOL, *PPOOL;

constexpr unsigned int MAX_POOL = 1000;
char POOL_BITMAP[MAX_POOL];
vector<PPOOL> CHUNKS;

void write(PPOOL p, unsigned int size, void* data) {
  char* d = (char*)data;
  if (size > p->size)
    return;
  for (int i = 0; i < size; i++) {
    p->location[i] = d[i];
  }
}

void writePoolHeader(PPOOL p) {
  write(p, sizeof(POOL), (void*)p);
}

PPOOL alloc(unsigned int size, int32_t tag) {
  unsigned int actual_size = size + sizeof(POOL);
  if (chunks.empty()) {
    if (size <= MAX_POOL) {
      PPOOL p = new _POOL{actual_size, &POOL_BITMAP[0], tag};
      writePoolHeader(p);
      CHUNKS.push_back(p);
      PPOOL pp = new _POOL{MAX_POOL - actual_size, &POOL_BITMAP[size], 0, size};
      CHUNKS.push_back(pp);
      return p;
    }
    return nullptr;
  }
  PPOOL lastChunk = CHUNKS.back();
  // split lastChunk in two
  PPOOL newChunk = new _POOL{lastChunk->size - actual_size,
                             lastChunk->location + size,
                             0, size};
  lastChunk->size = actual_size;
  writePoolHeader(lastChunk);
  CHUNKS.push_back(newChunk);
  return lastChunk;
}

