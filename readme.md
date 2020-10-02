# Project Template #

This repository contains a template for my projects.  


## Folder Structure ##
- `scripts`: Scripts that conduct the analysis pipeline, from data collection (if appropriate) through cleaning to analysis

- `data`: Data files, both raw data and intermediate data files created by the pipeline scripts

- `plots`: Plots and other figures created by the pipeline scripts
	- Alternative: `output` if the project creates several tables or other outputs

- `R`: R files containing utility functions used repeatedly in the analysis pipeline
	- Load in scripts using `devtools::load_all('..')`
	- Requires valid `DESCRIPTION`

- `paper`: Files used to generate the paper
	- `paper.md` containing the paper body
		- Alternative: `paper.Rmd` for an Rmarkdown version
	- `header.yaml` containing some nice typesetting
	- `bib` file should be placed in the top level, for use by both paper and talk
	- The project makefile should copy/rename figures from `plots` to `paper`

- `talk`: Files used to generate the talk/slides
	

## File Naming ##
Files in `scripts`, `data`, and `plots` should generally use a sequential naming convention:  

- Scripts in `scripts` should have filenames starting with `01_`:
	- `01_scrape.R`
	- `02_parse.R`
	- `03_eda.R`, and so on
	
- Data and plot files (`data` and `plots`) should use a parallel naming convention:  
	- `00_` indicates raw data (produced or gathered outside of the pipeline in `scripts`)
	- `01_` indicates plots and intermediate data files produced by script number `01`, and so on
	

## Infrastructure Files ##
- `Makefile` should include the following targets: 
	- `all`: pipe, talk, and paper
	- `pipe`: `make` the analysis pipeline
	- `clean`: clean intermediate files from `data` and `plots`
	
- `DESCRIPTION`: Required for the minimal valid package structure expected by `devtools::load_all()`
	- See <http://www.hep.by/gnu/r-patched/r-exts/R-exts_4.html>
