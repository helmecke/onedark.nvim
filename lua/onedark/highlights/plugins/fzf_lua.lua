local M = {}

---Set the highlight groups for the new treesitter groups
---@param theme table
---@return table
function M.groups(theme)
  return {
    ["FzfLuaNormal"] = { link = "NormalFloat" },
  }
end

return M
