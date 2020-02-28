PAPER_DIR = paper
TALK_DIR = talk
SCRIPTS_WD = scripts

all: pipe talk paper

paper: $(PAPER_DIR)/paper.pdf
$(PAPER_DIR)/paper.pdf: $(PAPER_DIR)/paper.md
	@echo "paper"
	cd $(PAPER_DIR); pandoc header.yaml paper.md \
                     -o paper.pdf \
                     --filter=pandoc-citeproc --pdf-engine=lualatex

talk: $(TALK_DIR)/talk.pdf
$(TALK_DIR)/talk.pdf: $(TALK_DIR)/talk.tex
	@echo "build talk/slides"
	cd $(TALK_DIR); touch talk.pdf
	
pipe: 
	@echo "pipe"
	cd $(SCRIPTS_WD); $(MAKE)
	
