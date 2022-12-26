local g   = vim.g

g.tokyonight_style = "storm"
g.catppuccin_flavour = 'latte'

require('catppuccin').setup {
    color_overrides = {
        latte = {
            base     = "#f5f3f0";
            text     = "#18181A";

            surface2 = "#38393d";
            surface1 = "#9699a3";
            overlay0 = "#acb0be";

            lavender = "#5b6cca";
        },
    },
    transparent_background = false;
}

g.aquarium_style = "light"

-- Colorscheme election
vim.cmd('colorscheme catppuccin')
