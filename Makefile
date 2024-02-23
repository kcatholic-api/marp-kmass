BASENAME=20240217-children-mass
SRC=$(BASENAME).md

all: $(BASENAME).html $(BASENAME).pdf $(BASENAME).pptx


$(BASENAME).html: $(SRC)
	marp $< --html -o $@

$(BASENAME).pdf: $(SRC)
	marp $< --html --pdf --allow-local-files -o $@

$(BASENAME).pptx: $(SRC)
	marp $< --html --pptx --allow-local-files -o $@

clean:
	rm -f *.html *.pdf *.pptx
