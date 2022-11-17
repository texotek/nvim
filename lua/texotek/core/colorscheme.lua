local status, _ = pcall(vim.cmd,"colorscheme one")
if not status then
    print("Colorschme not found!")
    return
end
