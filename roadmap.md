# RoadMap

## Latex 环境配置

- [miktex](https://miktex.org/)
- [pandoc](https://github.com/jgm/pandoc)

## TODO

大部分是 **GPT 生成**, 仍需编译, review 和修改

### 一、前期分析（理解 Word 模板结构）

- [ ] 打开 `.docx` 模板，列出需要转换的部分（封面、目录、摘要、正文、参考文献等）
- [ ] 整理样式参数（字体、字号、行距、段距、页边距、标题格式）
- [ ] 分析图表样式（图片、表格、标题、编号）
- [ ] 分析参考文献样式（格式、引用规则）
- [ ] 分析页眉、页脚、页码设置

### 二、LaTeX 框架搭建

- [x] 创建项目结构（main.tex、sections、fig、ref.bib 等）
- [x] 设置基础文档类、字体和行距（`\documentclass`, `fontspec`, `setspace`）
- [x] 配置页边距和版式（`geometry` 包）
- [x] 配置页眉页脚样式（`fancyhdr` 包）
- [x] 设置标题样式（`titlesec` 包）

### 三、各部分内容实现

- [x] 封面页面（用 `titlepage` 环境或自定义命令）
- [ ] 摘要、关键词模块（中英文可分开）
- [x] 目录（`\tableofcontents` 配合 `\section` 等标题）
- [ ] 正文段落排版（段首缩进、段距、行距）
- [ ] 图表样式（`\includegraphics` + `caption` 设置）
- [ ] 公式排版环境（`\begin{equation}`）
- [x] 引用/参考文献使用（`biblatex` 或 `natbib`）

### 四、内容迁移与自动化

- [ ] 用 `pandoc` 把 `.docx` 内容转换为 `.tex`（初始版本）
- [ ] 提取并整理 `.docx` 中的图表、图注到 `fig/` 目录
- [ ] 把 `docx` 正文分块写入 `sections/*.tex`

### 五、测试与微调

- [ ] 编译完整文档（推荐用 XeLaTeX）
- [ ] 比对 `.docx` 与 LaTeX 效果，调整样式差异
- [ ] 验证参考文献格式、引用能正常工作
- [ ] 验证封面页、页码、页眉页脚是否一致
- [ ] 微调各部分样式细节（标题间距、图表编号、字体）
