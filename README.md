# tex2pdf for cs240
A simple script that compiles LaTeX with `pdflatex` and copies the resulting PDF to your `~/public_html`, so that it can be seen in a browser at:
```
https://www.student.cs.uwaterloo.ca/~[uwserid]/[file].pdf
```

Add [tex2pdf.vim](./tex2pdf.vim) to your `~/.vimrc` and Vim will automatically run this script every time you save a .tex file!

It's fast and light, and works great if you want to write LaTeX in the student environment and not rely on third-party apps.

**WARNING: this makes your LaTeX file public, so name it something non-obvious when working on assignments.**

## Set up
1. Login to the student environment: `ssh [uwserid]@linux.student.cs.uwaterloo.ca`
2. Create a `~/scripts` folder in your home directory, and copy [tex2pdf.sh](./tex2pdf.sh) into it: `mkdir -p ~/scripts && wget -O ~/scripts/tex2pdf.sh https://raw.githubusercontent.com/tobyjamesthomas/cs240/master/scripts/tex2pdf/tex2pdf.sh`
3. Define an alias `tex2pdf`: `alias tex2pdf='~/scripts/tex2pdf.sh`
4. Add the contents of [tex2pdf.vim](./tex2pdf.vim) to your `~/.vimrc`.

## Usage
### From command line
In the same folder as your LaTeX file, run:
```bash
tex2pdf file # Without .tex
```
Outputs `file.pdf` in the same folder and in `~/public_html`, with log files added to a `./extra` folder.

### Vim
Save a file how you normally would and Vim will run the above automatically.

Alternatively, you can disable the autorun feature and run the script inside Vim manually, by commenting out [line 4](https://github.com/tobyjamesthomas/cs240/blob/4689c6713c50d606f8ca6a1006efc21b220ea7d4/scripts/tex2pdf/tex2pdf.vim#L4) and using the command `:Tex2pdf`.

## That's it!

Now you can preview your LaTeX files when working in the student environment at:
```
https://www.student.cs.uwaterloo.ca/~[uwserid]/[file].pdf
```

Notes:
- **Again, this makes your LaTeX file public, so name it something non-obvious when working on assignments**
- Feel free to copy / modify / share this code
- Let me know if you have any thoughts / questions!
