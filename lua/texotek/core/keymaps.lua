vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness

-- general keymaps

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Delete no Register
keymap.set("n", "x", '"_x')
keymap.set("n", "d", '"_d')
keymap.set("n", "D", '"_D')
keymap.set("v", "d", '"_d')
--keymap.set("n", "<leader>x", "x")
--keymap.set("n", "<leader>d", "d")
--keymap.set("n", "<leader>D", "D")
--keymap.set("v", "<leader>d", "d")

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
keymap.set('n', '<leader>fs', require('telescope.builtin').live_grep, {})
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})

-- Nvim-Tree
keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

require("which-key").register({
  ["<leader>f"] = { name = "Telescope" },
  ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  ["<leader>fs"] = { "<cmd>Telescope live_grep<cr>", "Find File" },
  ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
  ["<leader>s"] = { "<leader>s", "Replace current word"},
})
