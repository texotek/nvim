require("options")

require("config.lazy")
require("config.lsp")
require("config.mappings")

--require("config.hover")

vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0

--vim.cmd.aunmenu([[PopUp.How-to\ disable\ mouse]])
--vim.cmd.aunmenu([[PopUp.Select\ All]])
--vim.cmd.aunmenu([[PopUp.Inspect]])
--vim.cmd.aunmenu([[PopUp.Paste]])
--vim.cmd.aunmenu([[PopUp.-1-]])

--vim.cmd.amenu([[PopUp.Goto\ Definition <Cmd>lua vim.lsp.buf.definition()<CR>]]) vim.cmd.amenu([[PopUp.LSP\ Hover <Cmd>lua vim.lsp.buf.hover()<CR>]])
--vim.cmd.amenu([[PopUp.Code\ action <Cmd>lua vim.lsp.buf.code_action()<CR>]])
--vim.cmd.amenu([[PopUp.-1-]])
--vim.cmd.amenu([[PopUp.Go\ Back <C-o>]])

local _border = "single"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = _border
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = _border
  }
)

vim.diagnostic.config{
  float={border=_border}
}

vim.cmd("colorscheme catppuccin")
