set laststatus=2
set enc=utf-8
set fencs=iso-2022-jp,sjis,euc-jp,utf-8

set ts=4
set sw=4
set hlsearch

set colorcolumn=80
hi LineNr  ctermfg=6
hi CursorLineNr ctermbg=4 ctermfg=0
set formatoptions+=mM
set ignorecase
set cindent

set number
imap <C-j> <C-[>

set statusline=%<%f\ %m%r%h%w
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set statusline+=%=%l/%L,%c%V%8P

if has("autocmd")
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal! g'\"" |
\ endif
endif


:syntax on
