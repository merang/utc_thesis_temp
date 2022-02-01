%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 																	  %
% |UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT| %
% |UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT| %
% |UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT| %
% |UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT| %
% |UT.UT.UT.UT.UT.UT."".UT.UT.UT.UT.UT.UT.UT.UT."".UT.UT.UT.UT.UT.UT| %
% |UT.UT.UT.UT."'  	       ".UT.UT.UT.UT."		      '".UT.UT.UT.UT| %
% |UT.UT.UT." 	 		    |UT.UT.UT.UT|			      ".UT.UT.UT| %
% |UT.UT.UT|				|UT.UT.UT.UT|				   |UT.UT.UT| %
% 							|UT.UT.UT.UT|				      		  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%							|UT.UT.UT.UT|							  %
%						  ,".UT.UT.UT.UT.",							  %
%						,.UT.UT.UT.UT.UT.UT.,						  %
%					,,.UT.UT.UT.UT.UT.UT.UT.UT.,,					  %
%			 |UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT|			  %
%			 |UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT|			  %
%			 |UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT|			  %
%			 |UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT|			  %
%---------------------------------------------------------------------%
%---------------------------------------------------------------------%
%	 T H E S I S   &   D I S S E R T A T I O N    T E M P L A T E  	  %
%---------------------------------------------------------------------%
%---------------------------------------------------------------------%
% This template is distributed with ABSOLUTELY NO WARRANTY. It serves 
% as a guideline and constitutes a basic structure for a
% thesis/dissertation. The user assumes full responsibility for 
% formatting and typesetting their document and for verifying that all
% the thesis requirements set by the University of Tennessee are met. 
% Please refer to the most recent UT thesis guide 
% (http://gradschool.utk.edu/thesesdissertations/formatting/) or
% contact the thesis consultant 
% (http://gradschool.utk.edu/thesesdissertations/).
% Please report any bugs to the thesis consultant.
\NeedsTeXFormat{LaTeX2e}%
\def\filename{utthesis.cls}%
\def\fileversion{ver 2.1.0}%
\def\filedate{April 19, 2017}%
\def\contributors{Darrin Weber}%
\typeout{\filename}%
\typeout{\fileversion}%
\typeout{Updated by Darrin Weber}%
\typeout{\filedate}%
\typeout{Many parts and settings of this class are based on the template provided by David L. Page and updated by Tony Saad.}
%------------------------------------------------------------------------%
\ProvidesClass{utthesis}
% some internal variables
\def\thesisID{1}%
\def\dissertationID{2}%
\def\theDocumentType#1{\gdef\@theDocumentType{#1}}%
\def\documentID#1{\gdef\@documentID{#1}}% documentID is either 1 (for thesis) or 2 (for dissertation)
% declare package options
\newpage
\DeclareOption{thesis}{%
    \def\@theDocumentType{thesis}%
    \def\@documentID{\thesisID}}%
\DeclareOption{dissertation}{%
    \def\@theDocumentType{dissertation}%
    \def\@documentID{\dissertationID}}%
\DeclareOption{linespacing}{\@lnspacing}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{color}}%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}%
\ExecuteOptions{dissertation,letterpaper,12pt}% execute default options
\ProcessOptions%
\LoadClass{report} % single-sided
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	Main Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\copyrightYear#1{\gdef\@copyrightYear{#1}}%
\def\graduationMonth#1{\gdef\@graduationMonth{#1}}%
\def\degree#1{\gdef\@degree{#1}}%
\def\university#1{\gdef\@university{#1}}%
% initialize macros
\def\@title{}
\def\@author{}
\def\@graduationMonth{December}
\def\@copyrightYear{2020}
\def\@degree{Doctor of Philosophy}	% degree type
\def\@university{The University  of Tennessee, Knoxville}	% school
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	LOAD PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath,amsthm,amssymb}     % AMS math, AMS theorem, AMS fonts
\RequirePackage{setspace}                   % line spacing
\RequirePackage[vcentering,dvips,includefoot]{geometry}	% help with margins
\RequirePackage[pdftex,plainpages=false,pdfpagelabels=true,breaklinks=true,pagebackref]{hyperref} % for pdf bookmarks
\RequirePackage{color}

%-------------------------------------------------------------------------%
% define theorem, corollary, lemma, proposition, and definition environments
\theoremstyle{plain}
\newtheorem*{theorem*}{Theorem}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{definition}[theorem]{Definition}
%-------------------------------------------------------------------------%
% allow empty pages before chapters (i.e. no page numbers)
\let\origdoublepage\cleardoublepage
\newcommand{\clearemptydoublepage}{%
  \clearpage
  {\pagestyle{empty}\origdoublepage}%
}
\let\cleardoublepage\clearemptydoublepage
%-------------------------------------------------------------------------%
\hypersetup{%
	bookmarksnumbered = true,
	pdftitle={\@title},
	pdfauthor={\@author},
	pdfpagelayout=SinglePage,
    bookmarksopen=False,
	%pdfview=FitV,
	pdfborder=0 0 0, 		% make all links invisible, so the pdf looks good when printed	
    pdffitwindow=true,      % window fit to page when opened
    %pdfstartview={FitV},   % fits the width of the page to the window
    pdfcreator={\@author},  % creator of the document
    pdfnewwindow=true,      % links in new window
    colorlinks=false,        % false: boxed links; true: colored links
    linkcolor=black,         % color of internal links
    citecolor=magenta,      % color of links to bibliography
    filecolor=magenta,      % color of file links
    urlcolor=cyan           % color of external links
}
\urlstyle{same}
%-------------------------------------------------------------------------%
\geometry{
    letterpaper,
    left = 1.0in,
    right = 1.0in,
    top = 1.0in,
    bottom = 1.0in
}
%\hyphenation{example, pa-ra-me-ter} % Over-ride Latex hyphenation, define hyphenated words
\hyphenpenalty=5000	% reduce hyphenation as much as possible
\tolerance=1000     % goes with the previous command
% Widow/orphan protection
\clubpenalty=10000    % Minimize orphans orphans(eliminate 10000)
\widowpenalty=10000   % Minimize widows
\brokenpenalty=10000  % Do not allow hyphen across pages
% Use cool footnotes
\renewcommand{\thefootnote}{\arabic{footnote}}
\raggedbottom
\pagestyle{plain}
\parindent=.5in
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	Define Title Page Format
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeTitlePage} {
    \begin{spacing}{2}
	\vspace*{0.43in}
	\begin{center}
	\normalsize
		\@title
        \vfill
		By \\
		\@author \\%
			
	    \vfill
	    
        \ifnum\@documentID=\thesisID {
        
            \begin{singlespace}
                A Thesis Submitted to the Faculty of the \\
                \@university \\
                in Partial Fulfillment of the Requirements of the \\
                 \@degree
            \end{singlespace}
            
        } \else {
          \begin{singlespace}
            A Dissertation Submitted to the Faculty of the University\\
            of Tennessee at Chattanooga in Partial Fulfillment of\\
            the Requirements of the Degree of Doctor of\\
            Philosophy in Computer Science
         \end{singlespace}

            % \@degree
        } \fi
        \vspace{\baselineskip}
        \begin{singlespace}
    		The \@university \\
    		Chattanooga, Tennessee \\
		\end{singlespace}

		\@graduationMonth~\@copyrightYear
		
		\vfill
	
	\end{center}
    \end{spacing}
    \cleardoublepage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeCommitteePage} {
	\thispagestyle{empty}
    \begin{spacing}{2}
	\vspace*{0.42in}
	\begin{center}
	\normalsize
		\@title
        \vfill
		By \\
		\@author \\%
			
	    \vfill
        \begin{table}[h]
            \begin{tabular}{ll}
                \parbox{.5\textwidth}{Dr. Hong Qin} &  \parbox{.5\textwidth}{ 2nd  name ...}\\
               Associate Professor of Computer Science & Professor of Computer Science \\
                (Chair) & (Committee Member) \\
                \\
                \\
                \\
                \parbox{.5\textwidth}{ 3rd name ... } & \parbox{.5\textwidth}{ 4th name ... }\\
                Professor of Computer Science &  Associate Professor of Statistics\\
                (Committee Member) & (Committee Member)
               \\
            \end{tabular}
        \end{table}
	
	\end{center}
    \end{spacing}
    \cleardoublepage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% \renewcommand*\contentsname{Table of Contents} %Changes the heading of the Table of Contents from the default "Contents" to "Table of Contents"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	Define Appendix Page Format
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeAppendixPage}[1]{
    %\newpage
    \renewcommand{\thesection}{\Alph{section}}
    \ifnum#1=1
        \addtocontents{toc}{%
         \protect\vspace{\baselineskip}\protect\noindent APPENDIX\protect\par
         }
    	\vspace*{2.0in}     Removed "Appendix cover page" - Derek 10/7/2020
    	\begin{center}
    		\Huge \bf{Appendix} 
    	\end{center}
	\else
	    \addtocontents{toc}{%
         \protect\vspace{\baselineskip}\protect\noindent APPENDICES\protect\par
	    }
	    %\vspace*{2.0in}
	    %\begin{center}
	     	%\Huge \bf{Appendices}
	    %\end{center}
	\fi

    %\newpage
    \immaddtocontents{\protect\setlength{\cftchapindent}{3em}}
    \titleformat{\chapter}[display]         % Derek: Changes how the appendix titles work!
      {\vspace{3.1in}\centering\normalfont\normalsize}
      {\MakeUppercase{\textsc{\chaptertitlename}}\ \thechapter}
      {1em}
      {\MakeUppercase} [\vfill\clearpage]
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	Define Bibliography Page Format
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeBibliographyPage}{
    %\newpage % create a new page for the bibliography title
    \addToTOC{REFERENCES} % add bibliography to table of contents
    \vspace*{.48in} % move down the page 2.0 inches

    \begin{center}
        \normalsize
        \MakeUppercase{references}
    \end{center} % make the bibliography title
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% addToTOC: macro that adds an entry to the table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\addToTOC}[1] {
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{chapter}{#1}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	Define bibliography command that will be called in dissertation file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\utbiblio}[3] {
        \begingroup
        \def\chapter*#1{}
        \bibliographystyle{#2}
        \bibliography{#3}
        \endgroup
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% addToPDFBookmarks: macro that adds a bookmark to the PDF file
%                   without including it in the table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\addToPDFBookmarks}[3] {
	\cleardoublepage
	\phantomsection
	\pdfbookmark[#1]{#2}{#3}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% makeCopyrightPage: this macro will make the copyright page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\makeCopyrightPage} {
    \vspace*{3.56in}
    \begin{center}
        Copyright \copyright~\@copyrightYear\\
        \@author \\
        All Rights Reserved
    \end{center}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% makeListofFigures: this macro will add the list of figures to 
%                    the table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\makeListofFigures} {
    \renewcommand{\listfigurename}{LIST OF FIGURES}
    \addToTOC{\listfigurename}
    \listoffigures
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% makeListoftables: this macro will add the list of figures to 
%                    the table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand {\makeListofTables} {
    \renewcommand{\listtablename}{LIST OF TABLES}
    \addToTOC{\listtablename}
    \listoftables
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\newcommand{\makeAbbrPage} {
    \addToTOC{LIST OF ABBREVIATIONS} % add abbreviations to TOC
    \thispagestyle{plain} %Plain for page number at bottom.
    \begin{spacing}{1}
        \vspace*{.58in}
    	\begin{center}
        	\normalsize
            \MakeUppercase{LIST OF ABBREVIATIONS}
            \vspace{\baselineskip}
    	\end{center}
    \end{spacing}
    
    \begin{spacing}{2}
        \input{front-matter/abbreviations} % your abbreviations
    \end{spacing}
    \vfill
    \addChapterWord
    \cleardoublepage
}

\newcommand{\makeNomePage} {
    \addToTOC{LIST OF SYMBOLS} % add abstract to TOC
    \thispagestyle{plain} %Plain for page number at bottom.
    \begin{spacing}{1}
        \vspace*{.58in}
    	\begin{center}
        	\normalsize
            \MakeUppercase{LIST OF SYMBOLS}
            \vspace{\baselineskip}
    	\end{center}
    \end{spacing}
    
    \begin{spacing}{2}
        \input{front-matter/nomenclature} % your abstract
    \end{spacing}
    \vfill
    % \addChapterWord
    % \cleardoublepage

}

\newcommand{\makeAbstractPage} {
    \addToTOC{ABSTRACT} % add abstract to TOC
    \thispagestyle{plain}
    \begin{spacing}{1}
        \vspace*{.58in}
    	\begin{center}
        	\normalsize
            \MakeUppercase{abstract}
            \vspace{\baselineskip}
    	\end{center}
    \end{spacing}
    
    \begin{spacing}{2}
        \input{front-matter/abstract} % your abstract
    \end{spacing}
    \vfill
    \cleardoublepage

}

\newcommand{\makeDedicationPage} {
    \addToTOC{DEDICATION} % add dedication to TOC
    \thispagestyle{plain}
    \begin{spacing}{1}
    	\vspace*{.58in}
    	\begin{center}
        	\normalsize
            \MakeUppercase{dedication}
            \vspace{\baselineskip}
    	\end{center}
    \end{spacing}
    
    \begin{spacing}{2}
        \input{front-matter/dedication} % include the dedication
    \end{spacing}
    \cleardoublepage
    
}


\newcommand{\makeAcknowlPage} {
    \addToTOC{ACKNOWLEDGMENTS} % add acknowledgments to TOC
    \thispagestyle{plain}
    \begin{spacing}{1}
    	\vspace*{.58in}
    	\begin{center}
        	\normalsize
            \MakeUppercase{acknowledgments}
            \vspace{\baselineskip}
    	\end{center}
    \end{spacing}
    
    \begin{spacing}{2}
        \input{front-matter/acknowledgments} % include the acknowledgments
    \end{spacing}
    \cleardoublepage

}

\newcommand{\makeVitaPage}{

    \immaddtocontents{\protect\setlength{\cftchapindent}{0em}} % Undo indentations from Appendix
    \addToTOC{VITA} % add Vita to TOC
    \thispagestyle{plain}
    \begin{spacing}{1}
    	\vspace*{.58in}
    	\begin{center}
        	\normalsize
            \MakeUppercase{vita}
            \vspace{\baselineskip}
    	\end{center}
    \end{spacing}

    \begin{spacing}{2}
        \input{back-matter/vita} % include the Vita
    \end{spacing}
    \cleardoublepage
}

\newcommand{\addChapterWord}{
            \addtocontents{toc}{%
         \protect\vspace{\baselineskip}% 
         \protect\noindent CHAPTER\protect\par%
         }
}

% Taken from:
% https://tex.stackexchange.com/questions/161000/upper-case-in-chapter-title-follow-up
\makeatletter      
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}\texorpdfstring{\uppercase{#1}}{#1}}%
                    \else
                      \addcontentsline{toc}{chapter}{\texorpdfstring{\uppercase{#1}}{#1}}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{toc}{\protect\addvspace{10\p@}}%
                    %\addtocontents{lof}{\protect\addvspace{10\p@}}%
                    %\addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\makeatother

\makeatletter 
\newcommand\immaddtocontents[1]{{%
   \let\protect\@unexpandable@protect
   \immediate\write\@auxout{\noexpand\@writefile{toc}{#1}}%
}}
\makeatother

\endinput 