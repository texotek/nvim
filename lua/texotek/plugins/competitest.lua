local setup, competitest = pcall(require, "competitest.nvim")
if not setup then
	return
end

competitest.setup()
