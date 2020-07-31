all: pdf

pdf: paper.odf
paper.pdf: paper.md
	pandoc header.yaml paper.md \
                     -o paper.pdf \
                     --filter=pandoc-citeproc \ 
                     --filter=pandoc-crossref \
                     --pdf-engine=lualatex

docx: paper.docx
paper.docx: paper.md
	pandoc header.yaml paper.md \
                    -o paper.docx \
                    --filter=pandoc-citeproc \
                    --filter=pandoc-crossref

