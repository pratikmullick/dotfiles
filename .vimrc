" Basic Options
syntax on
set number
set nowrap
colorscheme desert
highlight Visual cterm=reverse
highlight ColorColumn ctermbg=4
filetype plugin indent on

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
    colorscheme blandon
    set guioptions -=T  "Disables the toolbar
    set backspace=indent,eol,start
    if g:os == "Windows"
        set guifont=Consolas:h14:cANSI 
    elseif g:os == "Linux"
<<<<<<< HEAD
        set guifont=Fira\ Code\ 12
=======
        set guifont=Hack\ 12
>>>>>>> ed7f951f76ac32561d815560676e0e19d91e4462
    endif
end

" FileType Options
augroup my_files
    autocmd!
    " Plaintext
    autocmd FileType text setlocal autoindent noexpandtab |
        \ setlocal tabstop=8 softtabstop=8 shiftwidth=8 cc=80 |
        \ setlocal spell spelllang=en_us nonumber
    " Python
    autocmd FileType python setlocal autoindent expandtab |
        \ setlocal softtabstop=4 shiftwidth=4 cc=120 |
        \ syn keyword pythonSelf self |
        \ highlight def link pythonSelf Special
    " HTML
    autocmd FileType xml,html setlocal autoindent noexpandtab |
        \ setlocal tabstop=2 softtabstop=2 shiftwidth=2 |
        \ setlocal nonumber
    " C / C++
    autocmd FileType c,cpp,h setlocal autoindent noexpandtab |
        \ setlocal tabstop=2 softtabstop=2 shiftwidth=2 cc=80
    " JavaScript
    autocmd FileType javascript setlocal autoindent expandtab |
        \ setlocal tabstop=2 softtabstop=2 shiftwidth=2 cc=80
    " Shell/Vim Config
    autocmd FileType vim,sh setlocal autoindent expandtab |
        \ setlocal softtabstop=4 shiftwidth=4 cc=80
augroup END

