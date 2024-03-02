vim.g.mapleader = " "
--vim.keymap.set({ "n", "i", "v", "x" }, "<C-c>", "<ESC>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v", "x", "t" }, "<C-n>", "<CMD>ToggleTerm<CR>", { noremap = true, silent = true })

local status_wk, wk = pcall(require, "which-key")
if not status_wk then
    print("Which-key not loaded")
    return
end

wk.register({
    ["<C-p>"]   = { "<cmd>Legendary<CR>", "Commands" },
    ["<C-S-P>"] = { "<cmd>Telescope commands<CR>", "Commands" },
    ["<C-n>"]   = { "<cmd>ToggleTerm<CR>", "Toggle Terminal" },
    ["<M-o>"]   = { "<cmd>ClangdSwitchSourceHeader<CR>", "Switch Header/Source File" },
    ["<C-h>"]   = { require("tmux").move_left, "Tmux move left" },
    ["<C-j>"]   = { require("tmux").move_down, "Tmux move down" },
    ["<C-k>"]   = { require("tmux").move_up, "Tmux move up" },
    ["<C-l>"]   = { require("tmux").move_right, "Tmux move right" },

    ["<F5>"]    = { require("dap").continue, "Debug Continue" },
    ["<F10>"]   = { require("dap").step_over, "Debug Step Over" },
    ["<F11>"]   = { require("dap").step_into, "Debug Step Into" },
    ["<F12>"]   = { require("dap").step_out, "Debug Step Out" },
    { mode = { "t", "i", "n" } }
})

wk.register({
    f = {
        name = "+Telescope",
        f = { "<cmd>Telescope find_files<cr>", "Telescope: Find File" },      -- create a binding with label
        r = { "<cmd>Telescope oldfiles<cr>", "Telescope: Open Recent File" }, -- additional options for creating the keymap
        s = { "<cmd>Telescope grep_string<cr>", "Telescope: Grep String" },
        b = { "<cmd>Telescope file_browser<cr>", "Telescope: File Browser" },
        c = { "<cmd>Telescope commands<cr>", "Telescope: Commands" },
    },
    l = {
        name = "+Language Server",
        a = "Code Actions",
        f = "Format",
        n = "Rename Symbol",
        d = "Open Diagnostic",
        s = "Workspace Symbol",
    },
    d = {
        name = "+Debug",
        b = { require("dap").toggle_breakpoint, "Toggle Breakpoint" },
        l = { require("dap").run_last, "Run Last" },
        t = { require("dap").terminate, "Terminate" },
        u = { require("dapui").toggle, "Toggle ui" },
    },
    b = {
        name = "+Build",
        b = { "<CMD>CMakeBuild<CR>", "CMake: Build" },
        r = { "<CMD>CMakeRun<CR>", "CMake: Run" },
        d = { "<CMD>CMakeDebug<CR>", "CMake: Debug" },
    }
}, { prefix = "<leader>" })
