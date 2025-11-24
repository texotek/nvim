return {
    {'mfussenegger/nvim-dap'},
    {"jay-babu/mason-nvim-dap.nvim", config = true},
    {'theHamsta/nvim-dap-virtual-text', config = true},
    {'nvim-neotest/nvim-nio'},
    {"rcarriga/nvim-dap-ui", config=true},
    {"mfussenegger/nvim-dap-python", config = function ()
        require("dap-python").setup("debugpy-adapter")
    end}
}
