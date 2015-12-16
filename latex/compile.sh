#!/bin/bash

DOC_NAME="${1%.tex}"
pdflatex "$1"
makeindex "${DOC_NAME}.glo" -s "${DOC_NAME}.ist" -t "${DOC_NAME}.glg" -o "${DOC_NAME}.gls"
bibtex "$DOC_NAME"
pdflatex "$1"
