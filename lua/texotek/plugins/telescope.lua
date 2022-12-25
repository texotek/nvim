require('telescope').setup{
  defaults = {
    layout_config = {
      vertical = { width = 1.5 }
    }
  },
  pickers = {
      find_files = {
      theme = "dropdown",
    }
  },
  extensions = {
  }
}

--require('telescope').load_extension('fzf')
