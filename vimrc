" Default Options
set encoding=utf-8
syntax on
filetype plugin indent on
set number
set nowrap
highlight Visual cterm=reverse gui=reverse
highlight ColorColumn ctermbg=2

" Sets clipboard as unnamed to transmit data between OS and Vim
set clipboard=unnamed

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

" Plugins. Section to be disabled until vim-plug is installed using:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Plugins will be downloaded under the specified directory.
"
" call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" Python
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"
" JavaScript, TypeScript and React
" Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
" Plug 'maxmellon/vim-jsx-pretty'
"
" LaTeX
" Plug 'lervag/vimtex'
"
" NerdTree File Browser, Auto-Commenter
" Plug 'preservim/nerdtree'
" Plug 'tpope/vim-commentary'
"
" call plug#end()

" Checks for GUI and sets GUI font and colorscheme
if has("gui_running")
    " Change colorscheme here according to the one you have downloaded.
    colorscheme zellner
    set guioptions -=T  " Disables the toolbar 
    if has("gui_win32")
        set backspace=indent,eol,start " Keys correction in Windows.
        set guifont=Consolas:h12:cANSI
        au GUIEnter * simalt ~x " Enters GVim Maximized
    elseif has("gui_gtk2")
        " Make sure Hack font is installed, or change it to preferred font.
        set guifont=Hack\ 14
        autocmd VimEnter * NERDTree
    elseif has("gui_macvim")
        " Changing font to Menlo for safety reasons. SF Mono and other fonts
        " can be installed as well.
        set guifont=SF\ Mono\ Regular:h18
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
        \ setlocal tabstop=4 softtabstop=4 shiftwidth=4 tw=79 |
        \ setlocal spell spelllang=en_us nonumber
    " TeX and LaTeX (Set spelllang according to document)
    autocmd FileType tex setlocal nonumber autoindent expandtab |
        \ setlocal tabstop=2 shiftwidth=2 cc=80 tw=79 |
        \ setlocal spell nonumber
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

