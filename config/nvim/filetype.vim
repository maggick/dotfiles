" my filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.marp                setfiletype markdown
  "au! BufRead,BufNewFile *.marp                let b:dispatch = 'marp %'
augroup END
