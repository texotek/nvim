return {
    "xiyaowong/transparent.nvim",
    config = {
         groups = { -- table: default groups
            'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
            'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
            'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
            'SignColumn', 'CursorLine', 'CursorLineNr', 
            'EndOfBuffer',
        },
    extra_groups = {"LspInlayHint"}, -- table: additional groups that should be cleared
    exclude_groups = {}, -- table: groups you
    }
}
