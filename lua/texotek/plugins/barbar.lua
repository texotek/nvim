local status, barbar = pcall(require, "bufferline")
if not status then
    return
end

barbar.setup {
  -- Enable/disable animations
  animation = true,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = true,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enable/disable close button


  closable = true,
    -- Enables/disable clickable tabs

  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true
}

-- Move to previous/next

