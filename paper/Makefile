all: html

bibfile := ../bibfile.yaml

html: paper.html
paper.html: paper.qmd # $(bibfile)
	quarto render paper.qmd --to html
	
pdf: paper.pdf
paper.pdf: paper.qmd # $(bibfile)
	quarto render paper.qmd --to pdf
	
docx: paper.docx
paper.docx: paper.qmd # $(bibfile)
	quarto render paper.qmd --to docx

.PHONY: clean
clean:
	rm -f *.pdf *.docx *.html
	rm -dr paper_files/