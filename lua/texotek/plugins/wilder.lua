local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('pipeline', {
  wilder.branch(
    wilder.cmdline_pipeline(),
    wilder.search_pipeline()
  ),
})

wilder.set_option('renderer', wilder.wildmenu_renderer({
  highlighter = wilder.basic_highlighter(),
  left = {' ', wilder.popupmenu_devicons()},
  right = {' ', wilder.popupmenu_scrollbar()},
}))

wilder.set_option('renderer', wilder.popupmenu_renderer(
    wilder.popupmenu_border_theme({
    highlighter = wilder.basic_highlighter(),
    left = {' ', wilder.popupmenu_devicons()},
    right = {' ', wilder.popupmenu_scrollbar()},
    highlighter = wilder.basic_highlighter(),
    min_width = '100%', -- minimum height of the popupmenu, can also be a number
    max_height = '20%', -- to set a fixed height, set max_height to the same value
    reverse = 0,        -- if 1, shows the candidates from bottom to top
    border = 'rounded',
  })
))
