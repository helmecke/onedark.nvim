local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    LazyDimmed = { link = "Comment" },
  }
end

return M
