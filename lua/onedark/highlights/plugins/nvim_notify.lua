local M = {}

---Get the highlight group for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    NotifyERRORBorder = { link = "FloatBorder" },
    NotifyERRORIcon = { link = "DiagnosticError" },
    NotifyERRORTitle = { link = "Title" },
    NotifyWARNBorder = { link = "FloatBorder" },
    NotifyWARNIcon = { link = "DiagnosticWarn" },
    NotifyWARNTitle = { link = "Title" },
    NotifyINFOBorder = { link = "FloatBorder" },
    NotifyINFOIcon = { link = "DiagnosticInfo" },
    NotifyINFOTitle = { link = "Title" },
    NotifyDEBUGBorder = { link = "FloatBorder" },
    NotifyDEBUGIcon = { link = "DiagnosticHint" },
    NotifyDEBUGTitle = { link = "Title" },
    NotifyTRACEBorder = { link = "FloatBorder" },
    NotifyTRACEIcon = { link = "DiagnosticOk" },
    NotifyTRACETitle = { link = "Title" },
  }
end

return M
