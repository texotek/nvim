vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness

-- general keymaps

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Delete no Register
keymap.set("n", "x", '"_x')
keymap.set("n", "d", '"_d')
keymap.set("n", "D", '"_D')
keymap.set("v", "d", '"_d')
keymap.set("n", "<leader>x", "x")
keymap.set("n", "<leader>d", "d")
keymap.set("n", "<leader>D", "D")
keymap.set("v", "<leader>d", "d")

-- plugin keymaps
-- vim-maximaizer
keymap.set("n", "<leader>m", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- undo-tree
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
keymap.set("n", "<leader>fr", "<cmd>Telescope repo<cr>")

-- easymotions
keymap.set("n", "<leader>j", "<Plug>(easymotion-j)")
keymap.set("n", "<leader>k", "<Plug>(easymotion-k)")
keymap.set("n", "<leader>h", "<Plug>(easymotion-linebackward)")
keymap.set("n", "<leader>l", "<Plug>(easymotion-lineforward)")
keymap.set("n", "<leader>w", "<Plug>(easymotion-w)")
keymap.set("n", "<leader>W", "<Plug>(easymotion-W)")
keymap.set("n", "s", "<Plug>(easymotion-overwin-f2)")
keymap.set("n", "<leader>s", "<Plug>(easymotion-overwin-f)")
keymap.set("n", "<leader>/", "<Plug>(easymotion-sn)")

-- Bufferline
keymap.set('n', '<A-n>', "<cmd>enew<CR>",  { noremap = true, silent = false })
keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>',  { noremap = true, silent = true })
-- Re-order to previous/next
keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>',  { noremap = true, silent = true })
-- Goto buffer in position...
keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>',  { noremap = true, silent = true })
keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>',  { noremap = true, silent = true })
-- Pin/unpin buffer
keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>',  { noremap = true, silent = true })
-- Close buffer
keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>',  { noremap = true, silent = true })
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
keymap.set('n', '<C-i>', '<Cmd>BufferPick<CR>',  { noremap = true, silent = true })
-- Sort automatically by...
keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>',  { noremap = true, silent = true })
keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>',  { noremap = true, silent = true })
keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>',  { noremap = true, silent = true })
keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>',  { noremap = true, silent = true })
