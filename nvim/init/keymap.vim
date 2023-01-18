" -------------------- "
" Keymap"
" -------------------- "

inoremap jj                 <ESC>:<C-u>w<CR>
inoremap っj                <ESC>:<C-u>w<CR>
nnoremap <silent><ESC><ESC> :<C-u>noh<CR>
nnoremap U                  <c-r>
nnoremap s                  <Nop>
nnoremap s-                 :<C-u>split<CR>
nnoremap s\                 :<C-u>vsplit<CR>
nnoremap sn                 <cmd>bnext<CR>
nnoremap sp                 <cmd>bprev<CR>
nnoremap sh                 <C-w>h
nnoremap sj                 <C-w>j
nnoremap sk                 <C-w>k
nnoremap sl                 <C-w>l
nnoremap sc                 :<C-u>clo
nnoremap <Leader>h          0
nnoremap <Leader>l          $
vnoremap <Leader>h          0
vnoremap <Leader>l          $
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" ToggleWindowSize
nnoremap sm :<C-u>call ToggleWindowSize()<CR>
" ToggleBgOpacity
nnoremap sb :<C-u>call ToggleBgOpacity()<CR>

" EasyAligin
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

