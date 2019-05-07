" Add this to your ~/.vimrc

" Comment this out if you don't want to auto run on save
autocmd BufWritePost *.tex :Tex2pdf

" Can run yourself with :Tex2pdf command
command! Tex2pdf call <SID>Tex2pdf()

" Run tex2pdf on current .tex file
" Note - changes Vim pwd to current file's directory
function! s:Tex2pdf()
  " Get current file name
  let l:fileName = split(expand("%:t"), '\.') " 'file.tex' => ['file', 'tex']
  " Exit if not LaTeX file
  if len(l:fileName) < 2 || l:fileName[1] !=? 'tex'
    echoerr "Error: Not a LaTex file"
    return
  endif
  " Move to current directory
  execute("cd %:h")
  " Run 'tex2pdf file' silently, errors caught by pdflatex
  execute("silent !~/scripts/tex2pdf.sh " . l:fileName[0])
  " Refresh screen (in case blank from silent)
  execute("normal \<C-L>")
endfunction
