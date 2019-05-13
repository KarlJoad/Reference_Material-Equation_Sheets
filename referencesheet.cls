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