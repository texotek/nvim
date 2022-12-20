local status, dap = pcall(require, "dap")
if not status then
    return
end

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = '/home/texotek/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    cwd = '${workspaceFolder}',
    request = "launch",
        program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
    stopAtEntry = false,
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = '/usr/bin/gdb',
    cwd = '${workspaceFolder}',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
  },
}
