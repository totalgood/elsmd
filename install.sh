conda install -c conda-forge pandoc
# make
# /bin/sh: latexmk: command not found
conda install -c conda-forge latexmk
# make
# ===========Latexmk: Missing input file: 'titlesec.sty' from line
sudo tlmgr install titlesec
# make
# ===========Latexmk: Missing input file: 'biblatex-chicago.sty' from line
sudo tlmgr install biblatex-chicago
# make
# ===========Latexmk: Missing input file: 'biblatex.sty' from line
sudo tlmgr install biblatex
# make
# ===========Latexmk: Missing input file: 'logreq.sty' from line
sudo tlmgr install logreq
# make
# ===========Latexmk: Missing input file: 'textpos.sty' from line
sudo tlmgr install textpos
# make
# ===========Latexmk: Missing input file: 'titling.sty' from line
sudo tlmgr install titling
# make
# Latexmk: Non-existent bbl file 'tmp/script-sample.bbl'
#  No file script-sample.bbl.
# Latexmk: Summary of warnings:
#   Latex failed to resolve 2 citation(s)
# Latexmk: Run number 1 of rule 'biber tmp/script-sample'
# sh: biber: command not found
touch scripts/script-sample.bbl
grep -i bib scripts/*
mkdir sources
touch sources/sources.bib
sudo tlmgr install biber
# make all
# Latexmk: Non-existent bbl file 'tmp/introduction-dhds-slides.bbl'
#  No file introduction-dhds-slides.bbl.
# ===========Latexmk: Missing input file: 'introduction-dhds-slides.nav' from line
#   'No file introduction-dhds-slides.nav.'
# Latexmk: Run number 1 of rule 'biber tmp/introduction-dhds-slides'
# Biber warning: [262] Utils.pm:193> WARN - The file 'tmp/introduction-dhds-slides.bcf' does not contain any citations!
# Latexmk: Run number 2 of rule 'pdflatex'
# This is pdfTeX, Version 3.14159265-2.6-1.40.20 (TeX Live 2019) (preloaded format=pdflatex)
#  restricted \write18 enabled.
# entering extended mode
# Biber warning: [262] Utils.pm:193> WARN - The file 'tmp/introduction-dhds-slides.bcf' does not contain any citations!
# Latexmk: Run number 3 of rule 'pdflatex'
# This is pdfTeX, Version 3.14159265-2.6-1.40.20 (TeX Live 2019) (preloaded format=pdflatex)
#  restricted \write18 enabled.
# entering extended mode
# Biber warning: [262] Utils.pm:193> WARN - The file 'tmp/introduction-dhds-slides.bcf' does not contain any citations!
# pdfjam --nup 2x2 --landscape lectures/tmp/introduction-dhds-slides.pdf -o lectures/introduction-dhds-slides.pdf
# make: pdfjam: No such file or directory
# make: *** [lectures/introduction-dhds-slides.pdf] Error 1
cp scripts/script-sample.bbl scripts/introduction-dhds-slides.bbl
sudo tlmgr install pdfjam
make all
