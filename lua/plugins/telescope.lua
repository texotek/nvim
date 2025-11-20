return {
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release', },
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'andrew-george/telescope-themes',
    },
    config = function()
        require('telescope').setup {
            defaults = {
                file_ignore_patterns = {
                    "node_modules",
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,                   -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true,    -- override the file sorter
                    case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                },
            },
            pickers = {
                find_files = {
                    theme = "dropdown",
                    previewer = false,
                    no_ignore_parent = true,
                }
            }
        }
        require('telescope').load_extension('fzf')
        require('telescope').load_extension('themes')
    end
}
