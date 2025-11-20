return {
    'nvim-lualine/lualine.nvim',
    enabled = true,
    opts = {
        options = {
            icons_enabled = false,
            --theme = 'ayu',
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
            disabled_filetypes = {
                statusline = {},
                winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            always_show_tabline = true,
            globalstatus = false,
            refresh = {
                statusline = 100,
                tabline = 100,
                winbar = 100,
            }
        },
        sections = {
            lualine_a = { { 'mode', fmt = function(str) return str:sub(1,1) end } },
            lualine_b = { 'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { 'filetype', 'branch' },
            lualine_y = { },
            lualine_z = {}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename' },
            lualine_x = { 'location' },
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
    }
}
