" Integrated GUI Vim Settings for GVim and Neovim GUI (NVIM-QT / Neovide)
" Customize font by commenting out defaults

" Set to automatically change working directory
set autochdir

" Neovim Settings
if has('nvim')
    if has("linux")
        set guifont=Hack:h12
    endif
    if has("win32")
        set guifont=Consolas:h12:cANSI
    endif
    if exists("g:neovide")
        " Disable Neovide Animations
        let g:neovide_position_animation_length = 0
        let g:neovide_cursor_animation_length = 0.00
        let g:neovide_cursor_trail_size = 0
        let g:neovide_cursor_animate_in_insert_mode = v:false
        let g:neovide_cursor_animate_command_line = v:false
        let g:neovide_scroll_animation_far_lines = 0
        let g:neovide_scroll_animation_length = 0.00
        autocmd VimEnter * colorscheme github_light_default
    else
        colorscheme github_light_default  " Set colorscheme for NVIM-QT
    endif
" GVim Settings
elseif has("gui_running")
    colorscheme zellner
    set guioptions -=T  " Disables the toolbar
    au GUIEnter * simalt ~x " Enters GVim Maximized
    if has("gui_gtk2") || has("gui_gtk3")
       set guifont=Hack\ 12 
    elseif has("gui_win32")
        set backspace=indent,eol,start " Keys correction in Windows
        set guifont=Consolas:h12:cANSI
    endif
endif
