augroup filetypedetect
    autocmd BufRead,BufNewFile *.wiki setfiletype wikimedia
    autocmd BufRead,BufNewFile *.wikimedia.org* setfiletype wikimedia
augroup END
