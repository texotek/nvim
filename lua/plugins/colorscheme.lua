return {
    {"catppuccin/nvim", config = function ()
        require("catppuccin").setup(
            {
              flavour = "auto",
              transparent_background = true,
              float = {
                transparent = true,
                solid = false,
              },
        })
    end},
}
