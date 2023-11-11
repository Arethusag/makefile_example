# vim modeline
# vim: tabstop=4

# this makefile composes the R scripts and then builds the latex document

# R scripts
MODEL_SCRIPT = ./create_reg.R
PLOT_SCRIPT = ./create_plot.R
TABLE_SCRIPT = ./create_tab.R

MODEL_OUTPUT = ./reg.Rdata
PLOT_OUTPUT = ./cars.png
TABLE_OUTPUT = ./reg.tex

# latex document
LATEX_DOC = ./create_doc.tex
LATEX_OUTPUT = ./create_doc.pdf

# first makes the R scripts
# then builds the latex document

all: $(LATEX_OUTPUT)

$(LATEX_OUTPUT): $(MODEL_OUTPUT) $(PLOT_OUTPUT) $(TABLE_OUTPUT) $(LATEX_DOC)
	pdflatex $(LATEX_DOC)

$(MODEL_OUTPUT): $(MODEL_SCRIPT)
	Rscript $(MODEL_SCRIPT)

$(PLOT_OUTPUT): $(PLOT_SCRIPT)
	Rscript $(PLOT_SCRIPT)

$(TABLE_OUTPUT): $(TABLE_SCRIPT) $(MODEL_OUTPUT)
	Rscript $(TABLE_SCRIPT)

clean:
	rm -f $(MODEL_OUTPUT) $(PLOT_OUTPUT) $(TABLE_OUTPUT) $(LATEX_OUTPUT)

.PHONY: all clean


