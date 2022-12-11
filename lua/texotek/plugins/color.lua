local status, colorizer = pcall(require, "colorizer")
if not status then
    print("Colorizer could not be loaded")
    return
end

colorizer.setup({
    filetypes = { "*" },
    user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = true, -- "Name" codes like Blue or blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enabl

        mode = "background", -- Set the display mode.
        tailwind = false, -- Enable tailwind colors
    },
    buftypes = {},
})
