local status, _ = pcall(vim.cmd,"colorscheme one")
if not status then
    print("Colorschme not found!")
    return
end

vim.cmd(
    "highlight Normal ctermbg=none guibg=none",
    "highlight NonText ctermbg=none guibg=none"
)
