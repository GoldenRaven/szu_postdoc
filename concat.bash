#!/bin/bash
xelatex main.tex
pdftk main.pdf cat 1-23 output main_23.pdf
pdftk main.pdf cat 26-27 output main_26.pdf
pdftk main_23.pdf ML.pdf output main_ML.pdf
pdftk main.pdf cat 24 output main_24.pdf
pdftk main_ML.pdf main_24.pdf output main_DL.pdf
pdftk main_DL.pdf neurons.pdf output main_DL2.pdf
pdftk main_DL2.pdf FC.pdf output main_FC.pdf
pdftk main.pdf cat 25 output main_25.pdf
pdftk main_FC.pdf main_25.pdf output main_f.pdf
pdftk main_f.pdf main_26.pdf output main_final.pdf
