# +-----------------------------------------------------------------------------
# | File: Makefile
# | Author: huxuan
# | E-mail: i(at)huxuan.org
# | Created: 2012-12-18
# | Last modified: 2020-04-16
# | Description:
# |     Makefile for resumecls examples
# |
# | Copyrgiht (c) 2012-2020 by huxuan. All rights reserved.
# +-----------------------------------------------------------------------------

.PHONY: resume resume-zh resume-en clean depclean

RESUME=resume
RESUMEZH=resume-zh
RESUMEEN=resume-en

# resume

resume: resume-zh resume-en

# resume-zh

resume-zh: $(RESUMEZH).pdf

$(RESUMEZH).pdf: $(RESUMEZH).tex $(RESUMEZH).bbl
	xelatex $(RESUMEZH).tex
	xelatex $(RESUMEZH).tex

$(RESUMEZH).bbl: $(RESUME).bib
	xelatex $(RESUMEZH).tex
	-bibtex $(RESUMEZH)

# resume-en

resume-en: $(RESUMEEN).pdf

$(RESUMEEN).pdf: $(RESUMEEN).tex $(RESUMEEN).bbl
	xelatex $(RESUMEEN).tex
	xelatex $(RESUMEEN).tex

$(RESUMEEN).bbl: $(RESUME).bib
	xelatex $(RESUMEEN).tex
	-bibtex $(RESUMEEN)

# clean & depclean

clean:
	-@rm -f \
		*~ \
		*.aux \
		*.bbl \
		*.blg \
		*.log \
		*.out

depclean: clean
	-@rm -f \
		*.pdf
