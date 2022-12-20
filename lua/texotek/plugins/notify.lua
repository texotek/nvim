local status, notify = pcall(require, "notify")
if not status then
    return
end

vim.notify = notify

notify.setup({
    background_colour = "#000",
    fps = 60,
    icons = {
      DEBUG = "",
      ERROR = "",
      INFO = "",
      TRACE = "✎",
      WARN = ""
    },
    level = 1,
    minimum_width = 30,
    render = "default",
    stages = "fade_in_slide_out",
    timeout = 3500,
    top_down = true
})
