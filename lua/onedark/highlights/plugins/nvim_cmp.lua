local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  local color = require("onedark.helpers")
  return {
    -- https://github.com/hrsh7th/nvim-cmp/blob/main/doc/cmp.txt
    CmpGhostText = { fg = theme.palette.gray },
    -- CmpDocumentation = { fg = theme.palette.fg, bg = theme.palette.menu },
    -- CmpDocumentationBorder = { fg = theme.palette.fg, bg = theme.palette.menu },

    CmpItemAbbr = { fg = color.darken(theme.palette.fg, 9) },
    CmpItemAbbrDeprecated = { fg = theme.palette.blue },
    CmpItemAbbrMatch = { fg = theme.palette.fg, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = theme.palette.fg, bold = true },
    -- CmpItemMenu = { fg = theme.palette.gray },

    -- CmpItemKindText = { fg = theme.palette.orange },
    -- CmpItemKindMethod = { fg = theme.palette.blue },
    -- CmpItemKindFunction = { link = "CmpItemKindMethod" },
    -- CmpItemKindConstructor = { fg = theme.palette.yellow },
    -- CmpItemKindField = { fg = theme.palette.blue },
    -- CmpItemKindClass = { fg = theme.palette.yellow },
    -- CmpItemKindInterface = { link = "CmpItemKindClass" },
    -- CmpItemKindModule = { fg = theme.palette.blue },
    -- CmpItemKindProperty = { fg = theme.palette.blue },
    -- CmpItemKindValue = { fg = theme.palette.orange },
    -- CmpItemKindEnum = { fg = theme.palette.yellow },
    -- CmpItemKindKeyword = { fg = theme.palette.purple },
    -- CmpItemKindSnippet = { fg = theme.palette.green },
    -- CmpItemKindFile = { fg = theme.palette.blue },
    -- CmpItemKindEnumMember = { fg = theme.palette.cyan },
    -- CmpItemKindConstant = { fg = theme.palette.green },
    -- CmpItemKindStruct = { fg = theme.palette.yellow },
    -- CmpItemKindTypeParameter = { fg = theme.palette.yellow },
    -- CmpItemKindUnit = {},
    -- CmpItemKindVColor = {},
    -- CmpItemKindReference = {},
    -- CmpItemKindFolder = {},
    -- CmpItemKindEvent = {},
    -- CmpItemKindOperator = {},
  }
end

return M
