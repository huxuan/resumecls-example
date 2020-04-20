# resumecls-example

Examples to typeset resume both in Chinese and English with [resumecls](https://ctan.org/pkg/resumecls).

## Online Preview & Edit (with Overleaf Template)

An overleaf template is available [here](https://www.overleaf.com/latex/templates/resumecls-example/xncvhkjgyjvf) for preview.

You can also edit it directly on the overleaf.

## Offline Usage

```shell
git clone git://github.com/huxuan/resumecls-example.git
cd resumecls-example
# Modify resume-en.tex resume-en.tex resume.bib (bib is optional).
# Compile via Makefile or LaTeX commands (More info below).
```

## Offline Compile

### Makefile

```shell
make resume # get both resume-en.pdf & resume-zh.pdf
make resume-en # get resume-en.pdf
make resume-zh # get resume-zh.pdf
```

### LaTeX

```shell
xelatex <resume>.tex
bibtex  <resume>
xelatex <resume>.tex
xelatex <resume>.tex
```

Notes:

- To get the English version, replace `<resume>` with 'resume-en'.
- To get the Chinese version, replace `<resume>` with 'resume-zh'.
- If no bib info is needed, the first two steps can be skipped.
