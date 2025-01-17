local M = {}

---Set the highlight groups for the new treesitter groups
---@param theme table
---@return table
function M.groups(theme)
  return {
    ["BlinkCmpGhostText"] = { bg = theme.generated.cursorline, fg = theme.palette.gray, italic = true },
  }
end

return M
