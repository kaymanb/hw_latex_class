% homework.cls
% Homework formatting for problem sets in Math and Computer Science
% November 22nd 2016 Kayman Brusse - kaymanbrusse@gmail.com

% TODO: Support for multiple authors
% TODO: Custom numbers on questions and parts

%%% SETUP %%%

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2016/11/22 version 1.00 Math/CS Homework Solutions]

% Handle options or pass to other classes
\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
    \PassOptionsToClass{\CurrentOption}{article}}}
\ProcessOptions\relax

% Preliminary Definitions
\LoadClass{article}

% Required Math / CS Packages
\RequirePackage{amsmath, amssymb, amsthm, enumitem}
\RequirePackage[a4paper, total={6in, 8in}]{geometry}

%%% Commands %%%

% Commands for common sets.
\newcommand{\C}{\mathbb{C}} % Complex Numbers
\newcommand{\R}{\mathbb{R}} % Reals
\newcommand{\Q}{\mathbb{Q}} % Rationals
\newcommand{\Z}{\mathbb{Z}} % Integers
\newcommand{\N}{\mathbb{N}} % Natural Numbers

% Title
\newcommand*{\course}[1]{\gdef\@course{#1}}
\newcommand*{\hwnum}[1]{\gdef\@hwnum{#1}}
\newcommand*{\hwdesc}[1]{\gdef\@hwdesc{#1}}
\renewcommand{\author}[2]{\gdef\@author{#1}\gdef\@authid{#2}}

\renewcommand{\maketitle}{%
    {\Large \MakeUppercase{\textbf{\@course}}} \par
    \@hwdesc \enspace \@hwnum \par
    \@date \par
    \bigskip
    \@author \enspace : \textsl{\@authid}
    \bigskip
}

% Question
\newcounter{questioncount}

\newcommand{\question}{%
    \stepcounter{questioncount}
    \vspace{36pt}
    {\noindent \textbf{Question %
        \arabic{questioncount}.}} 
    \smallskip
    \noindent
}

% Part
\newcounter{partcount}[questioncount]

\renewcommand{\part}{%
    \stepcounter{partcount}
    
    \bigskip
    {\noindent \textbf{%
        \quad (\alph{partcount}) }
    }
}

% Proof
\renewcommand{\proof}{%
    \bigskip
    \noindent \textit{Proof.}
    \par
    \smallskip
    \noindent
}

% QED
\renewcommand{\qed}{%
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
