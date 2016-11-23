% homework.cls
% Homework formatting for problem sets in Math and Computer Science
% November 22nd 2016 Kayman Brusse - kaymanbrusse@gmail.com

%%% SETUP %%%

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2016/11/22 version 1.00 Math/CS Homework Solutions]

% Handle options or pass to other classes
\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
    \PassOptionsToClass{\CurrentOption}{article}}}
\ProcessOptions\relax

% TODO: Support for multiple authors

% Preliminary Definitions
\LoadClass{article}

% Required Math / CS Packages
\RequirePackage{amsmath, amssymb, enumitem}

% Basic Page Sizing
\RequirePackage[a4paper, total={6in, 8in}]{geometry}

%%% Commands %%%

% Title
\newcommand*{\course}[1]{\gdef\@course{#1}}
\newcommand*{\hwnum}[1]{\gdef\@hwnum{#1}}
\newcommand*{\hwdesc}[1]{\gdef\@hwdesc{#1}}
\renewcommand{\author}[2]{\gdef\@author{#1}\gdef\@authid{#2}}

\renewcommand{\maketitle}{%
    \begin{center}
        {\Large \MakeUppercase{\textbf{\@course}}} \par
        {\@hwdesc \enspace \@hwnum} \par
        \@date
    \end{center}
    \smallskip
    {\textsl{\@author} \\ \@authid}
    \bigskip
}

% Question
\newcounter{questioncount}

\newcommand{\question}{%
    \stepcounter{questioncount}
    
    \bigskip
    {\noindent \textbf{Question %
        \arabic{questioncount}.}} 
    \smallskip
    \noindent
}

% Part
\newcounter{partcount}[questioncount]

\newcommand{\qpart}{%
    \stepcounter{partcount}

    \bigskip
    {\noindent \textbf{%
        \quad \alph{partcount}) }
    }
}

% Proof
\newcommand{\proof}{%
    \bigskip
    \noindent \textit{Proof.}
    \par
    \smallskip
    \noindent
}

\newcommand{\qed}{%
    \hfill
    $\blacksquare$
}

% Solution
\newcommand{\solution}{%
    \bigskip
    \noindent \textsl{Solution:}
    \par
    \bigskip
    \noindent
}
