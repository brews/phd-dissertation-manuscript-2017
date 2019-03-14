%%
%% This is file `ua-thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ua-classes.dtx  (with options: `ua-thesis')
%% 
%%
%% File ua-classes.dtx by Marcel Oliver, modified by David Ropp
%%
%% Documentation can be obtained by running "latex labels.dtx"
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ua-thesis}
              [2001/05/09 UA Thesis Class]
\newif\iffinal@
\DeclareOption{final}{%
  \final@true
  \def\doublespaced{\baselineskip=1.5\normalbaselineskip}
  \PassOptionsToClass{final}{report}}
\DeclareOption{draft}{%
  \final@false
  \def\doublespaced{\baselineskip=\normalbaselineskip}
  \PassOptionsToClass{draft}{report}}
\ExecuteOptions{draft}
%%% Double and triple spacing options
\newif\ifdouble@
\DeclareOption{double}{%
  \double@true
  \def\doublespaced{\baselineskip=2.0\normalbaselineskip}}
\newif\iftriple@
\DeclareOption{triple}{%
  \triple@true
  \def\doublespaced{\baselineskip=3.0\normalbaselineskip}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[12pt]{report}
\RequirePackage[reqno]{amsmath}[1996/10/24]
\RequirePackage{amsfonts}[1996/10/24]
\RequirePackage{amsthm}[1996/10/24]
\RequirePackage{ua-title}

\usepackage{textcomp}
\usepackage{graphicx}
\usepackage{amsmath,amsfonts,amssymb,bm}
\usepackage{mathptmx}%{times}
\usepackage{natbib}
\usepackage{url}
\usepackage{xcolor}
\usepackage{indentfirst}
\usepackage{ifthen}
\usepackage{rotating}
\usepackage{csvsimple}
\RequirePackage{lineno}

\def\contentsname{Table of Contents}
\def\bibname{References}
\def\dedicationname{Dedication}
\def\listfigurename{List of Figures}
\def\listtablename{List of Tables}
\topmargin      0in
\headheight     \baselineskip
\headsep        0.6in
\addtolength{\headsep}{-\headheight}
\footskip       0in
\textheight     \paperheight
\addtolength{\textheight}{-2.7in}
\oddsidemargin  0.5in
\evensidemargin 0.5in
\marginparwidth 0in
\marginparsep   0in
\textwidth      \paperwidth
\addtolength{\textwidth}{-2.5in}
\def\singlespaced{\baselineskip=\normalbaselineskip}
\newlength{\@topskipsave}
\@topskipsave\topskip
\def\ps@topright{%
    \let\@mkboth\@gobbletwo
    \topskip\@topskipsave
    \def\@oddhead{\normalfont\hfil\thepage}
    \let\@evenhead\@oddhead
    \def\@evenfoot{}
    \def\@oddfoot{}}
\def\ps@continued{%
    \let\@mkboth\@gobbletwo
    \topskip 0.5in
    \def\@oddhead{\raisebox{-0.5in}{\@continued}%
                  \hfil\normalfont\thepage}
    \let\@evenhead\@oddhead
    \def\@evenfoot{}
    \def\@oddfoot{}}
\def\@notopskip{\topskip\z@ \hrule height\z@}
\def\maketitle{%
  \cleardoublepage
  \begingroup
    \@SetTitlePage
    \iffinal@
      \@SetApprovalForm
      \@SetAuthorStatement
    \fi
  \endgroup
  \let\maketitle\relax}
% \def\@SetApprovalForm{%
%   \pagestyle{topright}
%   \@notopskip
%   \vspace*{\fill}
%   \begin{center}
%     \Large
%     Get the official approval page \\
%     from the Graduate College \\
%     \textsl{before} your final defense.
%   \end{center}
%   \vspace*{\fill}
%   \vspace*{0.5in}
%   \newpage}
\def\@SetApprovalForm{%
  \pagestyle{topright}
  \@notopskip
  \vspace*{1in}
  \begingroup
      \centering\large\scshape
       The University of Arizona \\
       Graduate College \\
  \endgroup
  \bigskip\bigskip
     \par
As members of the Dissertation Committee, we certify that we have read the dissertation prepared by Steven B. Malevich, titled {\@title} and recommend that it be accepted as fulfilling the dissertation requirement for the degree of Doctor of Philosophy.

%      \bigskip

     \par
%      \vspace*{3\baselineskip}
     \begin{flushleft}
       \underline{\makebox[2.5in][r]{ }} Date: February 1, 2017 \\
       Connie Woodhouse
     \end{flushleft}
     \begin{flushleft}
       \underline{\makebox[2.5in][r]{ }} Date: February 1, 2017 \\
       Joellen Russell
     \end{flushleft}
     \begin{flushleft}
       \underline{\makebox[2.5in][r]{ }} Date: February 1, 2017 \\
       Kevin Anchukaitis
     \end{flushleft}
     \begin{flushleft}
       \underline{\makebox[2.5in][r]{ }} Date: February 1, 2017 \\
       Chris Castro
     \end{flushleft}
     \bigskip

     \par
Final approval and acceptance of this dissertation is contingent upon the candidate's submission of the final copies of the dissertation to the Graduate College.
     \par
     \bigskip
I hereby certify that I have read this dissertation prepared under my direction and recommend that it be accepted as fulfilling the dissertation requirement.
     \par
%      \vspace*{3\baselineskip}
     \begin{flushleft}
       \underline{\makebox[2.5in][r]{ }} Date: February 1, 2017 \\
       Director: Connie Woodhouse
     \end{flushleft}

%   \begin{center}
%     \Large
%     Get the official approval page \\
%     from the Graduate College \\
%     \textsl{before} your final defense.
%   \end{center}
  \vspace*{\fill}
  \vspace*{0.5in}
  \newpage}
\def\@SetAuthorStatement{%
   \begingroup
     \pagestyle{topright}
     \@notopskip
     \vspace*{1in}
     \begingroup
       \centering\large\scshape
       Statement by Author \\
     \endgroup
     \bigskip\bigskip
     \par
     This \MakeLowercase{\@thesis} has been submitted in partial
     fulfillment of the requirements for an advanced degree at The
     University of Arizona and is deposited in the University
     Library to be made available to borrowers under rules
     of the Library.
     \bigskip
     \par
     Brief quotations from this \MakeLowercase{\@thesis} are
     allowable without special permission, provided that an accurate
     acknowledgment of the source is made. Requests for permission for
     extended quotation from or reproduction of this manuscript in
     whole or in part may be granted by the
%      \ifx\@empty\@copyright
       head of the major department or the Dean of the Graduate
       College when in his or her judgment the proposed use of
       the material is in the interests of scholarship.
       In all other instances, however,
       permission must be obtained from the author.
%      \else
%        copyright holder.
%      \fi
     \par
     \vspace*{3\baselineskip}
     \begin{center}
       \scshape
       Signed: \makebox[2.5in][r]{\MakeLowercase{Steven Brewster Malevich}}
     \end{center}

%      \begin{flushright}
%        \scshape
%        Signed: \underline{\makebox[2.5in][r]{\MakeLowercase{Steven Brewster Malevich}}}
%      \end{flushright}
     \vspace*{\fill}
     \ifx\@empty\@directortitle
     \else
       \begingroup
          \centering
          \large\scshape
          Approval by \@thesis\ Director
       \endgroup
       \bigskip\bigskip\par
       This \MakeLowercase{\@thesis} has been approved
       on the date shown below:
       \vspace*{3\baselineskip}\par\noindent
       \begin{minipage}[t]{0.45\textwidth}
         \begin{center}
           \underline{\makebox[\textwidth][r]{}} \\
           \@director \\
           \@directortitle
         \end{center}
       \end{minipage}%
       \hfill%
       \begin{minipage}[t]{0.45\textwidth}
         \begin{center}
           \underline{\makebox[\textwidth][r]{}} \\
           Date
         \end{center}
       \end{minipage}
     \fi
     \vspace*{0.5in}
     \newpage
   \endgroup}
\long\def\Addto@envbody#1{\@envbody\@xp{\the\@envbody#1}}
\def\Collect@body#1{%
    \@envbody{}%
    \def\process@envbody{%
        \@xp#1\@xp{\the\@envbody}%
    }%
    \@xp\let\csname\@currenvir\endcsname\Collect@@body
    \csname\@currenvir\endcsname
}
\long\def\Collect@@body#1\end#2{%
    \def\@tempa{#2}%
    \ifx\@tempa\@currenvir
        \Addto@envbody{#1}%
        \@xp\edef\csname\@currenvir\endcsname{%
            \@nx\process@envbody\@nx\end{\@tempa}%
            }%
    \else
        \Addto@envbody{#1\end{#2}}%
    \fi
    \csname\@currenvir\endcsname
}
\renewenvironment{abstract}{%
  \Collect@body\@SetAbstract}{}
\long\def\@SetAbstract#1{%
  \chapter*{Abstract}
  #1
  \clearpage
  \iffinal@
%   \begingroup
%     \clearpage
%     \newcounter{s@avepageno}
%     \setcounter{s@avepageno}{\value{page}}
%     \setcounter{page}{1}
%     \thispagestyle{empty}
%     \@notopskip
% %     \begingroup
% %       \centering
% %       \large\textsc
% %       \@title \\
% %       \bigskip
% %       \normalfont\normalsize
% %       \@author, \@degreeabbrev \\
% %       The University of Arizona, \@date \\
% %     \endgroup
% %     \bigskip
% %     \noindent Director: \@director \par
% %     \bigskip\bigskip
% %     #1
%   \endgroup
%   \clearpage
%   \setcounter{page}{\value{s@avepageno}}
  \fi}
\def\part{%
  \if@openright		% for two-sided printing;final must be one-sided
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{topright}%
  \if@twocolumn		% for two-column printing;final must be one-column
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@partstar}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax	
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\partname~\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering				
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \large\bfseries \partname~\thepart \hspace{0.74em}
     \fi
     \large \bfseries #2\par}%
    \@endpart}
\def\@partstar#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \large \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
                \null
                \thispagestyle{empty}%
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\renewcommand*\l@part[2]{%
  \addpenalty{-\@highpenalty}%
  \vskip 1.0em \@plus\p@
  \begingroup
    \advance\hangindent 1.5em
    \@dottedtocline{0}{0pt}{0pt}{\large\bfseries #1}{ #2}
  \endgroup
  \penalty\@highpenalty}
\def\chapter{%
  \clearpage
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@chapterstar}
\def\@chapter[#1]#2{%
  \pagestyle{topright}
  \refstepcounter{chapter}%
  \typeout{\@chapapp \space \thechapter}
  \addcontentsline{toc}{chapter}%
    {\protect\chapterline{\thechapter}#1}
  \addtocontents{lof}{\protect\addvspace{\medskipamount}}
  \addtocontents{lot}{\protect\addvspace{\medskipamount}}
  \begingroup
    \@notopskip
    \centering
    \vspace*{0.25in}
    \textsc{\thechapter}.\hspace{1em}\textsc{#2} \par 
  \endgroup
  \vspace*{2\normalbaselineskip}
  \@afterheading
  \doublespaced}
\def\@chapterstar#1{%
  \typeout{#1}
  \edef\1{#1}
  \ifx \dedicationname\1
       \doublespaced
  \else
  \ifx \contentsname\1
       \@specialhead\1
       \singlespaced
       \let\tableofcontents\relax
  \else
  \ifx \listfigurename\1
       \@specialhead\1
       \@tocentry\1
       \singlespaced
  \else
  \ifx \listtablename\1
       \@specialhead\1
       \@tocentry\1
       \singlespaced
  \else
  \pagestyle{topright}
  \ifx \tableofcontents\relax
       \@tocentry\1
       \ifx \bibname\1 \singlespaced \else \doublespaced \fi
  \fi\fi\fi\fi\fi
  \begingroup
    \@notopskip
    \centering
	\textsc{#1} \par
  \endgroup
  \vspace*{2\normalbaselineskip}
  \@afterheading}
\def\@tocentry#1{%
  \addcontentsline{toc}{chapter}{#1}
  \addtocontents{lof}{\protect\addvspace{\medskipamount}}
  \addtocontents{lof}{\protect\addvspace{\medskipamount}}}
\def\@specialhead#1{%
  \gdef\@continued{\normalsize\scshape#1---\slshape Continued}
  \pagestyle{continued}
  \thispagestyle{topright}}
\def\section{\@startsection{section}{1}%
  \z@{-1\baselineskip\@plus-.75\baselineskip}{.5\baselineskip}
  {\normalfont}}
\def\subsection{\@startsection{subsection}{2}%
  \z@{-.75\baselineskip\@plus-.5\baselineskip}{.5\baselineskip}
  {\normalfont}}
\def\subsubsection{\@startsection{subsubsection}{3}%
   \z@{.5\baselineskip\@plus.5\baselineskip}{-5\p@}%
   {\normalfont\itshape}}
\renewcommand{\@seccntformat}[1]{
   {\csname the#1\endcsname}.\hspace{1em}}
\def\th@plain{%
  \let\thm@indent\noindent
  \thm@headfont{\bfseries}% heading font bold
  \thm@notefont{\mdseries\upshape}
  \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                    \@minus.2\baselineskip
  \thm@postskip\thm@preskip
  \itshape
}
\def\th@remark{%
  \let\thm@indent\noindent
  \thm@headfont{\bfseries}% heading font bold
  \thm@notefont{\mdseries\upshape}%
  \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                    \@minus.2\baselineskip
  \thm@postskip\thm@preskip
  \upshape
}
\def\th@definition{%
  \let\thm@indent\noindent
  \thm@headfont{\bfseries}% heading font bold
  \thm@notefont{\mdseries\upshape}%
  \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                    \@minus.2\baselineskip
  \thm@postskip\thm@preskip
  \upshape
}
\renewenvironment{proof}[1][\proofname]{\par \normalfont
  \topsep6\p@\@plus6\p@ \trivlist \itemindent\z@
  \item[\hskip\labelsep\bfseries
    #1\@addpunct{.}]\ignorespaces
}{%
  \qed\endtrivlist
}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\textsc{#1}. #2}%
  \ifdim \wd\@tempboxa >\hsize
    \textsc{#1}. #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\newlength{\@auxlength}
\AtBeginDocument{%
  \settowidth{\@auxlength}{\textbf{999}}
  \renewcommand{\@pnumwidth}{\@auxlength}}
\def\numberline#1{\hb@xt@\@tempdima{#1.\hfil}}
\def\chapterline#1{%
  \advance\hangindent\@tempdima
  \hbox{#1.\space\space\hfil}}
\renewcommand*\l@chapter[2]{%
  \addpenalty{-\@highpenalty}%
  \vskip 1.0em \@plus\p@
  \begingroup
    \advance\hangindent 1.5em
    \@dottedtocline{0}{0pt}{0pt}{\scshape #1}{ #2}
  \endgroup
  \penalty\@highpenalty}
\renewcommand*\l@figure[2]{%
  \@dottedtocline{1}{0pt}{30pt}{\textsc{Figure} #1}{#2}}
\renewcommand*\l@table[2]{%
  \@dottedtocline{1}{0pt}{30pt}{\textsc{Table} #1}{#2}}
\renewcommand*\l@section{\@dottedtocline{1}{4em}{2.3em}}
% replacing 4em with 2.3em above does a better job of alignment
\renewcommand*\l@subsection{\@dottedtocline{1}{8em}{3.2em}}

% replacing 8em with 5.0em above does a better job of alignment
%% tables, to make correct space around the horizontal lines at the
%% top, underneath the column headers, and at the bottom of the table.
\def\topline{\hline\hline\vrule height 10pt depth4pt width0pt\relax}
\def\midline{\hline\vrule height 10pt width0pt\relax}
\def\botline{\hline}

\endinput
%%
%% End of file `ua-thesis.cls'.




