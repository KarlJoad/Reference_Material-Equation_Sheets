\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{referencesheet}[2019/05/13 LaTeX Class for Reference Sheets]

\LoadClass{article}

\RequirePackage[margin=.5in]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm} % Gives us plain, definition, and remark to use in \theoremstyle{style}
\RequirePackage{graphicx}

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption{10pt}{\OptionNotUsed}
\DeclareOption{letterpaper}{\OptionNotUsed}

\RequirePackage{hyperref} % Generate hyperlinks to referenced items
\RequirePackage[noabbrev,nameinlink]{cleveref} % Fancy cross-references in the document everywhere
\RequirePackage{nameref} % Can make references by name to places
\RequirePackage{subcaption} % Allows for multiple figures in one Figure environment
\RequirePackage{siunitx} % Gives us ways to typeset units for stuff
\RequirePackage{enumitem} % Provides [noitemsep, nolistsep] for more compact lists
\RequirePackage{chngcntr} % Allows us to tamper with the counter a little more
\RequirePackage{empheq} % Allow boxing of equations in special math environments
\RequirePackage{tcolorbox} % Allows us to create boxes of various types for examples
\RequirePackage{tikz} % Allows us to create TikZ and PGF Pictures

%\usepackage{ctable} % Greater control over tables and how they look

%\graphicspath{{./Drawings/Math_374}} % Uncomment this to use pictures in this document
\counterwithin{equation}{section} % Uncomment to number eqns with sec nums too

\theoremstyle{plain}
\newtheorem{theorem}{Theorem}
\counterwithin{theorem}{section}

\theoremstyle{definition}
\newtheorem{definition}{Defn}
\newtheorem{corollary}{Corollary}[section]

\theoremstyle{remark}
\newtheorem{remark}{Remark}[definition]
\newtheorem*{remark*}{Remark}
%\counterwithin{definition}{subsection} % Uncomment to have definitions use section.subsection numbering

\newlist{propertylist}{enumerate}{1} % Name, template, max-depth of new list
\setlist[propertylist, 1]{label=\textbf{(\roman*)}, noitemsep, nolistsep}
\newtcolorbox[auto counter,
number within=section,
number format=\arabic,
crefname={example}{examples}, % Define reference format for cref (No Capitals)
Crefname={Example}{Examples}, % Reference format for cleveref (With Capitals)
]{example}[2][]{
	width=\textwidth,
	title={Example \thetcbcounter: #2. #1},
	fonttitle=\bfseries,
	label={ex:#2},
	nameref=#2,
	colbacktitle=white!100!black,
	coltitle=black!100!white,
	colback=white!100!black,
	upperbox=visible,
	lowerbox=visible,
	sharp corners=all
}

\renewcommand\qedsymbol{$\blacksquare$} % Change proofs to have black square at end

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax