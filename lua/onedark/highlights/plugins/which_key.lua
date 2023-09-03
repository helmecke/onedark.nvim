local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    WhichKey = { fg = theme.palette.green },
    WhichKeyDesc = { fg = theme.palette.fg },
    WhichKeySeparator = { fg = theme.palette.comment },
    WhichKeyFloat = { bg = theme.generated.bg },
    WhichKeyGroup = { fg = theme.palette.blue },
  }
end

return M
