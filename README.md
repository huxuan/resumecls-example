# resumecls-example

Examples to typeset resume both in Chinese and English with resumecls.

## Preview

An online version for preview is available on [overleaf](https://www.overleaf.com/read/yrtmzwhtzwtz).

## Workflow

```shell
git clone git://github.com/huxuan/resumecls-example.git
cd resumecls-example
# Modify resume-en.tex resume-en.tex resume.bib (bib is optional).
# Compile via Makefile or LaTeX command (More info below).
```

## Compile

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
