local status, treesitter = pcall(require, "nvim-treesitteer.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"html",
		"css",
		"markdown",
		"bash",
		"lua",
		"vim",
		"gitignore",
	},
	auto_install = true,
})
