#!/bin/bash

# Runs pdflatex on given LaTeX filename (without .tex)
# Stores log files in ./extra/ folder
# Copies resulting PDF to ~/public_html/cs240, live at:
# https://www.student.cs.uwaterloo.ca/~uwserid/cs240/file.pdf

# Exit on error
set -e

# First create extra folder for logs
mkdir -p extra

# Run pdflatex, convert LaTeX to PDF
pdflatex $1.tex

# Move logs to extra folder
# *.log targets $1.log and texput.log (if error)
mv $1.aux $1.out *.log extra/

# Copy PDF to ~/public_html/cs240/
cp $1.pdf $HOME/public_html/cs240/$1.pdf

# Allow read permissions for all groups
chmod a+r $HOME/public_html/cs240/$1.pdf

echo -e "____________________________________________________________________\n"
echo "PDF is live at: https://www.student.cs.uwaterloo.ca/~${HOME##*/}/cs240/$1.pdf"
