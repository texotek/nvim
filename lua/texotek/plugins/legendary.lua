return {
    --'mrjones2014/legendary.nvim',
    "ibash/legendary.nvim",
    branch = "add_get_commands",
    -- since legendary.nvim handles all your keymaps/commands,
    -- its recommended to load legendary.nvim before other plugins
    priority = 10000,
    lazy = false,
    -- sqlite is only needed if you want to use frecency sorting
    dependencies = { 'kkharji/sqlite.lua' },
    config = {
        sort = {
            -- put most recently selected item first, this works
            -- both within global and item group lists
            most_recent_first = true,
            -- sort user-defined items before built-in items
            user_items_first = true,
            -- sort the specified item type before other item types,
            -- value must be one of: 'keymap', 'command', 'autocmd', 'group', nil
            item_type_bias = nil,
            -- settings for frecency sorting.
            -- https://en.wikipedia.org/wiki/Frecency
            -- Set `frecency = false` to disable.
            -- this feature requires sqlite.lua (https://github.com/kkharji/sqlite.lua)
            -- and will be automatically disabled if sqlite is not available.
            -- NOTE: THIS TAKES PRECEDENCE OVER OTHER SORT OPTIONS!
            frecency = {
                -- the directory to store the database in
                db_root = string.format('%s/legendary/', vim.fn.stdpath('data')),
                -- the maximum number of timestamps for a single item
                -- to store in the database
                max_timestamps = 10,
            },
        },
        extensions = {
            lazy_nvim = { auto_register = false },
            which_key = {
                auto_register = false,
                use_groups = false,
            },
        },
    }
}
