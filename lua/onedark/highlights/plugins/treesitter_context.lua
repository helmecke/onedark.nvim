local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    TreesitterContext = { bg = theme.generated.cursorline },
  }
end

return M
