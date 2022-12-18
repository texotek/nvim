local opt = vim.opt -- for conciseness

-- line numbers

opt.number = true
opt.relativenumber = true

-- tab & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- Misc
opt.iskeyword:append("-")

vim.cmd[[hi! link SignColumn LineNr]]
vim.cmd[[au FileType * setlocal formatoptions-=c formatoptions-=o]]
