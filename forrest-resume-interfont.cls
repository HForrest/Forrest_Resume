% Intro Options
\ProvidesClass{forrest-resume-interfont}[2020/10/15]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{000000} 
\definecolor{primary}{HTML}{000000} 
\definecolor{headings}{HTML}{000000}
\definecolor{subheadings}{HTML}{333333}
\definecolor{black}{HTML}{000000}
\definecolor{sep}{HTML}{888888}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/inter/,BoldItalicFont=Inter-BoldItalic,BoldFont=Inter-Bold,ItalicFont=Inter-Italic]{Inter-V}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/inter/]{Inter-Black}

% Date command
\usepackage[absolute]{textpos}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(160,5)
\color{date}\fontspec[Path = fonts/inter/]{Inter-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated \today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\color{primary}
\centering{
\href{https://www.forresthsu.com}{{}
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/inter/]{Inter-ExtraBold}\selectfont #1 
\fontspec[Path = fonts/inter/]{Inter-ExtraLight}\selectfont #2
}} \\[5pt]
\centering{
	\color{subheadings}
	\fontspec[Path = fonts/inter/]{Inter-Light}\fontsize{11pt}{14pt}\selectfont #3
}
\noindent\makebox[\linewidth]{\color{black}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}


% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\linesep}{\makebox[\linewidth]{\color{sep}\rule{7.5in}{0.4pt}}}
\newcommand{\spacesep}{\vspace{4pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/inter/]{Inter-Light}\fontsize{18pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subsection command
\titleformat{\subsection}{
\color{subheadings}\raggedright\fontspec[Path = fonts/inter/]{Inter-Bold}\fontsize{11pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/inter/]{Inter-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \hspace{-5pt}\normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/inter/]{Inter-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Subheading command
\newcommand{\subheading}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/inter/]{Inter-Medium}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

%Images
\newcommand{\link}[0]{\protect\includegraphics[height=9pt]{Link.png}}
\newcommand{\icon}[1]{\protect\includegraphics[height=16pt]{#1}}

%Italics
\newcommand{\italic}[1]{
    \vspace{3pt}
    \color{subheadings} \raggedright\fontspec[Path = fonts/inter/]{Inter-LightItalic}\fontsize{10pt}{10pt}\selectfont {#1} 
    \normalfont
}

%Position
\newcommand{\position}[1]{
\begin{textblock}{50}(5,5)
\noindent
\color{subheadings}\fontspec[Path = fonts/inter/]{Inter-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase
{#1}

\end{textblock}

\normalfont
}

% Volunteer indent
\newcommand{\vdescription}[1]{
    \color{subheadings} \raggedright\fontspec[Path = fonts/inter/]{Inter-LightItalic}\fontsize{10pt}{10pt}\selectfont {#1} \normalfont
}
