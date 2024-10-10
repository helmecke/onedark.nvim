local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    TreesitterContext = { bg = theme.generated.cursorline, fg = theme.palette.gray },
    TreesitterContextBottom = { bg = theme.generated.cursorline, fg = theme.palette.gray, underline = true },
    TreesitterContextLineNumber = { bg = theme.generated.cursorline, fg = theme.palette.gray },
    TreesitterContextLineNumberBottom = { bg = theme.generated.cursorline, fg = theme.palette.gray, underline = true },
  }
end

return M
