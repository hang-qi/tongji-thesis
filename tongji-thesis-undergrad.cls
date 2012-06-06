\ProvidesClass{tongji-thesis-undergrad}
[2012/03/26 Tongji University Thesis Template, Created by Hang Qi]

%------------------- Class Options -----------------------------
\newif\ifart\artfalse
\DeclareOption{art}{\arttrue}
\ExecuteOptions{}
\ProcessOptions\relax

\LoadClass[10.5pt,a4paper]{article}
%------------------- Mathmatics Basics -------------------------
\RequirePackage{amssymb,amsmath}
\RequirePackage{amsfonts}			% 数学字体
\RequirePackage{graphicx}
\RequirePackage{array}				% 配合tabular使用
\RequirePackage{bm}					% bold-style vector notation
%------------------- Basics -------------------------
%\RequirePackage[top=3.8cm, bottom=3.8cm, left=3cm, right=3cm]{geometry}
\RequirePackage[top=3cm, bottom=3cm, left=3.5cm, right=2cm]{geometry}
\setlength{\headheight}{41pt}
\setlength{\headsep}{0.5 cm}
\setlength{\footskip}{1 cm}
\addtolength{\textheight}{-0.5cm}
\RequirePackage{booktabs}			% 表格样式
\RequirePackage{colortbl}    		% 表格颜色
\RequirePackage[xetex,bookmarksnumbered,bookmarksopen,colorlinks,citecolor=black,linkcolor=black]{hyperref} 
\RequirePackage[numbers,sort&compress]{natbib}

% ------------------ Chinese Font Support --------------
\RequirePackage{indentfirst}
\RequirePackage{fontspec}
\RequirePackage{xltxtra,xunicode}  % XeTeX 相应宏包
\RequirePackage[slantfont,boldfont,CJKnumber]{xeCJK}  % 允许斜体和粗体

% Fonts 字体
\setmainfont{Times New Roman} 	% 英文字体
\setsansfont{Arial} 			% 英文无衬线字体
\setmonofont{Courier New}		% 英文等宽字体

% CJK Fonts
\setCJKmainfont{宋体}	% 中文字体: 宋体 / Adobe Song Std
\setCJKmonofont{Courier New}		% 英文等宽字体

%\setCJKmainfont[BoldFont={Adobe Heiti Std}, ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
%\setCJKfamilyfont{song}{Adobe Song Std}  % 宋体
%\setCJKfamilyfont{hei}{Adobe Heiti Std}  % 黑体
%\setCJKfamilyfont{kai}{Adobe Kaiti Std}  % 楷体
%\setCJKfamilyfont{fangsong}{Adobe Fangsong Std} % 仿宋

\setCJKfamilyfont{song}{宋体}  % 宋体
\setCJKfamilyfont{hei}{黑体}  % 黑体
\setCJKfamilyfont{kai}{楷体}  % 楷体
\setCJKfamilyfont{fangsong}{仿宋} % 仿宋


\newcommand{\kai}{\CJKfamily{kai}}
\newcommand{\fangsong}{\CJKfamily{fangsong}}
\newcommand{\hei}{\CJKfamily{hei}}
\newcommand{\song}{\CJKfamily{song}}

% Font size 字号
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}		% 初号
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}	% 小初号
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}		% 一号
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}		% 二号
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}	% 小二号
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}	% 三号
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}		% 四号
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}	% 小四号
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}	% 五号
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}	% 小五号
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}	% 六号
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}	% 七号

% Constants 常量
\XeTeXlinebreaklocale "zh-cn"
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
\setlength{\parindent}{2em}								% 首行缩进
\CJKsetecglue{\hskip 0.15em plus 0.05em minus 0.05em}	% 中英文间的间距
\renewcommand{\baselinestretch}{1.25}					% \baselineskip 的伸缩比例；\baselineskip 段落中两行之间的垂直距离

% Chinese Word
\renewcommand{\refname}{主要参考文献}
\renewcommand{\bibname}{主要参考文献}
\renewcommand\contentsname{目录}
\renewcommand\listfigurename{插图目录}
\renewcommand\listtablename{表格目录}
\renewcommand\indexname{索引}
\renewcommand\figurename{图}
\renewcommand\tablename{表}
\renewcommand\abstractname{\sihao \hei \textnormal{摘要}}
\renewcommand\partname{部分}
\renewcommand\appendixname{附录}

\newcommand{\CJKtoday}{\number\year 年\number\month 月\number\day 日}
\newcommand{\CJKnumtoday}{\CJKdigits{\the\year}年\CJKnumber{\the\month}月\CJKnumber{\the\day}日}

%------------------- Algorithms & Cod ----------------
%% Algorithms
\RequirePackage[algoruled,lined]{algorithm2e}
\renewcommand{\listalgorithmcfname}{算法清单}
\renewcommand{\algorithmcfname}{算法}
\renewcommand{\algorithmautorefname}{算法}
\SetAlCapHSkip{2em}
\SetAlgoCaptionSeparator{\hspace*{1em}}
\SetAlgoSkip{bigskip}
\setlength{\algomargin}{2em}
\SetKw{KwContinue}{continue}
\SetKw{KwBreak}{break}


\SetAlCapSty{textnormal}\SetAlCapFnt{\xiaowuhao}
\SetAlCapNameSty{textnormal}\SetAlCapNameFnt{\xiaowuhao}

%% Code
\RequirePackage{listings}
\lstloadlanguages{[Visual]C++,[ISO]C++}
\lstset{breaklines=true,tabsize=4,extendedchars=false,escapechar=\%}
\lstset{basicstyle=\ttfamily\small ,frame=single,captionpos=t}
\renewcommand\lstlistingname{代码}
\renewcommand\lstlistlistingname{代码}

%------------------- Customized Settings --------------
\def\thesis@define#1{
	\expandafter\gdef\csname #1\endcsname##1{%
	    \expandafter\gdef\csname thesis@#1\endcsname{##1}
	}
	\csname #1\endcsname{}
}

% variables on the cover
\thesis@define{ctitle}
\thesis@define{csubtitle}
\thesis@define{cauthor}
\thesis@define{cstudentid}
\thesis@define{cdepartment}
\thesis@define{cmajor}
\thesis@define{csupervisor}
\thesis@define{cdate}

% @cdata use today by default.
%   \CJKnumtoday CJKdigit style
%   \CJKtoday arabic style
%	\today English style
\cdate{\CJKnumtoday} 

% Abstracts and keywords
\newcommand{\cnenabstractname}{中外文摘要}
\newenvironment{cnenabstract}{%	
	\makethesistitlewithauthor
	%\phantomsection
	%\section*{\cnenabstractname}
	%\addcontentsline{toc}{section}{\cnenabstractname}
}

\newcommand{\cabstractname}{【摘要】}
\newcommand{\eabstractname}{【Abstract】}

\newcommand{\thesis@@cabstract}[1]{\long\gdef\thesis@cabstract{#1}}
\newenvironment{cabstract}{\collect@body\thesis@@cabstract}{}
\newcommand{\thesis@@eabstract}[1]{\long\gdef\thesis@eabstract{#1}}
\newenvironment{eabstract}{\collect@body\thesis@@eabstract}{}

\newcommand{\ckeywordsname}{【关键词】}
\newcommand{\ekeywordsname}{【Keywords】}
%\thesis@define{ckeywords}
%\thesis@define{ekeywords}

\def\thesis@parse@keywords#1{
  \expandafter\gdef\csname thesis@#1\endcsname{} % todo: need or not?
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname thesis@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname thesis@#1\endcsname{\ignorespaces\csname thesis@#1@separator\endcsname}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
        \expandafter\csname thesis@#1\expandafter\endcsname\expandafter{\reserved@a\enspace}}}}
        
\thesis@parse@keywords{ckeywords}
\thesis@parse@keywords{ekeywords}

% References
\newenvironment{references}{%
    %\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{section}{\refname}
}

% Ackownledgement
\newcommand{\ackname}{谢辞}
\newenvironment{acknowledgement}{%
    %\cleardoublepage
    \phantomsection
	\section*{\ackname}
	\addcontentsline{toc}{section}{\ackname}
}

%\makeatletter
%	\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}
%\makeatother

%------------------- Layout Settings --------------
% 封面 Cover page
\makeatletter
	\def\makethesiscover{ 
		% logo
		\vspace*{1.5cm}
		\begin{figure}[ht]
		  \centering
		  \includegraphics[width=5.5cm]{tongji-text-logo.jpg}
		\end{figure}
		\vspace{-0.6cm}
		\center{\sanhao TONGJI UNIVERSITY}
		
		\vspace{1cm}
		\center{\hei \sanhao 毕业设计（论文）}	

		% information (shown in table)
		\begin{table}[h]
		\begin{center}
			\newcolumntype{H}{>{\hspace{1em}\centering\arraybackslash\hei\xiaosihao}c<{\hspace{1em}}}
			\newcolumntype{C}{>{\hspace{1em}\arraybackslash\fangsong\xiaosihao}c<{\hspace{1em}}}
			\setlength{\extrarowheight}{1cm}	%requires array package
			\begin{tabular}{HC}
				课题名称			 		& \thesis@ctitle \\ \cline{2-2}
				副\hspace{0.5em}标\hspace{0.5em}题  & \thesis@csubtitle \\ \cline{2-2}
				院\hspace{0.5em}（系）& \thesis@cdepartment \\ \cline{2-2}
				专\hspace{2em}业 		& \thesis@cmajor \\ \cline{2-2}
				姓\hspace{2em}名 		& \thesis@cauthor \\ \cline{2-2}
				学\hspace{2em}号 		& \thesis@cstudentid \\ \cline{2-2}
				指导教师 					& \thesis@csupervisor \\ \cline{2-2}
				日\hspace{2em}期 		& \thesis@cdate \\ \cline{2-2}
			\end{tabular} 
		\end{center}
		\end{table}
	}
\makeatother

% Abstract
\makeatletter
	\def\makethesisabstract{%
		%\cleardoublepage % always openright for Abstract		
		\pagenumbering{Roman}
		% Chinese Abstract
		\setbox0=\hbox{{\xiaowuhao\hei\cabstractname}}
		\noindent%\hangindent\wd0\hangafter1
	    \box0\enspace{\xiaowuhao\song\thesis@cabstract}
		\vskip6bp
	    % Chinese Keywords
		\setbox0=\hbox{{\xiaowuhao\hei\ckeywordsname}}
		\noindent%\hangindent\wd0\hangafter1
	    \box0\enspace{\xiaowuhao\hei\thesis@ckeywords}
	    \vspace{1cm}
	    
	    % English Abstract
		\setbox0=\hbox{{\xiaowuhao\hei\eabstractname}}
		\noindent%\hangindent\wd0\hangafter1
	    \box0\enspace{\xiaowuhao\thesis@eabstract}
		\vskip6bp
		% English Keywords
		\setbox0=\hbox{\xiaowuhao\hei\ekeywordsname}	%\enskip
		\noindent%\hangindent\wd0\hangafter1
		\box0\enspace{\xiaowuhao\thesis@ekeywords}
	}
\makeatother 

% Thesis title in main text  文章标题：黑体，二号，居中。（副标题为小二号）
\makeatletter
	\def\makethesistitle{ 
		\begin{center}
			{\erhao\hei\thesis@ctitle\par} %
			\vskip 0.5 cm %
			{\xiaoerhao\hei\thesis@csubtitle\par} %
			\vskip 1cm    %题目和下面内容的距离
		\end{center} %
	} 
\makeatother

% 姓名栏 （专业）××(学生)×××指导教师××× 居中书写 楷体 四号
\makeatletter
	\def\makethesistitlewithauthor{
		\begin{center}
			{\erhao\hei\thesis@ctitle\par} %
			\vskip 0.3 cm %
			{\xiaoerhao\hei\thesis@csubtitle\par} %
			\vskip 0.5cm    %题目和下面内容的距离
			{\sihao\kai
			{\thesis@cmajor}
			\enspace
			{\thesis@cauthor}
			\enspace
			{指导老师\enspace\thesis@csupervisor}}
			\vskip 1cm    %题目和下面内容的距离
		\end{center} %
	} 
\makeatother


% Layout of toc 目录版式
%\setcounter{secnumdepth}{3}
%\setcounter{tocdepth}{3}
  
\RequirePackage{titletoc}
\ifart
	\titlecontents{chapter}[0pt]{\addvspace{6pt}}%
	          {\wuhao\song\thecontentslabel\enspace}%
	              {\wuhao\song}{\dotfill\contentspage}[\addvspace{0pt}]
	\titlecontents{section}[0em]{\addvspace{4pt}}%
	          {\wuhao\song\thecontentslabel\,、\,\enspace}%
	              {\wuhao\song}{\dotfill\contentspage}[\addvspace{0pt}]
	\titlecontents{subsection}[2em]{\addvspace{4pt}}%
	          {\wuhao\song\,（\,\CJKnumber{\thecontentslabel}\,）\,\enspace}%
	              {\wuhao\song}{\dotfill\contentspage}[\addvspace{0pt}]
	\titlecontents{subsubsection}[4em]{\addvspace{4pt}}%
	          {\wuhao\song\thecontentslabel\enspace}%
	              {\wuhao\song}{\dotfill\contentspage}[\addvspace{0pt}]
\else
	\titlecontents{chapter}[0pt]{\addvspace{6pt}}%
	          {\wuhao\song\thecontentslabel\enspace}%
	              {\wuhao\song}{\dotfill\contentspage}[\addvspace{0pt}]
	\titlecontents{section}[0em]{\addvspace{4pt}}%
	          {\wuhao\song\thecontentslabel\enspace}%
	              {\wuhao\song}{\dotfill\contentspage}[\addvspace{0pt}]
	\titlecontents{subsection}[2em]{\addvspace{4pt}}%
	          {\wuhao\song\thecontentslabel\enspace}%
	              {\wuhao\song}{\dotfill\contentspage}[\addvspace{0pt}]
	\titlecontents{subsubsection}[4em]{\addvspace{4pt}}%
	          {\wuhao\song\thecontentslabel\enspace}%
	              {\wuhao\song}{\dotfill\contentspage}[\addvspace{0pt}]
\fi

% Style of section headings 各级标题样式
\RequirePackage{titlesec}
\ifart
	%文科 Art/Management/...
	\titleformat{\section}{\centering \hei \sihao}{\thesection\, 、}	% 一级标题：居中，黑体，四号
	\titleformat{\subsection}{\hei \wuhao}{（\,\thesubsection\,）}			% 二级标题：黑体，五号	
\else
	\titleformat*{\section}{\centering \hei \sihao}	% 一级标题：居中，黑体，四号
	\titleformat*{\subsection}{\hei \wuhao}			% 二级标题：黑体，五号
	\titleformat*{\subsubsection}{\hei \wuhao \parindent 2em}	% 三级标题：黑体，五号，空两格
	\titlespacing{\subsubsection}{2em}{*1.5}{*1.1}
\fi
%第三级以下单独占行的标题顺序采用 A.、B.、C....和 a. b. c....两个层次. 标题均空两格书写序号,后空一格写标题名。

% Items / Enumerate
% 正文内的分项采用(1)(2)(3)...作序号
% 对分项中的小项采用1、2、3...作序号或数字加半括号,括号后不再加其他标点。
\renewcommand{\labelenumi}{（ \theenumi ）}
\renewcommand{\labelenumii}{\theenumii ）}

\RequirePackage{enumitem}
\setenumerate{fullwidth,itemindent=\parindent,itemsep=0ex,partopsep=0pt,parsep=0ex,topsep=0ex,listparindent=\parindent}
\setitemize{fullwidth,itemindent=\parindent,itemsep=0pt,partopsep=0pt,parsep=0ex,topsep=0ex}
\setdescription{fullwidth,itemindent=\parindent,itemsep=0pt,partopsep=0pt,parsep=0ex,topsep=0ex}

%\topsep 列表顶部与之前内容的额外空白，不含 \baselineskip
%\partopsep 如果列表之前是一个空行，列表顶部的额外空白
%\itemsep 列表各项之间额外的垂直空白
%\parsep 一个 item 中，如果分段，段落间额外空白
%\leftmargin 列表与左边距之间的水平距离，值为非负
%\rightmargin 列表与右边距之间的水平距离，值为非负
%\itemindent 每一 item 第一行的缩进
%\listparindent 每一 item 第一行之后各行的缩进
%\labelsep 标签盒子与每一 item 第一行文本之间距离
%\labelwidth 标签盒子的宽度；如果标签过长，这一宽度会自动变大，直到列表的第一行文本为止
%\makelabel{label} 生成 \item[label] 命令所要求的标签
%\usecounter{ctr} 使用列表项目计数器 ctr，初始值为 0

% Figures
%每幅插图应有图序和图题,图序和图题应放在图位下方居中处。图序、图题采用宋体小 5 号。
%图应在描图纸或在白纸上用墨线绘成,也可以用计算机绘图。插图上下均应空一行。

% Tables
%每个表格应有表序和表题,表序和表题应写在表格上方正中,表序后空一格书写表题。表序、表题
%采用宋体小 5 号。表格允许下页接写,表题可省略,表头应重复写,并在右上方注明“续表××”。
%表格上下均应空一行。

\setlength{\floatsep}{10pt plus 3pt minus 2pt}
\setlength{\intextsep}{10pt plus 4pt minus 2pt}					% set space above and below in-line float
\setlength{\textfloatsep}{10pt plus 4pt minus 2pt}


% 表格、图标题注
\RequirePackage{caption}	
%\RequirePackage[config]{subfig}			
\DeclareCaptionLabelFormat{tongji}{{\xiaowuhao\song #1~\rmfamily #2}}
\DeclareCaptionLabelSeparator{tongji}{\hspace{1em}}
\DeclareCaptionFont{tongji}{\xiaowuhao\song}
\captionsetup{labelformat=tongji,labelsep=tongji,font=tongji}
\captionsetup[table]{position=above,aboveskip=-10pt}
\captionsetup[figure]{position=bottom,aboveskip=-10pt}
%\captionsetup[subfloat]{labelformat=simple,font=tongji,captionskip=6bp,nearskip=6bp,farskip=0bp,topadjust=0bp}
%\renewcommand{\thesubfigure}{(\alph{subfigure})}
%\renewcommand{\thesubtable}{(\alph{subtable})}

% Formulas 公式应居中书写,公式的编号用圆括号,放在公式右边行末,公式和编号之间不加虚线。

%------------------- Headers & footers --------------------------
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\lhead{\includegraphics[width=5cm]{tongji-text-logo.jpg}}
\chead{}
\makeatletter
\rhead{\thesis@ctitle}
\makeatother
\lfoot{}
\cfoot{}
\rfoot{共\enspace\pageref{LastPage}\enspace 页 \hspace*{1em} 第\enspace\thepage\enspace 页}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}

\newsavebox{\gutterline}
\sbox{\gutterline}
{\large%
.................................................\enspace
\rotatebox[origin=c]{90}{\raisebox{-0.5ex}{\wuhao 装}}\enspace
........................\enspace
\rotatebox[origin=c]{90}{\raisebox{-0.5ex}{\wuhao 订}}\enspace%
........................\enspace
\rotatebox[origin=c]{90}{\raisebox{-0.5ex}{\wuhao 线}}\enspace%
.................................................}

\fancyfoot[L]{
\begin{picture}(1,1)
\put(-50,340){\rotatebox[origin=c]{270}{\usebox{\gutterline}}}
\end{picture}
}


%------------------- Pages ----------------------------
% \pagenumbering{num_style}, in which num_style can be:
%   arabic - Arabic numerals
%   roman - Lowercase roman numerals
%   Roman - Uppercase roman numerals
%   alph - Lowercase letters
%   Alph - Uppercase letters

\newcommand{\frontmatter}{\pagenumbering{roman}}
\newcommand{\mainmatter}{\pagenumbering{arabic}}
%\newcommand{\backmatter}{\pagenumbering{arabic}}

%------------------- Theorems -------------------------
\RequirePackage{amsthm}
\renewcommand\proofname{\hspace{2em}\normalfont\hei 证明}

\newtheoremstyle{normal}% name of the style to be used
  {0.5 em}	% measure of space to leave above the theorem. E.g.: 3pt
  {0.5 em}	% measure of space to leave below the theorem. E.g.: 3pt
  {\rm\song}	% name of font to use in the body of the theorem
  {2 em}		% measure of space to indent
  {\hei}	% name of head font
  {.}		% punctuation between head and body
  {0.5 em}	% space after theorem head
  {}		% Manually specify head

%style: definition/plain/remark
\theoremstyle{normal}
\newtheorem{theorem}{定理}		% Theorem
\newtheorem{conjecture}{猜想}	% Conjecture
\newtheorem{lemma}{引理}			% Lemma
\newtheorem{definition}{定义}	% Definition
\newtheorem{property}{性质}		% Property

% For ntheorem : \RequirePackage[amsthm, thmmarks]{ntheorem}
%\theoremheaderfont{\normalfont\rmfamily\CJKfamily{hei}}
%\theorembodyfont{\normalfont\rmfamily\CJKfamily{kai}}
%\theoremindent0em
%\theoremseparator{\hspace{1em}}
%\theoremnumbering{arabic}
%\theoremsymbol{}          %定理结束时自动添加的标志

%------------------- Roman Numbers -------------------
\makeatletter
	\newcommand{\rmnum}[1]{\romannumeral #1}
	\newcommand{\Rmnum}[1]{\expandafter\@slowromancap\romannumeral #1@}
\makeatother
