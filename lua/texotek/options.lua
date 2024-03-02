local options = {
    clipboard = 'unnamedplus',   -- use system clipboard 
    mouse = 'a',                 -- allow the mouse to be used in Nvim
    autochdir = false,

    -- Tab
    tabstop = 4,                 -- number of visual spaces per TAB
    softtabstop = 4,             -- number of spacesin tab when editing
    shiftwidth = 4,              -- insert 4 spaces on a tab
    expandtab = true,            -- tabs are spaces, mainly because of python

    -- UI config
    number = true,               -- show absolute number
    relativenumber = true,       -- add numbers to each line on the left side
    cursorline = true,           -- highlight cursor line underneath the cursor horizontally
    splitbelow = true,           -- open new vertical split bottom
    splitright = true,           -- open new horizontal splits right
    termguicolors = true,        -- enabl 24-bit RGB color in the TUI
    showmode = false,            -- we are experienced, wo don't need the "-- INSERT --" mode hint
    wrap = false,                -- Not wrapping text

    -- Searching
    incsearch = true,            -- search as characters are entered
    hlsearch = true,            -- do not highlight matches
    ignorecase = true,           -- ignore case in searches by default
    smartcase = true,            -- but make it case sensitive if an uppercase is entered

    -- Undoing
    swapfile = false,
    backup = false,
    undodir = os.getenv("HOME") .. "/.cache/nvim/undodir",
    undofile = true,

    -- Folding
    foldmethod = "expr",
    foldexpr = "syntax"
}

for key, value in pairs(options) do
    vim.opt[key] = value
end
