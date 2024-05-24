local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    IblIndent = { fg = theme.generated.level_1 },
    IblWhitespace = { link = "Whitespace" },
    IblScope = { fg = theme.palette.purple },
  }
end

return M
