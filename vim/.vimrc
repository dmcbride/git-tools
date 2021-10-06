set tabstop=4
set softtabstop=1 expandtab
set smarttab
set smartindent
set shiftwidth=4

" https://stackoverflow.com/questions/49326002/vim-copy-via-regex-and-paste
function! PrepJIRACommit()
   g/On branch \(\S\+\/\)\{-,1}\([A-Z]\{2,}-[0-9]\+\)/exe "co0 | 1s/.*[ \\/]\\([A-Z]\\{2,}-\\d\\+\\).*/\\1: /g"
   normal! $
   startinsert!
endfunction

nmap <F5> :call PrepJIRACommit()<CR>
"
"
