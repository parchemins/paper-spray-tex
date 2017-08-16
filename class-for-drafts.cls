\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{class-for-drafts}[2017/07/18 Class to standardize draft papers.]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

\LoadClass[twocolumn, 9pt]{article}
\columnsep 2pc

\RequirePackage{crimson}
\RequirePackage[a4paper,total={6.7in, 9in}]{geometry}
\RequirePackage[numbers]{natbib}
\bibliographystyle{plain}
\RequirePackage{xcolor}
\definecolor{@ink}{RGB}{6, 47, 79}
\definecolor{@posy}{RGB}{129, 55, 114}
\definecolor{@embers}{RGB}{184, 38, 1}
\RequirePackage{hyperref}
\hypersetup{
  colorlinks,
  citecolor=@posy!75,
  filecolor=black,
  linkcolor=@embers,
  urlcolor=@embers
}
\RequirePackage{sectsty}
\sectionfont{\large\MakeUppercase}
\RequirePackage{fancyhdr}
\def\@conference{}
\newcommand\proceedings[1]{\def\@proceedings{#1}}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead{}
\fancyhead[L]{\emph{draft}}
\fancyhead[R]{\emph{\@proceedings}}
\fancyfoot{}

\fancypagestyle{firstpagestyle} {
  \fancyhead{}
  \fancyfoot{}
  \fancyfoot[R]{\emph{draft}}
  \fancyfoot[L]{\emph{\@proceedings}}
}


\RequirePackage[para*]{manyfoot}
\SetFootnoteHook{\kern -3pt \hrule width \columnwidth height 0.5pt \kern 2pt}
\DeclareNewFootnote[para]{A}[roman]
\newcommand\@copyrightfootnote[1]{%
  \let\thefootnoteA\relax\footnotetextA{#1}%
  \let\thefootnoteA\svthefootnote%
}
\renewcommand\copyright[1]{\def\@copyright{#1}}

\newcommand\numberOfAuthors[1]{\def\@numberOfAuthors{#1}}
\def\and{\end{tabular} & \begin{tabular}[t]{c}\large}
\def\aff{\\}

\def\maketitle{
  \twocolumn[
  \thispagestyle{firstpagestyle}
  \begin{center}
    {\LARGE\bfseries\@title\par}
    {\vspace{0.5cm}}
    {\normalsize%
      \begin{tabular}[t]{*{\@numberOfAuthors}{c}}%
        \begin{tabular}[t]{c}%
          \large\@author%
        \end{tabular}
      \end{tabular}\par}
    \vspace{0.5cm}
  \end{center}
  ]
                         
  \ifcsname @copyright\endcsname%
    \@copyrightfootnote{\@copyright}
  \fi
}
                           
\newcommand{\keywords}[1]{\vspace{0.5cm} \noindent \textit{\textbf{Keywords:} #1}}