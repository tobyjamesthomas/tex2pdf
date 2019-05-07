#!/bin/bash

# Runs pdflatex on given LaTeX filename (without .tex)
# Stores log files in ./extra/ folder
# Copies resulting PDF to ~/public_html/, live at:
# https://www.student.cs.uwaterloo.ca/~uwserid/file.pdf

# Exit on error
set -e

# First cd to extra folder
mkdir -p extra
cd extra

# Run pdflatex, convert LaTeX to PDF
pdflatex ./../$1.tex

# Move PDF to back to parent folder
mv $1.pdf ./..
cd ..

# Copy PDF to ~/public_html
cp $1.pdf $HOME/public_html/cs240/$1.pdf

echo -e "____________________________________________________________________\n"
echo "PDF is live at: https://www.student.cs.uwaterloo.ca/~${HOME##*/}/cs240/$1.pdf"
