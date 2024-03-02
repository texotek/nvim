return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    },
    config = function()
        require("telescope").setup {
            defaults = { file_ignore_patterns = { "node_modules", "*.class" }, },
            pickers = {
                find_files = {
                    --theme = "ivy",
                }
            },
            extensions = {
                file_browser = {
                    path = "%:p:h",
                    theme = "ivy",
                    -- disables netrw and use telescope-file-browser in its place
                    hijack_netrw = true,
                    mappings = {
                        ["i"] = {
                        },
                        ["n"] = {
                            -- your custom normal mode mappings
                        },
                    },
                    fzf = {
                        fuzzy = true,                   -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true,    -- override the file sorter
                        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                        -- the default case_mode is "smart_case"
                    }
                },
            },
        }

        require("telescope").load_extension "file_browser"
        require('telescope').load_extension 'fzf'
    end
}
