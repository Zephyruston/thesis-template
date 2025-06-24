# 珠海科技学院毕业论文 LaTeX 模板

🚧 Still WIP.(想一起维护参见[roadmap](roadmap.md))

本项目为珠海科技学院本科毕业论文的 LaTeX 模板，适用于 Overleaf 或本地 XeLaTeX 编译。

## 目录结构说明

```
.
├── main.tex                # 主文件
├── README.md               # 项目说明文档
├── sections/
│   ├── abstract.tex        # 中文摘要
│   ├── abstract-en.tex     # 英文摘要
│   ├── chapter1.tex        # 绪论
│   ├── chapter2.tex        # 关键技术研究
│   ├── chapter3.tex        # 需求分析
│   ├── chapter4.tex        # 设计与实现
│   ├── chapter5.tex        # 部署与测试
│   ├── chapter6.tex        # 总结与展望
│   └── thanks.tex          # 致谢
├── ref.bib                 # 参考文献
├── gb7714-2015.bbx         # 国标7714-2015参考文献样式
├── gb7714-2015.cbx         # 国标7714-2015参考文献样式
├── fig/                    # 插图资源
└── zcst.cls (可选封装模板)
```

## 使用说明

1. 使用 XeLaTeX 进行编译（Overleaf 推荐）
2. 修改 main.tex 中的封面信息（学院、姓名等）
3. 填写各章节内容
4. 在 ref.bib 中添加参考文献条目

## 编译注意事项

- 使用 XeLaTeX 保证中文兼容
- 使用 `\cite{}` 引用文献，并通过 BibTeX 自动生成参考文献

## 贡献

欢迎提交 Issue 和 Pull Request 来改进这个项目。

## 许可证

MIT License
