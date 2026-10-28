local M = {}

---Get the highlight groups for the filetype
---@param theme table
---@return table
function M.groups(theme)
  local config = require("onedark.config").config

  return {
    ["@neorg.markup.bold.norg"] = { bold = true },
  }
end

return M
