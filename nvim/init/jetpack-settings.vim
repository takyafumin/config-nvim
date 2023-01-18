lua <<EOF
require('telescope').setup{
    defaults = {
    },
    pickers = {
        find_files = {
            theme = "dropdown",
        }
    },
    extensions = {
    }
}
require('telescope').load_extension('frecency')
require('telescope').load_extension('snippets')
--require('noice').setup()
--require('notify').setup({background_colour = "#000000",})


-- lualine
require('lualine').setup {
    options = {
        theme = 'solarized_dark',
        globalstatus = true,
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
    },
}


-- buffer line
require("bufferline").setup {
    options = {
        diagnostics = 'nvim_lsp',
        custom_filter = function(buf_number)
            if not not vim.api.nvim_buf_get_name(buf_number):find(vim.fn.getcwd(), 0, true) then
                return true
            end
        end
    },
    highlights = {buffer_selected = {bold = true, italic = false,}}
}

require('lsp_lines').setup()
require('registers').setup()

-- nvim tree
require('nvim-tree').setup {
    view = {
        width = 50,
    }
}


-- LSP
my_on_attach = function(client, bufnr)
-- LSPサーバーのフォーマット機能を無効にするには下の行をコメントアウト
-- 例えばtypescript-language-serverにはコードのフォーマット機能が付いているが代わりにprettierでフォーマットしたいときなど
-- client.resolved_capabilities.document_formatting = false
end
my_capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)
require("mason").setup()
require("mason-lspconfig").setup_handlers({
    function(server)
        require('lspconfig')[server].setup{
            on_attach    = my_on_attach,
            capabilities = my_capabilities,
        }
    end
})


-- Setup nvim-cmp.
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<TAB>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-l>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>']  = cmp.mapping.confirm { select = true },
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'treesitter' },
    },
    experimental = {
        ghost_text = true,
    },
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'path' },
        { name = 'cmdline' }
    }
})
EOF

