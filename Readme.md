# 硕士毕业论文latex模板

## version 1.1 （2025年10月版）
 编译时选择： xe-> bib ->xe -> xe 
- 图片插入 
    ``` 
    \begin{figure}[htbp]
        \centering
        \includegraphics[height=6.54cm]{image/作者信息.png}
        \bicaption{示例图片：数据可视化结果}{Example Figure: Data Visualization Result}
        \label{author}
    \end{figure}
- 表格插入
    ```
    \begin{table}[htbp]
        \centering
        \bicaption{示例图片：数据可视化结果}{Example Figure: Data Visualization Result}
        \begin{tabular}{llll} 
        \arrayrulecolor{black}\hline
            字段名      & 类型   & 长度 & 备注    \\ 
            \arrayrulecolor{black}\hline
            Id       & int  & ~  & 自动增加  \\ 
            \hline
            UserName & Char & 50 & 用户名   \\
            \hline
        \end{tabular}
    \label{table}
    \end{table}
- 公式使用
    ```
    \begin{equation}
    q+q = 2q
    \label{gongshi}
    \end{equation}
公式可通过 \begin\{ equation \}使用，引用可通过\label。

- 参考文献

    参考文献的著录方法采用我国国家标准GB7714-87《文后参考文献著录规则》中规定采用的“顺序编码制”，中外文混编。论文中，引用出处按引用先后顺序用阿拉伯数字和方括号“[]”放在引文结束处最后一个字的右上角作为对参考文献表相应条目的呼应。文后参考文献表中，各条文献按在论文中的文献序号顺序排列。

    参考文献引用，需按顺序引用，可利用交叉引用。其引用的文献，需采用上标字体，具体格式已在本文档做好，选中引用部分。

    参考文献均使用 bibtex 的形式记录在`main.bib`文件中，当需要引用时可使用`\cite`和`\overcite\`两个命令引用，前者为引用符号处于文本基线，后者为上标形式。

- 交叉引用
    本文设置了自动引用命令`\autoref{}`会自动补全“图”、“表”等词，也可使用常用的`\ref{}`命令。

## version 1.2  (2026年5月版)
- 修正页眉问题：奇数页为当前页面的一级标题，偶数页为“温州大学硕士论文”
- 调整图表目录，当前版本图标目录只显示中文的图注
```
    用\newclearpage代替\newpage， 使用\documentclass[print-both-sides]{wzuthesis}时可以获得双面打印版（填充额外空白页以保证每一章开头都在奇数页）