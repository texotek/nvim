--function resetbg()
    --vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    --vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    --vim.api.nvim_set_hl(0, "NonText", {bg = "none"})
--end

return {
    "nyoom-engineering/oxocarbon.nvim",
    config = function()
        vim.cmd.colorscheme "oxocarbon"
    end
}
