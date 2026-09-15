% 温州大学 毕业论文 LaTeX 模板
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\newcommand{\newclearpage}{\clearpage} % 设置文章为电子版格式（不添加多余空白页）
\DeclareOption{print-both-sides}{ % 设置文章为双面打印格式（添加多余空白页保证每个表格、章节开头为奇数页面）
    \renewcommand{\newclearpage}{
        \clearpage{
            \cleardoublepage
        }
    }
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[
    a4paper,
    12pt,
    openany,
    zihao=-4
]{ctexbook}


% 页面布局
\RequirePackage[top=2.5cm, bottom=2.5cm, left=2.5cm, right=2.5cm]{geometry} % 设置页边距
\setlength{\topmargin}{-1cm} % 设置上边距
% % 页眉页脚
\RequirePackage{fancyhdr} % 页眉页脚设置

% % 行距和段落缩进
\RequirePackage{setspace} % 设置行距



% % 目录样式
\RequirePackage[notlof,notlot,nottoc,numbib]{tocbibind} %table of content
\RequirePackage{tocloft}


% % 颜色设置
\RequirePackage{xcolor} % 用于颜色设置

% % 代码高亮
\RequirePackage{minted} % 用于代码高亮
\usemintedstyle{pastie}
\definecolor{code}{rgb}{0.95,0.95,0.95}

% % 特殊符号
\RequirePackage{gensymb} % 用于插入一些特殊符号

% % 表格制作
\RequirePackage{booktabs} % 用于三线表制作
\RequirePackage{multirow} % 用于合并表格行
\RequirePackage{makecell} % 用于单元格内换行和加粗等
\RequirePackage{longtable} % 用于长表格制作
\RequirePackage{colortbl} % 用于设置表格颜色
\RequirePackage{array}

% % 图片插入
\RequirePackage{graphicx} % 用于插入图片
\RequirePackage{wrapfig} % 用于图片的环绕排版
\RequirePackage[labelsep=space]{caption}
\RequirePackage[font=footnotesize]{subcaption} % 用于插入子图片

\RequirePackage[absolute]{textpos} %绝对位置控制

% % 符号说明
\RequirePackage{nomencl} % 用于制作符号说明

% % 伪代码
\RequirePackage[onelanguage,linesnumbered,algochapter,ruled,vlined]{algorithm2e}

% % 代码插入
\RequirePackage{listings} % 用于插入代码
% % 时间设置
\RequirePackage{datetime}

% % 字体设置

\setmonofont{Consolas}
% \RequirePackage{newtxtext}
\RequirePackage{bm} % 用于设置数学公式字体


\RequirePackage{ragged2e} % 实现两端对齐
\RequirePackage[section]{placeins}
\RequirePackage{enumitem}


\RequirePackage[bottom, perpage]{footmisc}
\usepackage{pifont} % 提供 \ding 命令用于带圈数字
\renewcommand{\thefootnote}{\ding{\numexpr171+\value{footnote}}}


\usepackage{fontspec}

\setmainfont{Times New Roman}[
  Path = ./fonts/,
  Extension = .ttf,
  UprightFont = times,
  BoldFont = timesbd,
  ItalicFont = timesi,
  BoldItalicFont = timesbi
]



\setCJKmainfont{AdobeSongStd-Light.otf}
[
    Path=./fonts/,
    % BoldFont   =AdobeHeitiStd-Regular.otf,
    % ItalicFont =AdobeKaitiStd-Regular.otf
    AutoFakeBold,
    AutoFakeSlant
]
\setCJKsansfont{AdobeHeitiStd-Regular.otf}
[
    Path=./fonts/,
    AutoFakeBold,
    AutoFakeSlant
]
\setCJKmonofont{AdobeFangsongStd-Regular.otf}
[
    Path =./fonts/,
]
\setCJKfamilyfont{zhsong}{AdobeSongStd-Light.otf}
[
    Path = ./fonts/,
    BoldFont   = AdobeHeitiStd-Regular.otf,
    ItalicFont = AdobeKaitiStd-Regular.otf
]
\setCJKfamilyfont{zhhei}{AdobeHeitiStd-Regular.otf}%AdobeHeitiStd-Regular.otf
[
    Path = ./fonts/,
    AutoFakeBold,
    AutoFakeSlant
]
\setCJKfamilyfont{zhkai}{AdobeKaitiStd-Regular.otf}
[
    Path = ./fonts/,
    AutoFakeBold,
    AutoFakeSlant
]
\setCJKfamilyfont{zhfs}{AdobeFangsongStd-Regular.otf}
[
    Path = ./fonts/,
    AutoFakeBold,
    AutoFakeSlant
]
\newCJKfontfamily{\xingkai}{华文行楷}[
  Path = ./fonts/,       % 字体文件所在路径（若文件在fonts文件夹下）
  Extension = .ttf,      % 字体文件扩展名（避免重复写.ttf）
  % 行楷通常无需单独指定粗体（本身无粗体变种），若有对应粗体文件可保留
  BoldFont = 华文行楷.ttf  % 注意：行楷一般无粗体，此行为可选
]


% 插图和表格标题设置
\RequirePackage[font=footnotesize,tableposition=top]{caption} % 设置插图和表格标题字体和位置

% 参考文献设置
\RequirePackage[numbers,sort&compress]{natbib} % 设置参考文献格式

% 设定时间为中文日期
\ctexset{today=small}


\AtBeginDocument{
    \hypersetup{
        citecolor=green,
        filecolor=black,
        linkcolor=black,
        urlcolor=black,
        CJKbookmarks=true,
        pdftitle={\@ctitle},
        pdfauthor={\@cauthor},
        pdfkeywords={\@ckeywords},
        pdfcreator={LaTeX with hyperref package, using SCUT undergraduate Thesis LaTeX Template by Shevon}
    }
    \noheadpagestyle
}
\pagestyle{fancy}

% 1.2倍行距
\renewcommand{\baselinestretch}{1.5}

% 有序与无序列表环境
\setlist[enumerate]{nosep}
\renewcommand\labelenumi{\theenumi)}
%\renewcommand\labelenumi{\theenumi.}
\setlist[itemize]{nosep}
\setlist[description]{nosep}

% 默认页面页眉页脚样式
% \renewcommand{\chaptermark}[1]{\markboth{\songti 第{\chinese{chapter}}章~#1}{}}
\renewcommand{\chaptermark}[1]{%
  \markboth{\songti \arabic{chapter}~#1}{}%
}

\fancypagestyle{plain}{% 样式中间变量
}

\fancyhf{}
\pagestyle{fancy}
\fancypagestyle{main}{
    \fancyhf{} % 清空页眉页脚
    \pagestyle{fancy}
    \fancyhf{}
    
    % ========== 奇数页 居中：论文名称 ==========
    \fancyhead[CE]{%
        \zihao{5}\songti
        \ifdefined\blind
            XXX硕士学位论文
        \else
            温州大学硕士学位论文
        \fi
    }
    
    % ========== 偶数页 居中：自动章节名 ==========
    \fancyhead[CO]{%
        \zihao{5}\songti
        \leftmark % 自动显示：第一章 绪论
    }
    
    % ========== 页脚：中间页码 ==========
    \fancyfoot[C]{\zihao{5}\thepage}
    
    % 页眉线 1磅，页脚无线
    \renewcommand{\headrulewidth}{1pt}
    \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{nohead}{
    \fancyfoot[C]{\zihao{5}\thepage}
    \fancyhead{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

%修改中间变量
\newcommand\mainpagestyle{\cleardoublepage\pagestyle{main}\let\ps@plain\ps@main}
\newcommand\noheadpagestyle{\cleardoublepage\pagestyle{nohead}\let\ps@plain\ps@nohead}

% F8 目录标题：小2号黑体居中
\renewcommand{\cfttoctitlefont}{\hfill\zihao{3} \bfseries\heiti}
\renewcommand{\cftlottitlefont}{\hfill\zihao{3}\bfseries\heiti}
\renewcommand{\cftloftitlefont}{\hfill\zihao{3}\bfseries\heiti}

% 如果要加粗，放 \bfseries
% 目录中章节标题：四号宋体
% F9 目录内容：宋体四号
\renewcommand{\cftchapfont}{\bfseries\zihao{4}\songti}
\renewcommand{\cftchappagefont}{\bfseries\zihao{4}\songti}

% 目录中其他内容：小四号宋体
\renewcommand{\cftsecfont}{\zihao{-4}\songti}
\renewcommand{\cftsecpagefont}{\zihao{-4}\songti}
\renewcommand{\cftsubsecfont}{\zihao{-4}\songti}
\renewcommand{\cftsubsecpagefont}{\zihao{-4}\songti}
\setlength{\cftsecindent}{2em}        % 小节缩进, 对齐章标题空隙
\setlength{\cftsubsecindent}{4em}        % 子小节缩进, 对齐章标题空隙



% 插图目录
\renewcommand{\listfigurename}{图\ 目\ 录}
\renewcommand{\cftfigfont}{\zihao{-4}\songti}
\renewcommand{\cftfigpagefont}{\zihao{-4}\songti}

% 表格目录
\renewcommand{\listtablename}{表\ 目\ 录}
\renewcommand{\cfttabfont}{\zihao{-4}\songti}
\renewcommand{\cfttabpagefont}{\zihao{-4}\songti}

\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftdotsep}{1.2}
\renewcommand{\cftnodots}{\cftdotsep}
\cftsetpnumwidth{1.2em}

% 目录标题到目录正文的间距调整
\setlength{\cftaftertoctitleskip}{0.5cm}
\setlength{\cftafterloftitleskip}{0.6cm}
\setlength{\cftafterlottitleskip}{0.6cm}


% 表格与图片标题设定
% https://blog.csdn.net/uncle_gy/article/details/78313861
% https://tex.stackexchange.com/questions/101591/setting-font-size-for-caption-package
%\setlength\heavyrulewidth{0.2em} % 表格线宽
% F19 图题表题 宋体五号
\DeclareCaptionFormat{scutcaption}{\fontsize{10.5}{10.5}\selectfont#1#2#3}
\captionsetup{format=scutcaption}
\DeclareCaptionLabelFormat{opening}{#2)}
\subcaptionsetup[figure]{labelformat=opening}

% 目录设定，使用tocloft宏包
\setcounter{secnumdepth}{3} % depth of toc, 2
%\setcounter{tocdepth}{1}
% 如果要在目录中显示子章节请换用下面这行(目录中显示到x.y.z章)，如果不用这行默认显示到x.y章。
\setcounter{tocdepth}{2}

% 参考文献引用标记格式：右上角，带方括号
\RequirePackage{gbt7714}
\newcommand\overcite[1]{{\setcitestyle{super}\cite{#1}}}


% 相关信息宏定义 中山大学 黄俊杰(huangjj27, 349373001dc@gmail.com)
\newcommand\ctitle[1]{\def\@ctitle{#1}}
\newcommand\etitle[1]{\def\@etitle{#1}}
\newcommand\covertitlefirst[1]{\def\@covertitlefirst{#1}}
\newcommand\covertitlesecond[1]{\def\@covertitlesecond{#1}}
% 这两个在原来的info.tex里面定义，用于英文标题过长的时候的换行情况
\newcommand\etitlefirst[1]{\def\@etitlefirst{#1}}
\newcommand\etitlesecond[1]{\def\@etitlesecond{#1}}
\newcommand\eabstracttitlefirst[1]{\def\@eabstracttitlefirst{#1}} % 解决英文摘要页标题过长问题 (Issue 49&63)
\newcommand\eabstracttitlesecond[1]{\def\@eabstracttitlesecond{#1}}

\newcommand\cauthor[1]{\def\@cauthor{#1}} % 默认中文名为封面作者名字
\newcommand\cschool[1]{\def\@cschool{#1}}
\newcommand\fen[1]{\def\@fen{#1}}
\newcommand\id[1]{\def\@id{#1}}
\newcommand\udc[1]{\def\@udc{#1}}
\newcommand\mi[1]{\def\@mi{#1}}
\newcommand\pylx[1]{\def\@pylx{#1}}
\newcommand\cmajor[1]{\def\@cmajor{#1}}
\newcommand\cclass[1]{\def\@cclass{#1}}
\newcommand\cmentor[1]{\def\@cmentor{#1}}
\newcommand\cdata[1]{\def\@cdata{#1}}
\newcommand\xwlx[1]{\def\@xwlx{#1}}


\newcommand{\inputcode}[2]{ % 定义代码块命令，参数 #1 表示语言，#2 表示文件名
    \inputminted[
        fontfamily=tt,
        breaklines=true,
        linenos=true,
        bgcolor=code,
        baselinestretch=1.2,
        fontsize=\footnotesize]{#1}{#2} % 指定语言为 #1，文件名为 #2
}
\newcommand{\code}[2]{
    \mintinline[fontfamily=tt,
        breaklines=true,
        linenos=true,
        bgcolor=code,
        baselinestretch=1.2,
        fontsize=\footnotesize]{#1}{#2}
}
\newenvironment{codeblock}[2][]{\VerbatimEnvironment
    \begin{listing}
        \begin{minted}[
        fontfamily=tt,
        breaklines=true,
        linenos=true,
        bgcolor=code,
        baselinestretch=1.2,
        fontsize=\footnotesize,
    #1]{#2}}
 {\end{minted}\end{listing}}

\newcommand\makeUndergraduateCover {
    \begin{titlepage}
        \thispagestyle{empty}
        {
            \songti \zihao{-4} 
            \noindent\makebox[2cm][s]{分类号：}\underline{\makebox[3cm][c]{\@fen}} \hfill \makebox[1.2cm][s]{UDC:}\underline{\makebox[3cm][c]{\@udc}} \\
            \noindent\makebox[2cm][s]{学号：}\underline{\makebox[3cm][c]{\@id}} \hfill \makebox[1.2cm][s]{密级:}\underline{\makebox[3cm][c]{\@mi}}
        }

        \vspace{0.7cm}
        \begin{center}
            { \xingkai \fontsize{48pt}{58pt}\selectfont 温州大学} \\
            {\vspace{15pt} \heiti \zihao{-0} 硕\hspace{20pt}士\hspace{20pt}学\hspace{20pt}位\hspace{20pt}论\hspace{20pt}文} \\
            \vspace{5pt}\includegraphics[width=0.25\textwidth]{title.png} \\
            {
                \vspace{10pt}
                \begin{minipage}{15cm} 
                \songti \zihao{2} \bfseries 
                \centering 
                \linespread{1.25}\selectfont 
                \@ctitle 
                \end{minipage}
            }
            \vspace*{1cm}
            \begin{spacing}{2}
                \zihao{-3}\songti
                    \begin{tabular}{cc}
                        % [s] 两端对齐
                        \makebox[3cm][s]{作者姓名：}   & \parbox{8cm}{\zihao{-3} \CJKfamily{zhkai} \bfseries\centering\@cauthor}                 \\ \cline{2-2}
                        \makebox[3cm][s]{培养类型：}   & \parbox{8cm}{\zihao{-3} \CJKfamily{zhkai} \bfseries\centering\@pylx}                                \\ \cline{2-2}
                        \makebox[3cm][s]{学位类型：}   & \parbox{8cm}{\zihao{-3} \CJKfamily{zhkai} \bfseries\centering\@xwlx}                                \\ \cline{2-2}
                        \makebox[3cm][s]{专业名称：}   & \parbox{8cm}{\zihao{-3} \CJKfamily{zhkai} \bfseries\centering\@cmajor}                                \\ \cline{2-2}
                        \makebox[3cm][s]{研究方向：} & \parbox{8cm}{\zihao{-3} \CJKfamily{zhkai} \bfseries\centering\@cclass}                                  \\ \cline{2-2}
                        \makebox[3cm][s]{指导教师：} & \parbox{8cm}{\zihao{-3} \CJKfamily{zhkai} \bfseries\centering\@cmentor}                                   \\ \cline{2-2}
                        \makebox[3cm][s]{完成日期：} & \parbox{8cm}{\zihao{-3} \CJKfamily{zhkai} \bfseries\centering \@cdata} \\ \cline{2-2}
                    \end{tabular}
            \end{spacing}
            \vfill
            % \vspace{2cm}
            {\songti \zihao{4} 温州大学学位委员会}
        \end{center}
        \pagebreak[4]
    \end{titlepage}
    \thispagestyle{empty}
    \newclearpage
}

% 原创性声明
\newcommand\makedisclaim[1][]{
    {
    \songti \zihao{-4} \linespread{2}\selectfont 
    \begin{center}
        {\heiti \zihao{-4} \bfseries 温\ 州\ 大\ 学\ 学\ 位\ 论\ 文\ 独\ 创\ 性\ 声\ 明 }
    \end{center}

    \vspace*{10pt}本人郑重声明：所呈交的学位论文是我个人在导师指导下进行的研究工作及取得的研究成果。尽我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得温州大学或其它教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。

    \vspace*{40pt}
    \hspace{10pt}论文作者签名： \hfill 日期： \hspace{30pt}年\hspace{10pt}月\hspace{10pt}日\hspace{10pt}
    \vfill
    \begin{center}
        {\heiti \zihao{-4} \bfseries 温\ 州\ 大\ 学\ 学\ 位\ 论\ 文\ 使\ 用\ 授\ 权\ 声\ 明 }
    \end{center}

    \vspace*{10pt}本人完全了解温州大学关于收集、保存、使用学位论文的规定，即：学校有权保留并向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅。本人授权温州大学可以将本学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编本学位论文。本人在导师指导下完成的论文成果，知识产权归属温州大学。

    保密论文在解密后遵守此规定。

    \vspace*{40pt}
    \hspace{10pt}论文作者签名： \hspace{6cm} 导师签名：
    
    \hspace{10pt}日期： \hspace{20pt}年\hspace{10pt}月\hspace{10pt}日\hspace{10pt} \hspace{4.7cm}日期： \hspace{20pt}年\hspace{10pt}月\hspace{10pt}日\hspace{10pt}

    \vspace{2cm}

    }
    \pagestyle{empty}
    \newclearpage
}



% 摘要
\newcommand\ckeywords[1]{\def\@ckeywords{#1}}
\newcommand\ekeywords[1]{\def\@ekeywords{#1}}
\newcommand\cabstract[1]{\def\@cabstract{#1}}
\newcommand\eabstract[1]{\def\@eabstract{#1}}

\newcommand\makecabstract{
    \ctexset{
        section = {
          titleformat = {\zihao{4}\heiti},
          beforeskip = {10pt},
          afterskip = {20pt}
         },
        paragraph/format = {}
    }

    % 使用隐藏目录项的section及添加为chapter形式目录的方法来去掉在openright环境中中英文摘要间出现空白页的情况
    \section*{}
    \addcontentsline{toc}{chapter}{摘\hspace{\ccwd}要}
    \makeatletter
    % 提取标题，将内部 \\ 全部清空
    \begingroup
    \def\\{} % 把换行命令置空
    \xdef\purectitle{\@ctitle}
    \endgroup
    \makeatother

    \vspace*{-5ex}
    \begin{center}
        \parbox{16cm}{\zihao{3} \heiti \bfseries\centering\purectitle}
    \end{center}
    
    \vspace*{0.5cm}\centerline{\zihao{4}\heiti\bfseries 摘\hspace{\ccwd}要}
    \vspace*{0.5cm}

    {
        \linespread{1.2}\selectfont 
        \zihao{4}\songti
        \@cabstract
        \paragraph{\heiti{关键词：}} \@ckeywords

    }
}

\newcommand\makeeabstract{

    \ctexset{
        section = {
          titleformat = {\zihao{3}\bfseries},
          beforeskip = {10pt},
          afterskip = {20pt}
         }
    }

    \section*{}
    \addcontentsline{toc}{chapter}{ABSTRACT}

    \zihao{4}
    \vspace*{-5ex}
    \begin{center}
        \parbox{16cm}{\zihao{3} \bfseries \centering\MakeUppercase{\@etitle}}
    \end{center}
    \vspace*{0.5cm}\centerline{\textbf{ABSTRACT}}
    \vspace*{0.5cm}
    \setlength{\baselineskip}{20pt}

    \zihao{4}
    \@eabstract
    \paragraph{\textbf{KEY WORDS:}}\@ekeywords
}

\newcommand\makeabstract{
    \pagenumbering{Roman} 
    \setcounter{page}{1} 
    
    \fancypagestyle{abstractstyle}{
        \fancyhf{} 
        \cfoot{\thepage} 
        \renewcommand{\headrulewidth}{0pt} 
    }
    \pagestyle{abstractstyle} 
    
    \makecabstract
    \newclearpage 
    \makeeabstract
    \newclearpage
}

\newcommand\maketableofcontents{
    % \pagenumbering{roman}       % 从 i 开始编号（罗马数字）
    % \thispagestyle{empty}       % 目录页本身不要页码
    \vspace*{-2.8cm}
    \renewcommand{\contentsname}{\zihao{3} \heiti \centerline{目\hspace{\ccwd}录}}
    { % 局部作用域，仅影响目录
        \linespread{1.2}\selectfont % 1.2倍行距
        \setlength{\cftbeforechapskip}{3pt}    % 减小一级标题前间距
        \setlength{\cftchapindent}{0pt} 
        \addcontentsline{toc}{chapter}{目\hspace{\ccwd}录}
        \tableofcontents
    }
    \newpage
}

\newcommand\makelistoffiguretable{
    \section*{}
    \vspace*{-3.6cm}
    \addcontentsline{toc}{chapter}{图\ 目\ 录}
    \listoffigures
    \newclearpage
    \section*{}
    \vspace*{-3.6cm}
    \addcontentsline{toc}{chapter}{表\ 目\ 录}
    \listoftables
    % \thispagestyle{listoffiguretable}
    \newclearpage
}



\renewcommand\mainmatter{
    \@mainmattertrue
    \pagenumbering{arabic}
    \ctexset {
        chapter = {
        fixskip = true,
        format   = {\centering\zihao{3}\heiti\bfseries}, 
        number   = {\arabic{chapter}},          
        name     = {},                          
        aftername = \quad,                      
        beforeskip = {10pt},
        afterskip  = {20pt},
        titleformat = {\zihao{3}\heiti}
        },
        section = {
          format = {\zihao{4}\heiti},
          aftername = \hspace{0.5em},
          nameformat = {\zihao{4}\heiti},
          titleformat = {\zihao{4}\heiti},
          beforeskip = {0.5\baselineskip},
          afterskip = {0.5\baselineskip plus 0.3\baselineskip minus 0.3\baselineskip},
         },
        subsection = {
                format = {\zihao{4}\heiti},
                aftername = \hspace{0.5em},
                nameformat = {\zihao{4}\heiti},
                titleformat = {\zihao{4}\heiti},
                beforeskip = {0.5\baselineskip},
                afterskip = {0.5\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip},
            },
        subsubsection = {
                fixskip = true,
                format = {\zihao{-4}\heiti},
                aftername = \hspace{0.5em},
                nameformat = {\zihao{-4}\heiti},
                titleformat = {\zihao{-4}\heiti},
                beforeskip = {0.5\baselineskip},
                afterskip = {0.5\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip},
            }
    }
    \zihao{-4}\songti \linespread{1.2}\selectfont
    %\pagestyle{plain}
    \mainpagestyle
}

\renewcommand\backmatter{
    \@mainmatterfalse
    \setcounter{chapter}{0}
    \setcounter{section}{0}
    \ctexset {
        chapter = {
          fixskip = true,
          format={\centering\zihao{3}\heiti\bfseries},
          nameformat = {\zihao{3}\heiti},
          beforeskip = {10pt},
          afterskip = {20pt},
          titleformat = {\zihao{3}\heiti}
         },
        section = {
          format = {\zihao{4}\heiti},
          aftername = \hspace{0.5em},
          nameformat = {\zihao{4}\heiti},
          titleformat = {\zihao{4}\heiti},
          beforeskip = {0.5\baselineskip},
          afterskip = {0.5\baselineskip plus 0.3\baselineskip minus 0.3\baselineskip},
         },
        subsection = {
                format = {\zihao{4}\heiti},
                aftername = \hspace{0.5em},
                nameformat = {\zihao{4}\heiti},
                titleformat = {\zihao{4}\heiti},
                beforeskip = {0.5\baselineskip},
                afterskip = {0.5\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip},
            },
        subsubsection = {
                fixskip = true,
                format = {\zihao{-4}\heiti},
                aftername = \hspace{0.5em},
                nameformat = {\zihao{-4}\heiti},
                titleformat = {\zihao{-4}\heiti},
                beforeskip = {0.5\baselineskip},
                afterskip = {0.5\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip},
            }
    }
    \zihao{-4}\songti \linespread{1.2}\selectfont


}



% 参考文献
% 标题小五号黑体加冒号
% 内容小五号宋体
\newcommand\makereferences{
    \begingroup

    % 引用样式
    \bibliographystyle{gbt7714-numerical}
    % \nocite{*}
    % F15 参考文献内容 宋体五号
    {\zihao{-4}\songti\linespread{1.2}\bibliography{main}}    % 引用文献列表
    \endgroup
}


% 附录样式
\renewcommand\appendix{\par
    \@mainmattertrue
    % \fancypagestyle{plain}{
    %     \fancyhead[R]{\zihao{-5} 附录\thechapter \leftmark}
    % }
    \setcounter{chapter}{0}
    \setcounter{section}{0}
    \gdef\@chapapp{\appendixname}
    \gdef\thechapter{\@Alph\c@chapter}
    \gdef\CTEX@prechapter{\CTEX@preappendix}
    \gdef\CTEX@thechapter{\CTEX@appendix@number}
    \gdef\CTEX@postchapter{}
    \renewcommand\thefigure{\Alph{chapter}-\arabic{figure}}
    \renewcommand\thetable{\Alph{chapter}-\arabic{table}}
}


\def\equationautorefname{式}%
\def\footnoteautorefname{脚注}%
\def\itemautorefname{项}%
\def\figureautorefname{图}%
\def\tableautorefname{表}%
\def\partautorefname{篇}%
\def\appendixautorefname{附录}%
\def\chapterautorefname{章}%
\def\sectionautorefname{节}%
\def\subsectionautorefname{小节}%
\def\subsubsectionautorefname{小小节}%
\def\paragraphautorefname{段落}%
\def\subparagraphautorefname{子段落}%
\def\FancyVerbLineautorefname{行}%
\def\theoremautorefname{定理}%

% 设置公式的编号为短杠形式
\renewcommand\theequation{%
    \thechapter-\arabic{equation}}
% 设置图, 表的编号为短杠形式
\renewcommand\thefigure{\arabic{chapter}-\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}-\arabic{table}}


% 超链接
\RequirePackage[hidelinks, hyperfootnotes=true]{hyperref} % 用于制作超链接

\newcommand\blindcode[1]{\def\@blindcode{#1}}
\newcommand\makeblindpage {
    \begin{titlepage}
        \thispagestyle{empty}
        {
            \songti \zihao{-4} 
            \noindent\makebox[2cm][s]{分类号：}\underline{\makebox[3cm][c]{\@fen}} \hfill \makebox[1.2cm][s]{UDC:}\underline{\makebox[3cm][c]{\@udc}} \\
            \noindent\makebox[2cm][s]{盲审代码：}\underline{\makebox[3cm][c]{\@blindcode}} \hfill \makebox[1.2cm][s]{密级:}\underline{\makebox[3cm][c]{\@mi}}
        }
        \begin{center}
            {\vspace{15pt} \heiti \zihao{-0} 硕\hspace{20pt}士\hspace{20pt}学\hspace{20pt}位\hspace{20pt}论\hspace{20pt}文} \\
            \vspace*{3cm}
            {
                \vspace{10pt}
                \begin{minipage}{13cm} 
                \songti \zihao{2} \bfseries 
                \centering 
                \linespread{1.25}\selectfont 
                \@ctitle 
                \end{minipage}
            }
            \vspace*{5cm}
            \begin{spacing}{2}
                \zihao{-3}\songti
                    \begin{tabular}{cc}
                        \makebox[3cm][s]{学科、专业：}   & \parbox{8cm}{\centering\@cmajor}                                \\ \cline{2-2}
                        \makebox[3cm][s]{研究方向：} & \parbox{8cm}{\centering\@cclass}                                  \\ \cline{2-2}
                        \makebox[3cm][s]{完成日期：} & \parbox{8cm}{\centering\@cdata} \\ \cline{2-2}
                    \end{tabular}
            \end{spacing}
        \end{center}
        \pagebreak[4]
    \end{titlepage}
    \newclearpage
}

\def\makefirstpage{
    \ifdefined\blind
        \makeblindpage
        \makeabstract       % 生成中英文摘要
        \maketableofcontents        % 生成目录
        \makelistoffiguretable % 生成图表目录
    \else
        \makeUndergraduateCover    % 生成封面
        \makedisclaim % 生成不带签名的原创性声明和版权使用授权书
        \makeabstract       % 生成中英文摘要
        \maketableofcontents        % 生成目录
        \makelistoffiguretable % 生成图表目录
    \fi
}

