local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    GitSignsAdd = { fg = theme.palette.green },
    GitSignsChange = { fg = theme.palette.orange },
    GitSignsDelete = { fg = theme.palette.red },
    GitSignsUntracked = { fg = theme.palette.blue },
  }
end

return M
