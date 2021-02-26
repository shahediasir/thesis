%%
%% This is file `MUthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% MUthesis.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2017-2018 by Karl D. Hammond
%% 
%% Karl D. Hammond,
%% Department of Chemical Engineering
%% University of Missouri
%% Contact: hammondkd@missouri.edu
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MUthesis}
    [2020/04/10 v1.10 University of Missouri thesis/dissertation class]
%%
%%
%%
\newcommand*{\univ@name}{University of Missouri}
\newcommand*{\@degree}{Doctor of Philosophy}
\newcommand*{\@degreeabbrv}{Ph.D.}
\newcommand*{\thesis@type}{Dissertation}
\newcommand*{\list@hyphen@penalty}{50}
\newcommand*{\documentname}{\thesis@type}
\newif\ifdouble@space
\newif\ifload@hyperref
\newif\ifis@dissertation
\newif\ifack@found
\ack@foundfalse
\RequirePackage[full]{textcomp}
\AtBeginDocument{%
  \providecommand*{\degrees}{\textdegree}%
  \providecommand*{\micro}{\textmu}%
}
\DeclareOption{10pt}{\def\text@size{10pt}}%
\DeclareOption{11pt}{\def\text@size{11pt}}%
\DeclareOption{12pt}{\def\text@size{12pt}}%
\DeclareOption{dissertation}{%
  \global\is@dissertationtrue
}
\DeclareOption{thesis}{%
  \global\is@dissertationfalse
  \renewcommand*{\thesis@type}{Thesis}%
  \renewcommand*{\@degree}{Master of Science}%
  \renewcommand*{\@degreeabbrv}{M.S.}%
}
\DeclareOption{comprehensive}{%
  \is@dissertationfalse
  \renewcommand*{\documentname}{Dissertation Proposal}
  \addtocontents{toc}{%
    \protect\ifack@found\protect\else
      \protect\global\protect\ack@foundtrue
   \protect\fi
  }
  \AtBeginDocument{%
    \let\copyrightpage\relax
    \let\approvalpage\relax
  }%
}
\DeclareOption{doublespace}{\double@spacetrue}
\DeclareOption{singlespace}{\double@spacefalse}
\DeclareOption{nolisthyphen}{\renewcommand*{\list@hyphen@penalty{10000}}}
\DeclareOption{nohyphen}{%
    \righthyphenmin=62%
    \lefthyphenmin=62%
}
\newcommand*{\hyper@options}{}%
\DeclareOption{hyper}{%
    \load@hyperreftrue
    \renewcommand*{\hyper@options}{pdfpagelabels,hidelinks}
}
\DeclareOption{hyperpages}{%
    \load@hyperreftrue
    \renewcommand*{\hyper@options}{implicit=false,pdfpagelabels,draft}
}
\DeclareOption{nohyper}{\load@hyperreffalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ExecuteOptions{doublespace,dissertation,hyperpages,12pt,letterpaper,oneside,openany}%
\ProcessOptions\relax
\LoadClass[\text@size]{report}
\ifdouble@space
  \RequirePackage{setspace}
\else
  \newenvironment{doublespace}{}{}
  \newenvironment{singlespace}{}{}
  \let\doublespacing\relax
  \let\singlespacing\relax
\fi
\setlength{\oddsidemargin}{0.5truein}  % binding margin at least 1.5in
\setlength{\evensidemargin}{0.0truein} % non-binding margin only 1in
\setlength{\textwidth}{6.0truein}      % 6in wide typing area
\setlength{\topmargin}{-0.5truein} % headers at top of page 0.5in from edge
\setlength{\headheight}{0.2truein} % room for header
\setlength{\headsep}{0.3truein}    % header 0.3in from body, body 1in from top
\setlength{\textheight}{9.0truein} % 9in high typing area
\setlength{\footskip}{0.4truein}   % footer 0.4in from body,
                                   %   0.6in from bottom (allows for trimming)
\widowpenalty=10000
\clubpenalty=10000
\renewcommand*{\floatpagefraction}{0.6}
\newcommand*{\toc@label}{frontmatter}
\newif\if@first@in@section
\@first@in@sectionfalse
\renewcommand\chapter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{plain}%
  \@afterindenttrue
  \global\@topnum\z@
  \secdef\@chapter\@schapter
}
\providecommand*{\texorpdfstring}[2]{\expandafter #1}
\providecommand*{\phantomsection}{}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                             {\protect\numberline{\thechapter.}%
                              \texorpdfstring{\MakeUppercase{#1}}%
                                              {\thechapter. #1}%
                             }%
                    \else
                      \addcontentsline{toc}{chapter}%
                          {\texorpdfstring{\MakeUppercase{#1}}{#1}}%
                    \fi
                    \chaptermark{#1}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\renewcommand{\@makechapterhead}[1]{%   % Heading for \chapter command
  \vspace*{30\p@}                       % Space at top of text page.
  \begin{center}\large\bfseries
    \ifnum \c@secnumdepth >\m@ne
      \MakeUppercase\@chapapp\ \thechapter % 'CHAPTER' and number.
      \par\nobreak
    \fi
  \addvspace{\topskip}
  \MakeUppercase{#1}
  \end{center}
  \par\nobreak                          % TeX penalty to prevent page break.
  \vskip 24\p@                          % Space between title and text.
}
\renewcommand{\@makeschapterhead}[1]{%  % Heading for \chapter* command
  \vspace*{30\p@}                       % Space at top of page.
  \begin{center}
    \large\bfseries                     % Title.
    \MakeUppercase{#1}\par
  \end{center}
  \nobreak                              % TeX penalty to prevent page break.
  \vskip 24\p@                          % Space between title and text.
}
\renewcommand*{\@dotsep}{2}
\renewcommand{\l@chapter}[2]{%
  \addpenalty{-\@highpenalty}%
  \addvspace{\baselineskip}%
  \if@first@in@section
    \addvspace{2\baselineskip}%
    \parindent\z@ {\bfseries\toc@label} \par
    \addvspace{\baselineskip}%
    \@first@in@sectionfalse
  \fi
  \@dottedtocline{0}{0.0em}{1.5em}{\bfseries#1}{\bfseries#2}
}
\renewcommand{\section}{%
  \@startsection{section}{1}{\z@}
                {4.5ex \@plus 2ex \@minus .2ex}
                {0.001ex \@plus .2ex}
                {\normalfont\bfseries}}
\renewcommand{\subsection}{%
  \@startsection{subsection}{2}{\z@}
                {3.25ex \@plus 1ex \@minus .2ex}
                {0.001ex \@plus .2ex}
                {\normalfont\bfseries}}
\renewcommand{\subsubsection}{%
  \@startsection{subsubsection}{3}{\z@}%
                {3.25ex \@plus 1ex \@minus .2ex}%
                {0.001ex \@plus .2ex}%
                {\normalfont\bfseries}}
\renewcommand{\paragraph}{%
  \@startsection{paragraph}{4}{\z@}%
                {2.5ex \@plus1ex \@minus.2ex}%
                {-1em}%
                {\normalfont\normalsize\bfseries}}
\renewcommand{\subparagraph}{%
  \@startsection{subparagraph}{5}{\z@}%
                {0.0ex \@plus1ex \@minus .2ex}%
                {-1em}%
                {\normalfont\small\bfseries}}
\renewcommand*{\contentsname}{Table of Contents}
\renewcommand\tableofcontents{%
    %\if@openright\cleardoublepage\else\clearpage\fi
    \renewcommand*{\thepage}{\roman{page}}%
    \pagestyle{plain}%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \pdfbookmark{\contentsname}{\contentsname}%
    {\hyphenpenalty=\list@hyphen@penalty\@starttoc{toc}}%
    \if@restonecol\twocolumn\fi
}
\def\thetocindent{-1}
\newlength{\MUthesis@contentshangindent}
\setlength{\MUthesis@contentshangindent}{1.55em}
\renewcommand{\@dottedtocline}[5]{%
  \ifnum #1>\c@tocdepth \else
    \ifnum \thetocindent = #1 \else
      \def\thetocindent{#1}
      \ifdouble@space\addvspace{\topskip}\fi
    \fi
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \advance\rightskip by 0pt plus 1fil\relax% ragged-right contents...
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     \hangindent\MUthesis@contentshangindent
     {#4}\nobreak%
     \leaders\hbox{$\m@th\mkern \@dotsep mu \hbox{.}\mkern \@dotsep mu$}%
             \hskip3em plus1fill\relax%
       \normalfont \normalcolor #5%
     \par}%
  \fi}
\newlength{\tablenumberwidth}
\setlength{\tablenumberwidth}{2.3em}
\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    {\normalsize\parindent\z@\textbf{\figurename\hfill Page}\par}%
    {\hyphenpenalty=\list@hyphen@penalty\@starttoc{lof}}%
    \if@restonecol\twocolumn\fi
}
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    {\normalsize\parindent\z@\textbf{\tablename\hfill Page}\par}%
    {\hyphenpenalty=\list@hyphen@penalty\@starttoc{lot}}%
    \if@restonecol\twocolumn\fi
}
\renewcommand*\l@figure{%
  \addvspace{\baselineskip}% blank line between entries of LoF
    \@dottedtocline{1}{1.5em}{\tablenumberwidth}
}
\let\l@table\l@figure
\setlength\abovecaptionskip{\topskip}
\setlength\belowcaptionskip{\topskip}
\RequirePackage{caption}
\captionsetup{font=small,labelsep=period,labelfont=bf}
\setlength{\textfloatsep}{1.75\textfloatsep}
\renewcommand{\appendix}{%
  \if@openright\cleardoublepage\else\clearpage\fi
%%\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand*{\@chapapp}{\appendixname}%
  \renewcommand*{\thechapter}{\@Alph\c@chapter}
  \immediate\write\@auxout{%
    \noexpand\@writefile{toc}{%
      \noexpand\c@tocdepth=0%
      \noexpand\renewcommand*{\noexpand\toc@label}{\appendixname}%
      \noexpand\@first@in@sectiontrue
    }%
  }%
}
\newif\if@mainmatter
\@mainmatterfalse
\newif\if@backmatter
\@backmatterfalse
\newcommand{\frontmatter}{%
  \setcounter{secnumdepth}{-1}%
  \global\@mainmatterfalse
  \global\@backmatterfalse
  \global\@first@in@sectionfalse
  \pagenumbering{roman}%
  \pagestyle{empty}%
}
\newcommand{\mainmatter}{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \restorepagemargins
  % Section numbering by default goes all the way down, but only out to
  % subsections in the Table of Contents
  \setcounter{secnumdepth}{7}%
  \setcounter{tocdepth}{3}%
  \global\@mainmattertrue
  \global\@backmatterfalse
  \immediate\write\@auxout{\noexpand\@writefile{toc}{%
    \noexpand\renewcommand*{\noexpand\toc@label}{\chaptername}%
    \noexpand\@first@in@sectiontrue}%
  }
  \pagestyle{plain}%
  \doublespacing
  \pagenumbering{arabic}%
  \setcounter{chapter}{0}%
}
\newcommand{\backmatter}{%
  \if@mainmatter\else
    \ClassWarning{MUthesis}{Encountered `backmatter' with no `mainmatter'}
    \AtEndDocument{%
      \ClassWarningNoLine{MUthesis}{Encountered `backmatter' with no `mainmatter'}%
    }
  \fi
  \setcounter{secnumdepth}{-1}%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{3}}
  \global\@backmattertrue
  \global\@mainmatterfalse
}
\AtEndDocument{%
  \if@mainmatter
    \ClassWarningNoLine{MUthesis}{No `backmatter' encountered (no bibliography?)}%
  \else
    \if@backmatter\relax\else
      \ClassWarningNoLine{MUthesis}{No `mainmatter' or `backmatter' encountered}%
    \fi
  \fi
}
\newcounter{real@page}
\newcommand{\copyrightpage}{%
  \clearpage
  \setcounter{real@page}{\value{page}}%
  \renewcommand*{\thepage}{\alph{page}}%
  \pdfbookmark{Copyright}{Copyright}%
  \thispagestyle{empty}%
  \null\vfill
  \noindent
  \begin{minipage}{0.98\textwidth}
    \centering\copyright\ Copyright by \@author\ \copyright@year \par
    \doublespacing
    All Rights Reserved
  \end{minipage}
  \vspace{1.25in}\null
  \clearpage
  \pagenumbering{roman}%
  \setcounter{page}{\value{real@page}}%
  \stepcounter{page}
  \let\copyrightpage\relax
}
\renewcommand{\maketitle}{%
  \begin{titlepage}
    \pagestyle{empty}%
    \thispagestyle{empty}%
    \pdfbookmark{Title Page}{Title Page}%
    \setcounter{page}{1}%
    \null
    \vfill
    \begin{center}%
      \setlength{\parskip}{1.25\baselineskip}%
      \MakeUppercase{\@title} \par
      \rule{4in}{1pt}%
      \par
      A \documentname\par
      presented to\par
      the Faculty of the Graduate School\par
      at the \univ@name \par
      \rule{4in}{1pt}%
      \par
      In Partial Fulfillment\par
      of the Requirements for the Degree\par
      \@degree\par
      \rule{4in}{1pt}%
      \par
      by\par
      \MakeUppercase{\@author}\par
      \ifco@chairs
        Dr.~\@firstchair\ and Dr.~\@secondchair, \thesis@type\ Supervisors
      \else
        Dr.~\@chair, \thesis@type\ Supervisor
      \fi
      \par
      \MakeUppercase{\@date}\par
    \end{center}%
    \vfill
    \null
  \end{titlepage}%
  \clearpage
  \renewcommand*{\thepage}{\alph{page}}%
  \setcounter{footnote}{0}%
  \let\thanks\relax
  \let\maketitle\relax
}
\newlength{\nameskip}
\setlength{\nameskip}{0.5in}
\newlength{\rule@thickness}
\setlength{\rule@thickness}{0.5pt}
\newcommand*{\rule@width}{0.55\textwidth}
\newcommand{\approvalpage}{%
  \renewcommand*{\thepage}{\alph{page}}%
  \cleardoublepage
  \providecommand*{\pdfbookmark}[3][]{}%
  \pdfbookmark{Approval Page}{Approval Page}%
  %\pagenumbering{alph}%
  %\setcounter{page}{1}%
  \thispagestyle{empty}%
  {\addtolength{\baselineskip}{0.5ex}\setlength{\parindent}{\z@}%
  The undersigned, appointed by the dean of the Graduate School, have examined
  the\par
  \MakeLowercase{\thesis@type} entitled

  \begin{center}
    \vspace{1ex}%
    \begin{minipage}{0.8\textwidth}\noindent\centering
      \MakeUppercase{\@title}
    \end{minipage}
    \vspace{1ex}%
  \end{center}

  presented by \@author,\par
  a candidate for the degree of {\@degree},\par
  and hereby certify that, in their opinion, it is worthy of acceptance.\par
  }
  \vskip 1.25\nameskip
  \begin{center}
    \ifco@chairs
      \rule{\rule@width}{\rule@thickness}\par
      Professor \@firstchair, co-chair\par
      \vskip\nameskip
      \rule{\rule@width}{\rule@thickness}\par
      Professor \@secondchair, co-chair\par
      \vskip\nameskip
    \else
      \rule{\rule@width}{\rule@thickness}\par
      Professor \@chair, chair\par
      \vskip\nameskip
    \fi
    \rule{\rule@width}{\rule@thickness}\par
    Professor \@firstreader, member\par
    \vskip\nameskip
    \ifsecond@reader
      \rule{\rule@width}{\rule@thickness}\par
      Professor \@secondreader, member\par
      \vskip\nameskip
    \fi
    \ifthird@reader
      \rule{\rule@width}{\rule@thickness}\par
      Professor \@thirdreader, member\par
      \vskip\nameskip
    \fi
    \iffourth@reader
      \rule{\rule@width}{\rule@thickness}\par
      Professor \@fourthreader, member\par
      \vskip\nameskip
    \fi
    \iffifth@reader
      \rule{\rule@width}{\rule@thickness}\par
      Professor \@fifthreader, member\par
      \vskip\nameskip
    \fi
    \ifsixth@reader
      \rule{\rule@width}{\rule@thickness}\par
      Professor \@sixthreader, member\par
      \vskip\nameskip
    \fi
  \end{center}
  \cleardoublepage
}
\newcommand*{\dedicationname}{Dedication}
\newenvironment{dedication}{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \null\vfil
  \renewcommand*{\thepage}{\alph{page}}%
  \thispagestyle{empty}%
  \pdfbookmark{\dedicationname}{\dedicationname}%
  \vfill
  \begin{quotation}
  }{\par\end{quotation}\vfill\vfil\null}
\newcommand*{\epigraphname}{Epigraph}
\newenvironment{epigraph}[1]{%
  \clearpage\null\vfil
  \renewcommand*{\thepage}{\alph{page}}%
  \gdef\epi@author{#1}%
  \thispagestyle{empty}%
  \pdfbookmark{\epigraphname}{\epigraphname}%
  \vfill
  \begin{quote}
}{\end{quote}
    \hspace{0.25\linewidth}---\epi@author\par
  \vfill\vfil\null
}
\newlength{\other@margin}
\newif\ifmargins@normal
\margins@normaltrue
\newcommand{\reversepagemargins}{%
  \if@twoside
    \ifmargins@normal
      \other@margin=\oddsidemargin\relax
      \global\oddsidemargin=\evensidemargin\relax
      \global\evensidemargin=\other@margin\relax
      \global\margins@normalfalse
    \fi
  \fi
}
\newcommand{\restorepagemargins}{%
  \if@twoside
    \ifmargins@normal
      \relax
    \else
      \other@margin=\oddsidemargin\relax
      \global\oddsidemargin=\evensidemargin\relax
      \global\evensidemargin=\other@margin\relax
      \global\margins@normaltrue
    \fi
  \fi
}
\let\normal@cleardoublepage\cleardoublepage
\renewcommand*{\cleardoublepage}{%
  \ifmargins@normal
    \normal@cleardoublepage
  \else
    \clearpage
    \if@twoside
      \ifodd\c@page
        \hbox{}\newpage
        \if@twocolumn\hbox{}\newpage\fi
      \fi
    \fi
  \fi
}
\newcommand*{\ackname}{Acknowledgments}
\newenvironment{acknowledgments}{%
  \chapter{\ackname}%
  \phantomsection
  \pagenumbering{roman}%
  \setcounter{page}{2}% graduate school requirement that this is page ii....
  \reversepagemargins
  \pagestyle{plain}%
  \global\ack@foundtrue
  \begin{doublespace}
}{\end{doublespace}%
  \thispagestyle{plain}%
}
\AtEndDocument{%
  \ifack@found\else
    \ClassWarningNoLine{MUthesis}{No `acknowledgments' environment;\MessageBreak
      this environment is required for all\MessageBreak
      theses and dissertations}
  \fi
}
\renewenvironment{abstract}{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \phantomsection
  \pagestyle{plain}%
  \begin{center}
      {\large\bfseries\MakeUppercase{\@title}}\par
    \par\vspace{1.25\topskip}%
    \@author
    \par\vspace{\topskip}%
    \ifco@chairs
      Dr.~\@firstchair\ and Dr.~\@secondchair, \thesis@type\ Supervisors \par
    \else
      Dr.~\@chair, \thesis@type\ Supervisor \par
    \fi
    \par\vspace{2\topskip}%
    \MakeUppercase{\bfseries\expandafter{\abstractname}}%
    \addcontentsline{toc}{chapter}%
        {\texorpdfstring{\MakeUppercase{\abstractname}}
        {\abstractname}}%
  \end{center} \par \addvspace{-0.75\topskip}%
  \begin{doublespace}%
  \indent
}
{\par\end{doublespace}}
\newif\ifvita@present
\vita@presentfalse
\newenvironment{vita}{%
  \chapter{Vita}
}{\global\vita@presenttrue}
\AtEndDocument{
  \ifis@dissertation
    \ifvita@present\relax
    \else
      \ClassWarningNoLine{MUthesis}{No `vita' environment found; a vita is
        required for dissertations}%
    \fi
  \fi
}
\let\MUthesis@bib@name\bibname
\newcommand*{\refname}{References}%
\newif\ifMUthesis@use@chapterbib
\MUthesis@use@chapterbibfalse
\newif\ifMUthesis@use@natbib
\MUthesis@use@natbibfalse
\renewcommand*{\@biblabel}[1]{\hfill #1.}%
\newcommand{\bibsection}{}
\AtBeginDocument{%
    \@ifpackageloaded{chapterbib}%
        {\MUthesis@use@chapterbibtrue}%
        {\MUthesis@use@chapterbibfalse}%
    \@ifpackageloaded{natbib}%
        {\MUthesis@use@natbibtrue
         \renewcommand*{\bibnumfmt}[1]{#1.}
        }%
        {\MUthesis@use@natbibfalse}%
    \renewcommand{\bibsection}{%
       \ifMUthesis@use@chapterbib
          \if@backmatter
            \chapter{\bibname}%
            \let\MUthesis@bib@name\bibname
          \else
            \section*{\refname}%
            \addcontentsline{toc}{section}{\protect\numberline{}\refname}%
            \let\MUthesis@bib@name\refname
          \fi
       \else
          \chapter{\bibname}%
          \if@backmatter\relax\else\backmatter\fi
       \fi
       \@mkboth{\MakeUppercase\MUthesis@bib@name}
               {\MakeUppercase\MUthesis@bib@name}%
    \singlespacing
    }
    \renewenvironment{thebibliography}[1]{%
       \bibsection
       \ifMUthesis@use@natbib
           \bibpreamble
           \bibfont
           \list{\@biblabel{\the\c@NAT@ctr}}
                {\@bibsetup{#1}\global\c@NAT@ctr\z@}%
       \else
           \list{\@biblabel{\@arabic\c@enumiv}}%
                {%
                 \if@backmatter
                   \labelwidth 20pt%
                   \leftmargin\labelwidth
                 \else
                   \settowidth\labelwidth{\@biblabel{#1}}%
                   \leftmargin\labelwidth
                   \advance\leftmargin\labelsep
                 \fi
                 \@openbib@code
                 \usecounter{enumiv}%
                 \let\p@enumiv\@empty
                 \renewcommand\theenumiv{\@arabic\c@enumiv}%
                }%
       \fi
   \if@backmatter
     \ifMUthesis@use@chapterbib
       \ifMUthesis@use@natbib
         \renewcommand*{\bibnumfmt}[1]{}
         \def\@lbibitem[##1]##2{%
            \item[\hfill]{\hspace{-\labelwidth}\if@filesw
               {\let\protect\noexpand
                \immediate
                \write\@auxout{\string\bibcite{##2}{##1}}}\fi\ignorespaces}%
         }%
       \else
         \renewcommand*{\@bibitem}[1]{%
            \item[\hfill]\hspace{-\labelwidth}\if@filesw
                 \immediate\write\@auxout
                {\string\bibcite{#1}{\the\value{\@listctr}}}\fi\ignorespaces
            }%
       \fi
     \fi
   \fi
%% FIXME should these next two lines be there?
%% \sloppy
%% \interlinepenalty=10000%
   \sfcode`\.\@m
   \ifMUthesis@use@natbib
     \let\NAT@bibitem@first@sw\@firstoftwo
       \let\citeN\cite \let\shortcite\cite
       \let\citeasnoun\cite
   \fi
}{\ifMUthesis@use@natbib
    \bibitem@fin
    \bibpostamble
  \fi
  \def\@noitemerr
    {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist
  \ifMUthesis@use@natbib\bibcleanup\fi
}
}
\AtBeginDocument{%
  \@ifpackageloaded{nomencl}{%
    \ClassWarningNoLine{MUthesis}
      {Redefining the nomenclature to fit with MUthesis.cls}%
    \renewcommand*{\nomname}{List of Symbols}%
    \let\listofsymbols\printnomenclature
    \def\thenomenclature{%
      \chapter{\nomname}%
      \nompreamble
      \list{}{%
        \labelwidth\nom@tempdim
        \leftmargin\labelwidth
        \advance\leftmargin\labelsep
        \itemsep\nomitemsep
        \let\makelabel\nomlabel%
      }%
    }%
  }{}%
}
\AtBeginDocument{%
  \@ifpackageloaded{glossaries}{%
    \ClassWarningNoLine{MUthesis}
      {Redefining glossaries to fit with MUthesis.cls}%
    \renewcommand*{\acronymname}{List of Acronyms}%
    \glstoctrue
    \renewcommand*{\@gls@toc}[2]{%
      \ifglstoc
        \ifglsnumberline
          \addcontentsline{toc}{#2}%
              {\numberline{}\texorpdfstring{\MakeUppercase{#1}}{#1}}%
        \else
          \addcontentsline{toc}{#2}{\texorpdfstring{\MakeUppercase{#1}}{#1}}%
        \fi
      \fi
    }%
  }{}%
}
\AtBeginDocument{%
  \@ifpackageloaded{makeidx}{%
    \ClassWarningNoLine{MUthesis}
      {Redefining the index to fit with MUthesis.cls}%
    \let\old@printindex\printindex
    \renewcommand{\printindex}{%
      \if@openright\cleardoublepage\else\clearpage\fi
      \singlespacing
      \addcontentsline{toc}{chapter}%
          {\texorpdfstring{\MakeUppercase{\indexname}}{\indexname}}%
      \old@printindex
    }%
  }{}%
}
\newcommand*{\degree}[2]{\gdef\@degree{#1}\gdef\@degreeabbrv{#2}}
\let\copyright@year\relax
\def\copyright@year{\ClassWarningNoLine{MUthesis}{No copyright year given}}
\newcommand*{\copyrightyear}[1]{\gdef\copyright@year{#1}}
\newif\ifco@chairs
\co@chairsfalse
\def\@chair{\ClassWarningNoLine{MUthesis}{No \noexpand\chair defined}}
\newcommand*{\chair}[1]{\gdef\@chair{#1}\co@chairsfalse}
\newcommand*{\cochairs}[2]{\gdef\@firstchair{#1}\gdef\@secondchair{#2}%
    \co@chairstrue}
\def\@firstreader{\ClassWarningNoLine{MUthesis}{No \noexpand\firstreader defined}}
\newcommand*{\firstreader}[1]{\gdef\@firstreader{#1}}%
\newif\ifsecond@reader
\second@readerfalse
\newcommand*{\secondreader}[1]{\gdef\@secondreader{#1}\second@readertrue}
\newif\ifthird@reader
\third@readerfalse
\newcommand*{\thirdreader}[1]{\gdef\@thirdreader{#1}\third@readertrue}
\newif\iffourth@reader
\fourth@readerfalse
\newcommand*{\fourthreader}[1]{\gdef\@fourthreader{#1}\fourth@readertrue}
\newif\iffifth@reader
\fifth@readerfalse
\newcommand*{\fifthreader}[1]{\gdef\@fifthreader{#1}\fifth@readertrue}
\newif\ifsixth@reader
\sixth@readerfalse
\newcommand*{\sixthreader}[1]{\gdef\@sixthreader{#1}\sixth@readertrue}
\newcounter{illustration}[chapter]
\newcommand*{\illustrationname}{Illustration}
\newcommand*{\listillustrationname}{List of Illustrations}
\renewcommand\theillustration
    {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@illustration}
\def\fps@illustration{tbp}
\def\ftype@illustration{1}
\def\ext@illustration{loi}
\def\fnum@illustration{\illustrationname\nobreakspace\theillustration}
\newenvironment{illustration}
               {\@float{illustration}}
               {\end@float}
\newenvironment{illustration*}
               {\dblfloat{illustration}}
               {\end@dblfloat}
\newcommand\listofillustrations{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter{\listillustrationname}%
      \@mkboth{%
          \MakeUppercase\listillustrationname}%
         {\MakeUppercase\listillustrationname}%
    {\normalsize\parindent\z@\textbf{\illustrationname\hfill Page}\par}%
    {\hyphenpenalty=\list@hyphen@penalty\@starttoc{loi}}%
    \if@restonecol\twocolumn\fi
}
\let\l@illustration\l@figure
\newcounter{scheme}[chapter]
\newcommand*{\schemename}{Scheme}
\newcommand*{\listschemename}{List of Schemes}
\renewcommand\thescheme
    {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@scheme}
\def\fps@scheme{tbp}
\def\ftype@scheme{1}
\def\ext@scheme{los}
\def\fnum@scheme{\schemename\nobreakspace\thescheme}
\newenvironment{scheme}
               {\@float{scheme}}
               {\end@float}
\newenvironment{scheme*}
               {\dblfloat{scheme}}
               {\end@dblfloat}
\newcommand\listofschemes{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter{\listschemename}%
      \@mkboth{%
          \MakeUppercase\listschemename}%
         {\MakeUppercase\listschemename}%
    {\normalsize\parindent\z@\textbf{\schemename\hfill Page}\par}%
    {\hyphenpenalty=\list@hyphen@penalty\@starttoc{los}}%
    \if@restonecol\twocolumn\fi
}
\let\l@scheme\l@figure
\AtBeginDocument{%
  \@ifpackageloaded{float}{%
    \renewcommand*{\float@listhead}[1]{%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse
      \fi
      \chapter{#1}
        \@mkboth{%
          \MakeUppercase{#1}}
         {\MakeUppercase{#1}}%
    }%
    \renewcommand*{\listof}[2]{%
      \@ifundefined{ext@#1}{\float@error{#1}}{%
        \expandafter\let\csname l@#1\endcsname\l@figure
        \float@listhead{#2}%
        {\normalsize\parindent\z@\textbf{\csname fname@#1\endcsname\hfill
            Page}\par}%
        {\hyphenpenalty=\list@hyphen@penalty
            \@starttoc{\csname ext@#1\endcsname}}%
        \if@restonecol\twocolumn\fi
      }%
    }%
  }{}%
}%
\ifload@hyperref
  \AtBeginDocument{%
    \expandafter\RequirePackage[\hyper@options]{hyperref}
  }
\else
  \AtBeginDocument{%
    \providecommand*{\pdfbookmark}[3][]{}%
  }
\fi
%% Start the document in "frontmatter" mode by default
\AtBeginDocument{%
  \frontmatter
}
\endinput
%%
%% End of file `MUthesis.cls'.
