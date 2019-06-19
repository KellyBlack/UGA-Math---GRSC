%% ----------------------------------- 
%% ---------- William E. -------------
%% ---------- wolsen@uga.edu ---------
%% -----------------------------------

%% --------------------------------------------------------------
%%
%% A document class for taking notes in lectures. Based on (and 
%% mostly copied from) the article document class, with some 
%% packages added in because they were what I commonly use. 
%%
%% OPTIONS: 
%%  - `nolastupdated` : omit the last updated date from titlepage
%%  - `noheaders` : no headers on pages of lecture notes
%%  - any option from the article class also works
%%
%% Invoke an option in the document class command as so:
%%
%%            `\documentclass[noheaders]{notes}`
%%
%% --------------------------------------------------------------

\def\fileversion{1.0}
\def\filedate{2016/08/10}

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{notes}[\filedate\space Version \fileversion\space by William E. Olsen]

\RequirePackage{ifthen}

%% Creates the `nolastupdated` option
\newif\iflastupdated
\lastupdatedtrue
\DeclareOption{lastupdated}{\lastupdatedtrue}
\DeclareOption{nolastupdated}{\lastupdatedfalse}

%% Creates the `noheaders` option
\newif\ifheaders
\headerstrue
\DeclareOption{noheaders}{\headersfalse}
\DeclareOption{headers}{\headerstrue}

%% Code from the article document class that this is based on.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[titlepage]{article}



%% Modifies the \maketitle command to include class info
%% --------------------------------------------------------------
\makeatletter
\newcommand\@speaker\relax
\newcommand{\speaker}[1]{\def\@speaker{#1}}
\newcommand\@place\relax
\newcommand{\place}[1]{\def\@place{#1}}
\newcommand\@contact\relax
\newcommand{\contact}[1]{\def\@contact{#1}}
\newcommand\@online{}
\newcommand{\online}[1]{\def\@online{#1}}
\renewcommand{\maketitle}{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
		\@speaker \\[.75em]
        \@author \\
        \@contact \\[.75em]
        \@place \\
        \@date
      \end{tabular}\par}%
  \end{center}\par
  \@thanks
  \begin{center}
	\iflastupdated
	  \vfill
	  Last updated \today. \\
	  \ifthenelse{\equal{\@online}{}}%
	    {}{\@online}\\[2em]
	
  \end{center}
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@speaker\@empty
  \global\let\@place\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\speaker\relax
  \global\let\place\relax
  \global\let\and\relax
}
\makeatother
%% --------------------------------------------------------------



%% --------------------------------------------------------------
%% ------------------------- PACKAGES ---------------------------
%% --------------------------------------------------------------		
		
%%% FANCY HEADERS
\ifheaders
\RequirePackage{titleps}
\newpagestyle{notes}{%
  \headrule
  \setfoot{}{\thepage}{}
  \sethead{%
  	\thelecture: \ifthenelse{\equal{\subsectiontitle}{}}%
		{\sectiontitle}{\subsectiontitle}}%
	{}%
	{\thelecturedate}
}
\pagestyle{notes}
\else
\fi

\usepackage{hyperref}
\hypersetup{
    colorlinks = true,
    linkcolor = magenta
}

%% --------------------------------------------------------------
%% ---------------------- HACKS AND FIXES -----------------------
%% --------------------------------------------------------------


%%% TABLE OF CONTENTS FIXES
\RequirePackage{tocloft}
%%% ADD DOTS TO TABLE OF CONTENTS
\renewcommand\cftsecleader{\cftdotfill{\cftdotsep}}
%%% UN-BOLD THE TABLE OF CONTENTS
\renewcommand\cftsecfont{\normalfont}
\renewcommand\cftsecpagefont{\normalfont}


%%% Number the equations by section (e.g. (4.1)) instead of globally
\RequirePackage{amsmath}
\numberwithin{equation}{section}

%%%% HOW DO I FIX THE SPACING BETWEEN NUMBERS AND SECTION TITLES?

\RequirePackage[labelfont=bf]{caption}
\RequirePackage{microtype}

%%% FOR SEPARATING EACH DAY OF LECTURE NOTES
\newcommand{\listlecturename}{\Large Contents by Lecture}
\newlistof{lectures}{lec}{\listlecturename}
\reversemarginpar
\def\thelecture{}
\def\thelecturedate{}
\newcommand{\lecture}[2]{\def\thelecture{Lecture #1}\def\thelecturedate{#2} \addcontentsline{lec}{section}{Lecture #1 on #2}}



