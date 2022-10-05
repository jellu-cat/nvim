local lsp = require ('lspconfig')
-- local completion = require ('completion')

-- npm
lsp.pyright.setup{}

-- clang-tools-extra
lsp.clangd.setup{}

-- in fedora, compile texlab (cargo install -path .)
lsp.texlab.setup{}
