vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

-- general keymaps

keymap.set("n", "<leader>nh", ":nohl<CR>", opts)
keymap.set("n", "<leader>sv", "<C-w>v", opts)
keymap.set("n", "<leader>sh", "<C-w>s", opts)

-- resizing windows
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", opts)
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", opts)
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", opts)
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", opts)

-- Buffers
keymap.set("n", "<A-,>", "<cmd>bprevious<cr>", opts)
keymap.set("n", "<A-.>", "<cmd>bnext<cr>", opts)
keymap.set("n", "<A-c>", "<cmd>bdelete<cr>", opts)
keymap.set("n", "<leader>j", "<cmd>JABSOpen<cr>", opts)

-- Visual
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {}, opts)
keymap.set('n', '<leader>fs', require('telescope.builtin').live_grep, {}, opts)
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {}, opts)
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {}, opts)

-- Nvim-Tree
keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', opts)
