require('lualine').setup {
    options = {
    icons_enabled = true,
    theme = 'onelight',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    -- always_divide_middle = false;
    -- color = {fg = '#ffaa88', bg = 'grey'},
    },

    sections = {
        lualine_a = {
            'mode',
        },
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {
            {
                'filename',
                -- color = {fg = '#ffaa88', bg = 'grey'},
            }
        },
        lualine_x = {
            {
                'filetype',
                -- color = {fg = '#ffaa88', bg = 'grey'},
            }
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
}
