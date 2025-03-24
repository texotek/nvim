vim.api.nvim_create_user_command("TypstOpenPdf", function()
  local filepath = vim.api.nvim_buf_get_name(0)
  if filepath:match("%.typ$") then
    os.execute("xdg-open " .. vim.fn.shellescape(filepath:gsub("%.typ$", ".pdf")))
    -- replace open with your preferred pdf viewer
    -- os.execute("zathura " .. vim.fn.shellescape(filepath:gsub("%.typ$", ".pdf")))
  end
end, {})

vim.api.nvim_create_user_command("TypstPinMain", function()
    vim.lsp.buf.execute_command({ command = 'tinymist.pinMain', arguments = { vim.api.nvim_buf_get_name(0) } })
end, {})
vim.api.nvim_create_user_command("TypstUnpinMain", function()
    vim.lsp.buf.execute_command({ command = 'tinymist.pinMain', arguments = { nil } })
end, {})

return -- lazy.nvim
{
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '1.*',
  opts = {}, -- lazy.nvim will implicitly calls `setup {}`
}
