packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1}                              " bootstrap
Jetpack 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Jetpack 'rbtnn/vim-ambiwidth'                                       " ambiwidth patch
Jetpack 'easymotion/vim-easymotion'                                 " easy motion
Jetpack 'nvim-lualine/lualine.nvim'                                 " status line
Jetpack 'junegunn/vim-easy-align'                                   " align
Jetpack 'matn/emmet-vim'                                            " emmet
Jetpack 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Jetpack 'cocopon/iceberg.vim'                                       " colorscheme
Jetpack 'markonm/traces.vim'                                        " regex preview
Jetpack 'skanehira/translate.vim'                                   " Google translate
Jetpack 'kkharji/sqlite.lua'                                        " SQLite LuaJIT
Jetpack 'tpope/vim-fugitive'                                        " git
Jetpack 'akinsho/bufferline.nvim', {'tag': 'v3.0.0'}                " buffer / tab
Jetpack 'cohama/lexima.vim'                                         " complete kakko
Jetpack 'tversteeg/registers.nvim'                                  " register list
Jetpack 'mg979/vim-visual-multi'                                    " multi select
Jetpack 'dag/vim-fish'                                              " highlight fish
Jetpack 'nathanaelkane/vim-indent-guides'                           " indent guide
" LSP
Jetpack 'neovim/nvim-lspconfig'
Jetpack 'williamboman/mason.nvim'
Jetpack 'williamboman/mason-lspconfig.nvim'
Jetpack 'hrsh7th/nvim-cmp'
Jetpack 'hrsh7th/cmp-nvim-lsp'
Jetpack 'hrsh7th/cmp-buffer'
Jetpack 'hrsh7th/cmp-path'
Jetpack 'hrsh7th/cmp-cmdline'
Jetpack 'hrsh7th/vim-vsnip'
Jetpack 'onsails/lspkind-nvim'
Jetpack 'Maan2003/lsp_lines.nvim'
" telescope
Jetpack 'nvim-lua/plenary.nvim'
Jetpack 'norcalli/snippets.nvim'
Jetpack 'nvim-telescope/telescope.nvim'
Jetpack 'nvim-telescope/telescope-frecency.nvim'
Jetpack 'nvim-telescope/telescope-snippets.nvim'
Jetpack 'nvim-tree/nvim-web-devicons'
Jetpack 'nvim-zh/colorful-winsep.nvim'
Jetpack 'BurntSushi/ripgrep'
Jetpack 'sharkdp/fd'
Jetpack 'nvim-tree/nvim-tree.lua'
call jetpack#end()

runtime init/jetpack-settings.vim
runtime init/jetpack-keymap.vim

