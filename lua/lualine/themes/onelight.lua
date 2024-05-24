local colors = require("onedark.helpers").get_colors("onelight")
local config = require("onedark.config").config

local onedark = {}

onedark.normal = {
  a = { bg = colors.green, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.green },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

onedark.insert = {
  a = { bg = colors.blue, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.blue },
}

onedark.command = {
  a = { bg = colors.purple, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.purple },
}

onedark.visual = {
  a = { bg = colors.yellow, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

onedark.replace = {
  a = { bg = colors.red, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

local inactive_bg = config.options.highlight_inactive_windows and colors.color_column or colors.bg
onedark.inactive = {
  a = { bg = inactive_bg, fg = colors.blue },
  b = { bg = inactive_bg, fg = colors.fg_gutter_inactive, gui = "bold" },
  c = { bg = inactive_bg, fg = colors.fg_gutter_inactive },
}

return onedark
