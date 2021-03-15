#!/bin/bash
cd CVdocker
pdflatex -interaction=nonstopmode ./main.tex
rm -rf main.aux
rm -rf main.log
