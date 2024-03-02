return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
        require("ibl").setup
        {
            enabled = true,
            debounce = 100,
            indent = {},
            whitespace = {},
            scope = {},
        }
    end
}
