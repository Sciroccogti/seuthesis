#
# Copyright (C) 2007 by Xu Yuan <xuyuan.cn@gmail.com>
# $Id$
#
# This file is part of the SEU-Thesis package project.
# ---------------------------------------------------
#
# This file may be distributed and/or modified under the
# conditions of the LaTeX Project Public License, either version 1.3a
# of this license or (at your option) any later version.
# The latest version of this license is in:
# 
# http://www.latex-project.org/lppl.txt
# 
# and version 1.3a or later is part of all distributions of LaTeX 
# version 2004/10/01 or later.
#

PACKAGE=seuthesis

MAIN=main
MAIN_SRC=${MAIN}.tex ${MAIN}.bib

clean:
	rm -f *.aux *.log *.toc *.ind *.inx *.gls *.glo *.idx *.ilg *.out *.bak *.bbl *.brf *.blg *.dvi *.ps *.gz
clean_all:
	rm -f *.aux *.log *.toc *.ind *.inx *.gls *.glo *.idx *.ilg *.out *.bak *.bbl *.brf *.blg *.dvi *.ps *.gz *.pdf

 main.pdf: ${MAIN_SRC} ${PACKAGE}.cls 
	 xelatex main
	 bibtex main
	 xelatex main
	 xelatex main
