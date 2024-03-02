local status_dap, dap = pcall(require, "dap")
if not status_dap then
    return
end
local status_dapui, dapui = pcall(require, "dapui")
if not status_dapui then
    return
end

dap.adapters.codelldb = {
    type = 'server',
    port = "13000",
    executable = {
        command = os.getenv("HOME") .. '/.local/share/nvim/mason/packages/codelldb/codelldb',
        args = { "--port", "13000" },
        -- detached = false,
    }
}
dap.adapters.lldb = dap.adapters.codelldb

dap.configurations.cpp = {
    {
        name = 'Launch',
        type = 'codelldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},

        -- 💀
        -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
        --
        --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
        --
        -- Otherwise you might get the following error:
        --
        --    Error on launch: Failed to attach to the target process
        --
        -- But you should be aware of the implications:
        -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
        -- runInTerminal = false,
    },
}

require('dap.ext.vscode').load_launchjs(nil, {})

dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end
