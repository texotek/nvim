local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
    return
end


toggleterm.setup({
    size = 10,
    open_mapping = [[<c-\>]],
    direction = "horizontal"
})
