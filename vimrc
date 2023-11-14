" # Vim and Neovim configuration file.
" # Copyright 2023. Pratik Mullick
" # Released in the public domain.
" # Default Options
" # Save to ~/.vimrc for Linux / Unix; ~/_gvimrc for Windows GVIM, ~/_vimrc for
" # Windows VIM; ~/.config/nvim/init.vim for Neovim, and
" # ~/.config/nvim/ginit.vim for Neovim-Qt after making the
" # necessary changes.

" # Default Options (Vim, NVim, GVim, NVim-Qt)
set exrc
set secure
set encoding=utf-8
syntax on
filetype plugin indent on
set number
set nowrap
highlight Visual cterm=reverse gui=reverse
highlight ColorColumn ctermbg=2
" ## Sets clipboard as unnamed to transmit data between OS and Vim
set clipboard=unnamed
" ## Set splits to the right and bottom always
set splitbelow splitright
" ## Disable backup files
"set viminfo=""
set nobackup
set nowritebackup
set noswapfile
" ## Disable Undo files
set noundofile
" ## Disable bells and pings
set noerrorbells visualbell t_vb=

" # Checks for GUI and sets GUI font and colorscheme (Vim, GVim)
"    " Change colorscheme here according to the one you have downloaded.
"    colorscheme zellner
"    set guioptions -=T  " Disables the toolbar 
"    if has("gui_win32")
"        set backspace=indent,eol,start " Keys correction in Windows.
"        set guifont=Consolas:h12:cANSI
"        au GUIEnter * simalt ~x " Enters GVim Maximized
"    elseif has("gui_gtk2")
"        " Make sure Hack font is installed, or change it to preferred font.
"        set guifont=Hack\ 14
"        autocmd VimEnter * NERDTree
"    elseif has("gui_macvim")
"        " Changing font to Menlo for safety reasons. SF Mono and other fonts
"        " can be installed as well.
"        set guifont=SF\ Mono\ Regular:h18
"    endif
"endif

" # ginit.vim specific. (NVim-Qt)
" ## Enable Mouse
set mouse=a

" ## Set Editor Font
"if exists(':GuiFont')
"    " Use GuiFont! to ignore font errors
"    GuiFont {font_name}:h{size}
"endif
"
"" ## Disable GUI Tabline
"if exists(':GuiTabline')
"    GuiTabline 0
"endif
"
"" ## Disable GUI Popupmenu
"if exists(':GuiPopupmenu')
"    GuiPopupmenu 0
"endif
"
"" ## Enable GUI ScrollBar
"if exists(':GuiScrollBar')
"    GuiScrollBar 1
"endif

" Right Click Context Menu (Copy-Cut-Paste)
"nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
"inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
"xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
"snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv

" # FileType Options (Vim, GVim, NVim, NVim-Qt)
augroup my_files
    " ## Plaintext
    autocmd FileType text setlocal autoindent noexpandtab |
        \ setlocal tabstop=8 softtabstop=8 shiftwidth=8 cc=80 tw=79 |
        \ setlocal spell spelllang=en_gb nonumber
    " ## Markdown
    autocmd FileType markdown setlocal autoindent expandtab |
        \ setlocal tabstop=4 softtabstop=4 shiftwidth=4 tw=79 |
        \ setlocal nonumber
    " ## TeX and LaTeX (Set spelllang according to document)
    autocmd FileType tex setlocal nonumber autoindent expandtab |
        \ setlocal tabstop=2 shiftwidth=2 cc=80 tw=79 |
        \ setlocal spell nonumber |
        \ let g:tex_flavor='latex' 
    " ## Python
    autocmd FileType python setlocal autoindent expandtab |
        \ setlocal softtabstop=4 shiftwidth=4 cc=120 |
        \ syn keyword pythonSelf self |
        \ highlight def link pythonSelf Special
   " ## CSS
    autocmd FileType css setlocal autoindent noexpandtab |
        \ setlocal tabstop=2 softtabstop=2 shiftwidth=2
    " ## C / C++
    autocmd FileType c,cpp,h setlocal autoindent noexpandtab |
        \ setlocal tabstop=4 shiftwidth=4 cc=80
    " ## JavaScript
    autocmd FileType javascript,javascriptreact setlocal autoindent expandtab |
        \ setlocal tabstop=4 softtabstop=4 shiftwidth=4 cc=80 |
        \ syn keyword javaScriptOf of |
        \ highlight def link javaScriptOf Repeat
    " ## HTML
    autocmd FileType html setlocal autoindent noexpandtab |
        \ setlocal tabstop=4 softtabstop=4 shiftwidth=4
    " ## XML
    autocmd FileType xml setlocal autoindent noexpandtab |
        \setlocal tabstop=4 softtabstop=4 shiftwidth=4
    " ## Shell/Vim Config
    autocmd FileType vim,sh setlocal autoindent expandtab |
        \ setlocal softtabstop=4 shiftwidth=4
augroup END

