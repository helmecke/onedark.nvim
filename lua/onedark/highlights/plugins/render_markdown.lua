local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    RenderMarkdownBullet = { fg = theme.palette.orange },
    RenderMarkdownCode = { bg = theme.generated.cursorline },
    RenderMarkdownDash = { fg = theme.palette.orange },
    RenderMarkdownTableHead = { fg = theme.palette.red },
    RenderMarkdownTableRow = { fg = theme.palette.orange },
    RenderMarkdownH1 = { fg = theme.palette.red, bold = true },
    RenderMarkdownH2 = { fg = theme.palette.yellow },
    RenderMarkdownH4 = { fg = theme.palette.green },
    RenderMarkdownH5 = { fg = theme.palette.blue },
    RenderMarkdownH6 = { fg = theme.palette.cyan },
  }
end

return M
