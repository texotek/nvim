local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- recommended setiings from nvim-tree docs
vim.g.loaded = 1
vim.g.loaded_netrwPlugins = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
   actions = {
       open_file = {
           window_picker = {
               enable = false,
           }
       }
   } 
})
