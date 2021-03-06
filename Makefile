# This file is in the public domain.
# Sean Leather, 2010 March 10

#
# REQUIRED TOOLS
#
# * lhs2TeX: http://people.cs.uu.nl/andres/lhs2tex/
#

TARGET := example

#-------------------------------------------------------------------------------

default : $(TARGET).pdf

ghci : $(TARGET).hs
	ghci -v0 $<

clean :
	rm -rf $(TARGET).pdf $(TARGET).tex $(TARGET).hs $(TARGET).aux $(TARGET).log $(TARGET).ptb

#-------------------------------------------------------------------------------

$(TARGET).tex : haskell.fmt
$(TARGET).hs : haskell.fmt

#-------------------------------------------------------------------------------

%.pdf : %.tex
	pdflatex $<

%.tex : %.lhs
	lhs2TeX --poly $< > $@

%.hs : %.lhs
	lhs2TeX --newcode $< > $@

