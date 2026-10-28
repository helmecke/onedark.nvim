local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    diffAdded = { fg = theme.palette.green },
    diffChanged = { fg = theme.palette.orange },
    diffRemoved = { fg = theme.palette.red },
    diffOldFile = { fg = theme.palette.yellow },
    diffNewFile = { fg = theme.palette.orange },
    diffFile = { fg = theme.palette.blue },
    diffLine = { fg = theme.palette.comment },
    diffIndexLine = { fg = theme.palette.magenta },
  }
end

return M
