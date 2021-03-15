#!/bin/bash
pdflatex -interaction=nonstopmode ./main.tex
rm -rf main.aux
rm -rm main.log
