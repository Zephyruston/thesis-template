# Makefile 用于在 Windows 上编译 LaTeX 论文项目。
# Windows 需要用 mingw32-make.exe

# --- 变量定义 ---

# TeX 编译器。使用 xelatex，因为它支持通过 ctex 宏包处理中文。
XELATEX = xelatex

# 参考文献工具。这里使用 bibtex。
BIBTEX = bibtex

# 主 LaTeX 源文件
TEX_SOURCE = main.tex

# 输出的 PDF 文件
PDF_TARGET = main.pdf

# 查找 sections 目录中的所有 .tex 文件，作为依赖项
TEX_SECTIONS = $(wildcard sections/*.tex)

# --- 目标规则 ---

# 默认目标：生成 PDF 文件。
# 在终端中只需输入 'make' 即可运行。
all: $(PDF_TARGET)

# 生成 PDF 的规则。
# 运行 xelatex -> bibtex -> xelatex -> xelatex 以解决所有引用。
$(PDF_TARGET): $(TEX_SOURCE) $(TEX_SECTIONS) ref.bib
	@echo "Running xelatex first pass..."
	$(XELATEX) $(TEX_SOURCE)
	@echo "Running bibtex to process references..."
	$(BIBTEX) main
	@echo "Running xelatex second pass..."
	$(XELATEX) $(TEX_SOURCE)
	@echo "Running xelatex final pass..."
	$(XELATEX) $(TEX_SOURCE)

# 使用 latexmk 的替代目标，提供更稳健的构建。
# latexmk 会自动运行编译器所需的次数。(需要perl环境)
# 要使用此目标，需要安装 latexmk（例如，MiKTeX/TeX Live 中自带）。
# 在终端中输入 'make latexmk' 即可运行。
latexmk:
	latexmk -pdf -xelatex $(TEX_SOURCE)

# 清理临时文件和输出文件。
# 在终端中输入 'make clean' 即可运行。
clean:
	-del *.aux *.log *.bbl *.blg *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz
	-del $(PDF_TARGET)

.PHONY: all latexmk clean