" # Vim and Neovim configuration file.
" # Copyright 2024-2025. Pratik Mullick.

" DEFAULT OPTIONS **Common for Vim, GVim, and Neovim**
" Run in secure mode with UTF-8 support.
set secure
set encoding=utf-8
" Enable Syntax Hightlighting.
syntax on
" By default, line numbers enabled and wrapping disabled.
set number
set nowrap
" Disable creating of backup and undo files.
set nobackup
set nowritebackup
set noswapfile
set noundofile
" Automatically detect file type.
filetype plugin indent on
" Set highlighting color in both terminal and GUI.
highlight Visual cterm=reverse gui=reverse
" Set word wrap column color.
highlight ColorColumn ctermbg=2
" Set splits to the right and bottom always
set splitbelow splitright
" Disable bells and pings
set noerrorbells visualbell t_vb=
" Detect file changes
set autoread

" # FileType Options
augroup my_files
    " Document Files
    " ## Plaintext, markdown and LaTeX
    autocmd FileType text,markdown,tex setlocal autoindent expandtab |
        \ setlocal tabstop=2 softtabstop=2 shiftwidth=2 cc=80 tw=79 |
        \ setlocal spell nonumber |
        \ let g:tex_flavor='latex'
    " Code Files
    " ## Python
    autocmd FileType python syn keyword pythonSelf self |
        \ highlight def link pythonSelf Special |
        \ setlocal autoindent expandtab tabstop=4 shiftwidth=4
    " ## JavaScript and React
    autocmd FileType javascript,javascriptreact syn keyword javaScriptOf of |
        \ highlight def link javaScriptOf Repeat |
        \ setlocal autoindent expandtab tabstop=4 shiftwidth=4
    " ## HTML and XML
    autocmd FileType html,xml setlocal autoindent expandtab |
        \ setlocal tabstop=4 shiftwidth=4
    " ## CSS
    autocmd FileType css setlocal autoindent expandtab |
        \ setlocal tabstop=4 shiftwidth=4
    " ## C / C++
    autocmd FileType c,cpp,h setlocal autoindent expandtab |
        \ setlocal tabstop=4 shiftwidth=4
    " ## Shell, PowerShell, and Vim Config
    autocmd FileType vim,sh,ps1 setlocal autoindent expandtab |
        \ setlocal softtabstop=4 shiftwidth=4
augroup END

if has('nvim')
    lua require('init')
endif
