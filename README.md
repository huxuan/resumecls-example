# resumecls-example

Examples to typeset resume in both Chinese and English by using resumecls

## Preview

- [resume-en.pdf](https://github.com/huxuan/resumecls-example/blob/master/resume-en.pdf?raw=true)
- [resume-zh.pdf](https://github.com/huxuan/resumecls-example/blob/master/resume-zh.pdf?raw=true)

## Workflow

```shell
git clone git://github.com/huxuan/resumecls-example.git
cd resumecls-example
# Modify resume-en.tex resume-en.tex resume.bib (bib is optional)
# Compile via Makefile or LaTeX command (More info below)
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

- To get English version, replace <resume> with 'resume-en'
- To get Chinese version, replace <resume> with 'resume-zh'
- If no bib info is needed, the first two steps can be passed
