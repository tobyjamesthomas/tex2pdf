# tex2pdf for cs240
A simple script that compiles LaTeX with `pdflatex` and copies the resulting PDF to your `~/public_html`, so that it can be viewed in a browser at:
```
https://www.student.cs.uwaterloo.ca/~[uwserid]/cs240/[file].pdf
```

Add [tex2pdf.vim](./tex2pdf.vim) to your `~/.vimrc` and Vim will run this script automatically every time you save a .tex file.

Useful if you want to write LaTeX in the student environment and not rely on third-party apps to preview them.

**Important:** Follow the steps below, specifically 5 and 6, to ensure that your files are password protected.

## Set up
1. Login to the student environment: `ssh [uwserid]@linux.student.cs.uwaterloo.ca`
2. Create a `~/scripts` folder in your home directory and copy [tex2pdf.sh](./tex2pdf.sh) into it.
3. Define an alias `tex2pdf` in your `~/.bashrc`: `alias tex2pdf='~/scripts/tex2pdf.sh'`
4. Add the contents of [tex2pdf.vim](./tex2pdf.vim) to your `~/.vimrc`.
5. Create a `cs240/` folder in your `~/public_html/` and add an [.htaccess](./.htaccess) file in it to password protect your assignments. Change `[uwserid]` to your username.
6. Generate a `.htpasswd` file using [http://www.htaccesstools.com/htpasswd-generator/](http://www.htaccesstools.com/htpasswd-generator/) and place it in your home directory. This will be your login username and password to view your cs240 folder online.

## Usage
### From command line
In the same folder as your LaTeX file, run:
```bash
tex2pdf file # Without .tex
```
Outputs `file.pdf` in the same folder and in `~/public_html/cs240`, with log files added to a `./extra` folder.

### Vim
Save a file how you normally would and Vim will run tex2pdf automatically.

Or, you can disable the autocmd and run tex2pdf manually in Vim by commenting out [line 4](https://github.com/tobyjamesthomas/tex2pdf/blob/27afde7f2589458ff9c0f34bd8c6e89aa9a17ca3/tex2pdf.vim#L4) and using the command `:Tex2pdf`.

## That's it!

Now you can preview your LaTeX files when working in the student environment at:
```
https://www.student.cs.uwaterloo.ca/~[uwserid]/cs240/[file].pdf
```

## Notes:
- Feel free to copy / modify this code, however, use at your own risk
- Let me know if you have any thoughts or questions :)
