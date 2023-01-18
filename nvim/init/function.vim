" ------------------------------
" Max/Min pane Toggle
" ------------------------------
let g:toggle_window_size = 0
function! ToggleWindowSize()
    if g:toggle_window_size == 1
        exec "normal \<C-w>="
        let g:toggle_window_size = 0
    else
        :resize
        :vertical resize
        let g:toggle_window_size = 1
    endif
endfunction


" ------------------------------
" Background opacity Toggle
" ------------------------------
let g:toggle_background_opacity = 0
function! ToggleBgOpacity()
    if g:toggle_background_opacity == 0
        let g:toggle_background_opacity = 1
        exec "hi Normal ctermbg=NONE guibg=#NONE"
    else
        exec "hi Normal ctermbg=234 ctermfg=252 guibg=#161821 guifg=#c6c8d1"
        let g:toggle_background_opacity = 0
    endif
endfunction
