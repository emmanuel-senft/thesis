%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 %
%         uopthesis.cls   %
%                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% --- v2.28 May 2018 (v0.0 December 2003)
%
% --- Created by:
%     Martin Coath mcoath@bcs.org
%
\NeedsTeXFormat{LaTeX2e}
%
% --- Identification
%
\ProvidesClass{uopthesis}[2018/03/03 v2.28 uopthesis thesis class]
%
% --- It uses the book class
%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\ifx\pdfoutput\undefined
   \LoadClass[dvips, a4paper]{book}
\else
   \LoadClass[a4paper]{book}
\fi
%
% --- 	These are optional latex setting for tolerance of 
%		rule breaking.  If you don't understand these then 
%		don't change them.
%
\hbadness=10000
\hfuzz=50pt
%
% --- Packages used by the class
%
\usepackage[medium,compact]{titlesec}
\usepackage[hang,small,it]{caption}
\setlength{\captionmargin}{20pt}
\usepackage[dvipsnames]{xcolor}
\usepackage{fancyhdr}
\usepackage{nomencl}
\fancyhead{}
\fancyhead[L]{\slshape \small \rightmark}
\setlength\headheight{15pt}

% --- chapter stuff
%
\titleformat*
{\chapter}
{\LARGE\sffamily\bfseries}

\titlespacing*
{\chapter}
{0pt}{0pt}{12pt}
%
% --- section stuff
%     section numbers are in the margin by default but this is  
%     easy to switch off see below
%     first define lengths for the hanging numbering 
%
\newlength{\outdent}
\newlength{\secsep}

\titleformat
{\section}
{
	\settowidth{\outdent}{\large\sffamily\bfseries\thesection n}
	\settowidth{\secsep} {\large\sffamily\bfseries n}
	\addtolength{\leftskip}{-\outdent}
	\large\sffamily\bfseries
}
{\thesection}
{\secsep}
{}
%
\titlespacing*
{\section}
{0pt}{4pt}{0pt}

% --- subsection stuff
\titleformat*
{\subsection}
{\sffamily\bfseries}

\titlespacing*
{\subsection}
{0pt}{2pt}{0pt}

% --- subsubsection stuff
\titlespacing*
{\subsubsection}
{0pt}{2pt}{0pt}
