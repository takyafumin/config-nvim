"Find files using Telescope command-line sugar."
nnoremap <C-p>      <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fr <cmd>Telescope oldfiles<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ee <cmd>NvimTreeToggle<cr>
nnoremap <leader>ef <cmd>NvimTreeFindFile<cr>

"補完表示時のEnterで改行をしない"
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
set completeopt=menuone,noinsert
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

"LSP Picker"
nnoremap K          <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap ge         <cmd>lua vim.diagnostic.open_float()<cr>
nnoremap gd         <cmd>lua require'telescope.builtin'.lsp_definitions()<cr>
nnoremap gr         <cmd>lua vim.lsp.buf.references()<cr>
nnoremap gi         <cmd>lua vim.lsp.buf.implementation()<cr>
nnoremap gf         <cmd>lua vim.lsp.buf.format({ async = true })<cr>
nnoremap gc         <cmd>lua vim.lsp.buf.code_action()<cr>
nnoremap go         <cmd>lua require'telescope.builtin'.lsp_document_symbols()<cr>
nnoremap gO         <cmd>lua require'telescope.builtin'.lsp_workspace_symbols()<cr>
nnoremap ga         <cmd>lua require'telescope.builtin'.lsp_code_actions()<cr>


"let g:user_emmet_leader_key='<C-e>'

