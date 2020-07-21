%% vietkey.luanan.1.2.cls - Version 1.2
%% based on standard LaTeX report class
%% (c) Dang Minh Tuan, Vietkey Group.
%% Tel: +84-98-868-6636, Email: tuanvietkey@gmail.com.
%%
%% History:
%% - Created on 2016/08/16.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vietkey.luanan.1.2}[2016/08/16  v1.2 vietkey.luanan.1.2 class]

\LoadClassWithOptions{report}  % build on standard report class

%\usepackage[vietnam,english]{babel}
\RequirePackage[slovene,english]{babel} % dùng tạm slovene vì langid không hỗ trợ vietnam dù có babel có hỗ trợ, do đó trong dữ liệu thêm thường langid={slovene}, cho tiếng việt ở các phần định nghĩa \DefineBibliographyStrings{slovene}{andothers={và cộng sự}} và \DefineBibliographyStrings{slovene}{pages={tr.}}

%\RequirePackage[utf8]{vietnam}
%\RequirePackage[bibstyle=luanan,sorting=nyvt,block=none,defernumbers=true,babel=other]{biblatex} %tham số firstinits=true để viết tắt, defernumbers để số thứ tự liền mạch.
%
%%\RequirePackage[backend=bibtex,bibstyle=luanan,sorting=nyvt,block=none,defernumbers=true,babel=other]{biblatex} %tham số firstinits=true để viết tắt, defernumbers để số thứ tự liền mạch.
%
%%\DeclareFieldFormat[article]{pages}{tr. #1}% có tác dụng mới toàn thể các language
%
%\DefineBibliographyStrings{slovene}{andothers={và cộng sự}} %tiếng Anh là at el.
%\DefineBibliographyStrings{slovene}{pages={tr.}}
%\DefineBibliographyStrings{slovene}{and={và}}

%%%% đoạn sau để thay đổi số bắt đầu của bibliography
%\makeatletter
%\patchcmd{\blx@printbibliography}
%{\blx@bibliography\blx@tempa}
%{\setcounter{bibitemtotal}{5} % số bắt đầu đánh số tham chiếu, ở đây là 5.
%    \setlength{\labelnumberwidth}{0pt}%
%%    \begingroup
%%    \def\do##1{\stepcounter{bibitemtotal}}% tính tổng số tham chiếu
%%    \dolistloop{\blx@tempa}%
%%    \endgroup
%    \blx@setlabwidth{\labelnumberwidth}{%
%        \csuse{abx@ffd@*@labelnumberwidth}{\arabic{bibitemtotal}}}%
%    \blx@bibliography\blx@tempa}{}{}
%\makeatother
%\newcounter{bibitemtotal}
%\newrobustcmd*{\mkbibdesc}[1]{%
%    \number\numexpr\value{bibitemtotal}+#1\relax}
%    %\number\numexpr\value{bibitemtotal}+#1\relax} %gốc là giảm dần đánh số tham chiếu.
%\DeclareFieldFormat{labelnumber}{\mkbibdesc{#1}}
%\DeclareFieldFormat{labelnumberwidth}{\mkbibbrackets{#1}}
%
%\defbibenvironment{bibliography}
%{\list
%    {\printtext[labelnumberwidth]{\printfield{labelnumber}}}
%    {\setlength{\labelwidth}{\labelnumberwidth+10pt}% chỉnh phần thụt của text ở danh mục tài liệu tham khảo
%        \setlength{\leftmargin}{\labelwidth}%
%        \setlength{\labelsep}{\biblabelsep}%
%        \addtolength{\leftmargin}{\labelsep}%
%        \setlength{\itemsep}{\bibitemsep}%
%        \setlength{\parsep}{\bibparsep}}%
%    \renewcommand*{\makelabel}[1]{\hss##1}}
%{\endlist}
%{\item}

%%%% cách khác
%\setcounter{startc}{5}
% \DeclareFieldFormat{labelnumber}{#1}
% \DeclareFieldFormat{labelnumberwidth}{\mkbibparens{#1}}
%
% %\DeclareCiteCommand{\cite}[\mkbibparens]
% \DeclareCiteCommand{\cite}[\mkbibbrackets]
% {\usebibmacro{prenote}}
% {\usebibmacro{citeindex}%
%     %\printtext[bibhyperref]{\numberstringnum{\number\numexpr\value{\usebibmacro{cite}}}}
%     %\printtext{usebibmacro{cite}}
%     \usebibmacro{cite}}
% {\multicitedelim}
% {\usebibmacro{postnote}}
%
% \DeclareCiteCommand{\parencite}[\mkbibparens]
% {\usebibmacro{prenote}}
% {\usebibmacro{citeindex}%
%     \usebibmacro{cite}}
% {\multicitedelim}
% {\usebibmacro{postnote}}
%%%% kết thúc thay đổi số bắt đầu của bibliography

\RequirePackage{enumerate} % cần gói này để định nghĩa \begin{enumerate}[label=(\arabic*)] theo kiểu mới, nếu không có gói này thì \begin{enumerate}[label=[\arabic*]] sẽ bị lỗi, với gói này thì sẽ dùng \begin{enumerate}[label={[\arabic*]}].


% Du lieu ve tai lieu tham khao, trich dan.
% \addbibresource[label=1]{bibdmt.bib}

\RequirePackage{amsmath,amsxtra,amssymb,latexsym, amscd,amsthm}
\RequirePackage{indentfirst}

%\RequirePackage{mathptmx} %một kiểu định dạng các ký hiệu toán học nhưng ko được đẹp cho lắm

% các gói và lệnh dưới đây dùng để thiết lập header/footer, tuy nhiên trong luận án, luận văn thì không dùng.
%\RequirePackage{fancyhdr}
%\pagestyle{fancyplain}
%\pagestyle{fancy}

\RequirePackage{picinpar}
\RequirePackage{floatflt}
\RequirePackage{epic}
\RequirePackage{curves}
\RequirePackage{makeidx}
\RequirePackage{longtable}%
\RequirePackage{multicol}%
\RequirePackage{listings}

\RequirePackage[fontsize=13pt]{scrextend}
%\changefontsizes[26pt]{13pt}
%\renewcommand{\baselinestretch}{4}  %giãn dòng
\RequirePackage{setspace}
%\onehalfspacing
\linespread{1.45}
%%\doublespacing
%\setstretch{4}

%\usepackage{blindtext}

%\RequirePackage[tight,vietnam]{minitoc}%
\RequirePackage[tight]{minitoc}%
\RequirePackage{fancybox}

\RequirePackage{pdflscape}

%%%% Định Lý
\RequirePackage{tcolorbox}
\RequirePackage{enumitem}
%\setlist{nosep} %không giãn cách trong list

\RequirePackage{tikz}
\usetikzlibrary{calc}
\newcommand\HRule{\rule{\textwidth}{1pt}}

%\usepackage[utf8]{inputenc, vietnam}
% \setlist[enumerate]{itemsep=-0.5em}

\let\tempone\itemize
\let\temptwo\enditemize
\renewenvironment{itemize}{\tempone\addtolength{\itemsep}{-0.5em}}{\temptwo}
\setlist[itemize]{itemsep=-0.5em,topsep=3pt}
\renewenvironment{itemize}{\linespread{1}\tempone}{\temptwo\linespread{1.45}}

\setenumerate{itemsep=-1pt,topsep=3pt}

%
%\tcbuselibrary{theorems}
%
%\newtcbtheorem[number within=section]{mytheo}{Định lý}%
%{colback=green!5,colframe=green!35!black,fonttitle=\bfseries}{th}
%
%%%%% Định Lý
%\newtheorem{theorem}{Định lý}[section]
%\newtheorem{lemma}[theorem]{Bổ đề}
%\newtheorem{defi}[theorem]{Định nghĩa}

%\newtheorem{corollary}{theorem}[Hệ quả]

\renewcommand\qedsymbol{$\blacksquare$}

\font\tua=ugqbo8v at 30pt

% các lệnh dưới đây thiết lệch canh lề, nhưng không okie bằng package {geometry}
%\setlength{\textwidth}{16cm }
%\addtolength{\hoffset}{-1.0cm}
%\addtolength{\textheight}{2.2cm}

\parskip 2pt
\headsep=12pt

%\renewcommand{\headwidth}{16truecm}
%
%\renewcommand{\chaptermark}[1]%
%              {\markboth{\it #1}{}}
%\renewcommand{\sectionmark}[1]%
%           {\markright{\it \thesection\ #1}}
%\lhead[\fancyplain{}{\thepage}]%
%{\fancyplain{}{\rightmark}}
%\rhead[\fancyplain{}{\leftmark}]%
%   {\fancyplain{}{\thepage}}
%\cfoot{}
%\sloppy

%% this makes images possible both in latex and pdftex
\RequirePackage{graphicx}   % Necessary to use \scalebox, bóp kích thước công thức xuống
\RequirePackage{color, graphicx}

\RequirePackage[chapter]{algorithm}
\RequirePackage{algorithmic}
\floatname{algorithm}{\hfil algorithm}

\makeindex
\setcounter{secnumdepth}{4}
\renewcommand{\mtctitle}{\ } %dinh nghia lai ten
\setcounter{minitocdepth}{1}
%]-
\RequirePackage{eso-pic,calc}

\listfiles
\makeatletter

\PassOptionsToPackage{hyphens}{url}
\RequirePackage[
%unicode=true
% Some remarks:
% * drivers like 'pdftex' that can be detected automatically
%   are not necessary
% * breaklinks is rather an internal option.
%   If a driver does not support it, then forcing the option
%   let the text break across lines, but also the link
%   areas are "broken". If the driver supports the option,
%   then the option is enabled anyway.
% * Information entries should be set outside,
%   because LaTeX expands the package options,
%   hyperref does not like them, if they are
%   prematurely expanded.
% * Hyperref has a new option for hiding links: hidelinks
hidelinks,
unicode,
letterpaper,
%pagebackref,
bookmarksopen,
bookmarksnumbered,
]{hyperref}

% Adding package bookmark improves bookmarks handling.
% More features and faster updated bookmarks.
\RequirePackage{bookmark}

\RequirePackage{titlesec} % tùy biến các chương, mục

\titleformat{\chapter}{\bfseries \large \center}{CHAPTER \thechapter. }{0.3em}{}[]
\titleformat{\section}{\bfseries \large}{ \thesection.}{0.3em}{}[]
\titleformat{\subsection}{\it \bfseries }{ \thesubsection.}{0.3em}{}[]
\titleformat{\subsubsection}{ \it }{ \thesubsubsection.}{0.3em}{}[]
\titlespacing{\chapter}{1em}{0.1em}{3em}

%\newcommand\myeq{\stackrel{\mathclap{\normalfont\mbox{def}}}{=}}
%\newcommand{\myeq}{\overset{\mathrm{def}}{=\joinrel=}}
\newcommand*{\MyDef}{\mathrm{def}}
\newcommand*{\eqdefU}{\ensuremath{\mathop{\overset{\MyDef}{=}}}}% Unscaled version
\newcommand*{\myeq}{\mathop{\overset{\MyDef}{\resizebox{\widthof{\eqdefU}}{\heightof{=}}{=}}}}

\RequirePackage[titles]{tocloft} % tùy biến mục lục các chương, mục
\setlength\cftchapnumwidth{8em}
\renewcommand\cftchappresnum{CHAPTER~}
\renewcommand{\cftchapaftersnum}{.}
%\renewcommand{\cftappendixpresnum}{PHỤ LỤC\space}
% \renewcommand{\cfttoctitlefont}{\bfseries \large \hfil}
%\renewcommand{\cftlottitlefont}{\hfill\Large}
% \renewcommand{\cftloftitlefont}{\bfseries \large \hfil}

\makeatletter
\g@addto@macro\appendix{%
    \addtocontents{toc}{%
        \protect\renewcommand{\protect\cftchappresnum}{GLOSSARY}%
    }%
}
\makeatother

\RequirePackage{thmtools} % tùy biến các mục định lý, định nghĩa

% example style
\declaretheoremstyle[
headfont=\bfseries\scshape,
notebraces={[}{]},
bodyfont=\normalfont\itshape,
headpunct={},
%postheadspace=\newline,
%postheadhook={\textcolor{red}{\rule[.6ex]{\linewidth}{0.4pt}}\\},
%spacebelow=\parsep,
%spaceabove=\parsep,
%mdframed={
%    backgroundcolor=red!20,
%    linecolor=red!30,
%    innertopmargin=6pt,
%    roundcorner=5pt,
%    innerbottommargin=6pt,
%    skipabove=\parsep,
%    skipbelow=\parsep }
]{myexamplestyle}

\declaretheorem[style=myexamplestyle,name=Định lý,numberwithin=section]{theorem}
\declaretheorem[style=myexamplestyle]{definition}

\newtheorem{defi}[theorem]{Definition}
\newtheorem{lemma}[theorem]{Lemma}
%\newtheorem{theorem}{Định lý}[section]

%\RequirePackage{bold-extra}
%\RequirePackage{lmodern}
%\RequirePackage{kpfonts}
\RequirePackage{booktabs} % phục vụ tables

\RequirePackage[format=plain,
labelfont={bf,it},
textfont=it]{caption}  % định dạng tiêu đề hình ảnh bảng biểu


\RequirePackage{fancyhdr}  % tiêu đề trang, đánh số trang
\pagestyle{fancy}
\fancyhf{}
\fancyheadoffset{0cm}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot[RO,LE]{\small\thepage}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[RO,LE]{\small\thepage}
}
% \fancyhead[LO]{\small Chapter \thechapter. \chaptermark}
% \fancyhead[RE]{\small Ho Chi Minh City University of Technology}

%\usepackage{etoolbox} % dùng để tùy biến patch những nơi không có lệnh renewcommand.

\allowdisplaybreaks % cho phép ngắt trang ở những môi trường công thức.

%\renewcommand{\qedsymbol}{\ensuremath{\Box}}  % định nghĩa lại dấu ngăn cách phần chứng minh và text.
\renewcommand{\qedsymbol}{\ensuremath{\square}}

\RequirePackage{pdfpages}

%%%%%% thiết lập khoảng cách vertical giữa text và công thức:
\makeatletter
\g@addto@macro\normalsize{%
    \setlength\abovedisplayskip{8pt}
    \setlength\belowdisplayskip{8pt}
    \setlength\abovedisplayshortskip{8pt}
    \setlength\belowdisplayshortskip{8pt}
}
\makeatother

\RequirePackage[a4paper,left=3.5cm, right=2cm,top=3.5cm,bottom=3cm]{geometry} % canh các lề phải trái

\RequirePackage[backend=bibtex,
                bibstyle=luanan,
                % style=ieee,
                sorting=none,
                block=none,
                %defernumbers=true,
                babel=other
                ]{biblatex}
\DefineBibliographyStrings{slovene}{andothers={at el.}} %tiếng Anh là at el.
\DefineBibliographyStrings{slovene}{pages={pg.}}
\DefineBibliographyStrings{slovene}{and={and}}
%\DeclareFieldFormat[article]{pages}{tr. #1}% có tác dụng mới toàn thể các language

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Các lệnh VK* định nghĩa
\newcommand\VKnumRoman{
    \pagenumbering{roman}
    \setcounter{page}{1}
}

\newcommand\VKmucLuc{
    \newpage
    \renewcommand*\contentsname{TABLE OF CONTENTS}
    \addcontentsline{toc}{section}{{\bf TABLE OF CONTENTS\rm }}
    \tableofcontents
}

\newcommand\VKdanhMucHinhVe{
    \renewcommand*{\listfigurename}{\bfseries List of Figures}
    \addcontentsline{toc}{section}{{\bf LIST OF FIGURES\rm }}

    {% Thêm chữ hình vẽ
        \let\oldnumberline\numberline%
        \renewcommand{\numberline}{Fig.~\oldnumberline}%
        \listoffigures%
    }
}

\newcommand\VKdanhMucBangBieu{
    \renewcommand*{\listtablename}{\bfseries List of Tables}
    \addcontentsline{toc}{section}{{\bf LIST OF TABLES\rm }}

    {
        \let\oldnumberline\numberline%
        \renewcommand{\numberline}{Table.~\oldnumberline}%
        \listoftables%
    }
}

\newcommand\VKdanhMucDinhLy{
    \renewcommand{\listtheoremname}{List of Theorems}
    \addcontentsline{toc}{section}{{\bf LIST OF THEOREMS\rm }}
%    \let\oldnumberline\numberline%
%    \renewcommand{\numberline}{Định lý~\oldnumberline}%
    \listoftheorems [ignoreall,show={theorem}]
}

\newcommand\VKdanhMucDinhNghia{
    \renewcommand{\listtheoremname}{List of Definitions}
    \addcontentsline{toc}{section}{{\bf LIST OF DEFINITIONS\rm }}
    %\let\oldnumberline\numberline%
    %\renewcommand{\numberline}{Định nghĩa~\oldnumberline}%
    \listoftheorems [ignoreall,show={defi}]
}

\newcommand\VKdanhMucListings{
    % \renewcommand{\lstlistoflistings}{List of Listings}
    \addcontentsline{toc}{section}{{\bf LIST OF LISTINGS\rm }}
    \let\oldnumberline\numberline%
    \renewcommand{\numberline}{Listing.~\oldnumberline}%
    \lstlistoflistings
}

\newcommand\VKbatDaudanhSo{
    \newpage
    \pagenumbering{arabic}
    \setcounter{page}{1}
}

\newcommand\VKtaiLieuThamKhao{
    % \chapter*{Bibliography}%
    \addcontentsline{toc}{chapter}{{\bf BIBLIOGRAPHY}}

    % \titleformat{\chapter}{\bfseries  \large}{CHAPTER \thechapter. }{}{}[]
    % \titlespacing{\chapter}{0.1em}{0.1em}{1.1em}

    % \bibliographystyle{ieeetran}
    % \bibliographystyle{unsrt}
    % \printbibliography[keyword={Vietnam},heading=subbibliography,title={Vietnamese:}]
    \printbibliography % [heading=subbibliography] % ,title={English:}
}

\newcommand\VKngatTrang{
    \newpage
    \renewcommand{\cleardoublepage}{}
    \renewcommand{\clearpage}{}
}

\newcommand\VKdanhSoPhuLuc{
    \newpage
    \renewcommand*{\thepage}{P\arabic{page}}
    \setcounter{page}{1}
}

\newcommand\blankpage{% comando pagina vuota
    \clearpage
    \begingroup
      \null
      \thispagestyle{empty}%
      \addtocounter{page}{-1}%
      \hypersetup{pageanchor=false}%
      \clearpage
    \endgroup
}

% \def\@makechapterhead#1{%
%    \vspace*{50\p@}%
%    {\parindent \z@ \raggedright \normalfont
%      \ifnum \c@secnumdepth >\m@ne
%          \huge\bfseries \@chapapp\space \thechapter
%          \par\nobreak
%          \vskip 20\p@
%      \fi
%      \interlinepenalty\@M
%      \Huge \bfseries #1\par\nobreak
%      \vskip 40\p@
%    }}
%
% \def\@makeschapterhead#1{%
%    \vspace*{50\p@}%
%    {\parindent \z@ \raggedright
%      \normalfont
%      \interlinepenalty\@M
%      \Huge \bfseries  #1\par\nobreak
%      \vskip 40\p@
%    }}
