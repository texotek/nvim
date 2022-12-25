local opt = vim.opt -- for conciseness

-- line numbers

opt.number = true
opt.relativenumber = true

opt.scrolloff = 8

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
opt.hlsearch = false
opt.incsearch = true

--cursor
opt.cursorline = true
opt.guicursor = ''

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

vim.cmd[[au FileType * setlocal formatoptions-=c formatoptions-=o]]
