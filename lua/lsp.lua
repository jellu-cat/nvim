local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed{
    'sumneko_lua',
    'rust_analyzer',
    'texlab',
    'clangd',
    'pyright',
}

lsp.set_preferences{
    sign_icons = {}
}

lsp.nvim_workspace()
lsp.setup()

--[[ local cmp_mappings = lsp.defaults.cmp_mappings {
    ['<C-p>'] = map.select_prev_item(cmp_select),
    ['<C-n>'] = map.select_next_item(cmp_select),
    ['<C-y>'] = map.confirm( {select = true} ),
    ['<C-Space>'] = map.complete(),
} ]]

-- local completion = require ('completion')

-- clang-tools-extra

-- in fedora, compile texlab (cargo install -path .)
