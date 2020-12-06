" Default Options
set encoding=utf-8
syntax on
filetype plugin indent on
set number
set nowrap
highlight Visual cterm=reverse gui=reverse
highlight ColorColumn ctermbg=2

" Set splits to the right and bottom always
set splitbelow splitright

" Disable backup files
set nobackup
set nowritebackup
set noswapfile

" Disable Undo files
set noundofile

" Disable bells and pings
set noerrorbells visualbell t_vb=

" Toggles NERDTree Window
nmap <silent> <F3> :NERDTreeToggle<CR>

" Checks for Operating System
if !exists("g:os")
    if has("win64") || has("win32")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

" Checks for GUI and sets GUI font and colorscheme
if has("gui_running")
    " Change colorscheme here according to the one you have downloaded.
    colorscheme zellner
    set guioptions -=T  " Disables the toolbar 
    if g:os == "Windows"
        set backspace=indent,eol,start " Keys correction in Windows.
        set guifont=Consolas:h12:cANSI
        au GUIEnter * simalt ~x " Enters GVim Maximized
    elseif g:os == "Linux"
        " Make sure Hack font is installed, or change it to preferred font.
        set guifont=Hack\ 14
        autocmd VimEnter * NERDTree 
    endif
endif


" FileType Options
augroup my_files
    " Plaintext
    autocmd FileType text setlocal autoindent noexpandtab |
        \ setlocal tabstop=8 softtabstop=8 shiftwidth=8 cc=80 tw=79 |
        \ setlocal spell spelllang=en_gb nonumber
    " Markdown
    autocmd FileType markdown setlocal autoindent expandtab |
        \ setlocal tabstop=4 softtabstop=4 shiftwidth=4 |
        \ setlocal spell spelllang=en_us nonumber
    " TeX and LaTeX (Set spelllang according to document)
    autocmd FileType tex setlocal autoindent expandtab |
        \ setlocal tabstop=2 shiftwidth=2 cc=80 tw=79 |
        \ setlocal spell 
    " Python
    autocmd FileType python setlocal autoindent expandtab |
        \ setlocal softtabstop=4 shiftwidth=4 cc=120 |
        \ syn keyword pythonSelf self |
        \ highlight def link pythonSelf Special
   " CSS
    autocmd FileType css setlocal autoindent noexpandtab |
        \ setlocal tabstop=2 softtabstop=2 shiftwidth=2
    " C / C++
    autocmd FileType c,cpp,h setlocal autoindent noexpandtab |
        \ setlocal tabstop=4 shiftwidth=4 cc=80
    " JavaScript
    autocmd FileType javascript setlocal autoindent expandtab |
        \ setlocal tabstop=4 softtabstop=4 shiftwidth=4 cc=80 |
        \ syn keyword javaScriptOf of |
        \ highlight def link javaScriptOf Repeat
    " Shell/Vim Config
    autocmd FileType vim,sh setlocal autoindent expandtab |
        \ setlocal softtabstop=4 shiftwidth=4
augroup END

