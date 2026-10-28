local M = require("onedark.utils.template")

M.filetype = "toml"

M.template = [[
[colors]
ansi = [
  '${black}',
  '${red}',
  '${green}',
  '${yellow}',
  '${blue}',
  '${purple}',
  '${cyan}',
  '${white}',
]
brights = [
  '${gray}',
  '${bright_red}',
  '${bright_green}',
  '${bright_yellow}',
  '${bright_blue}',
  '${bright_purple}',
  '${bright_cyan}',
  '${bright_white}',
]

background = '${bg}'
foreground = '${fg}'
selection_bg = '${purple}'
selection_fg = '${white}'

[colors.indexed]

[metadata]
name = 'onedark_${name}'
origin_url = 'https://github.com/helmecke/onedark.nvim'
]]

return M
