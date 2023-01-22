local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed {
    'sumneko_lua',
    'rust_analyzer',
    'texlab',
    'clangd',
    'pyright',
}

lsp.set_preferences {
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
}

lsp.setup()

-- Ensures the disgnostics in-line, signs in an additional
-- column and color underline
vim.diagnostic.config {
    virtual_text = true;
    signs = true;
    underline =true;
    float = {
        border = 'single',
        header = 'Diagnostics',
        winhighlight = 'Normal:Normal,FloatBorder:Normal',
        -- side_padding = -1,
        -- style = 'minimal',
    }
}

local cmp = require('cmp')

cmp.setup {
    window = {
        documentation = cmp.config.window.bordered {
            border = 'single',
            side_padding = -1,
            winhighlight = 'Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None',
        }
    }
}

--[[ local cmp_mappings = lsp.defaults.cmp_mappings {
    ['<C-p>'] = map.select_prev_item(cmp_select),
    ['<C-n>'] = map.select_next_item(cmp_select),
    ['<C-y>'] = map.confirm( {select = true} ),
    ['<C-Space>'] = map.complete(),
} ]]

-- Get the languaje server to recognize the 'vim' global
--[[ require('lspconfig').sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}
            }
        }
    }
} ]]
