local M = {}

---Set the highlight groups syntax related highlight group
---@param theme table
---@return table
function M.groups(theme)
  local config = require("onedark.config").config

  return {
    Comment = { fg = theme.palette.comment, style = config.styles.comments },
    Constant = { fg = theme.palette.orange, style = config.styles.constants },
    String = { fg = theme.palette.green, style = config.styles.strings },
    Character = { fg = theme.palette.green },
    Number = { fg = theme.palette.orange, style = config.styles.numbers },
    Float = { fg = theme.palette.orange },
    Boolean = { fg = theme.palette.orange },

    Identifier = { fg = theme.palette.red, style = config.styles.variables },
    Function = { fg = theme.palette.blue, style = config.styles.functions },

    Statement = { fg = theme.palette.purple },
    Conditional = { fg = theme.palette.purple, style = config.styles.conditionals },
    Repeat = { fg = theme.palette.purple },
    Label = { fg = theme.palette.purple },

    Operator = { fg = theme.palette.cyan, style = config.styles.operators },
    Keyword = { fg = theme.palette.purple, style = config.styles.keywords },
    Exception = { fg = theme.palette.purple },

    PreProc = { fg = theme.palette.yellow },
    Include = { fg = theme.palette.purple },
    Define = { fg = theme.palette.purple },
    Macro = { fg = theme.palette.blue },
    PreCondit = { fg = theme.palette.yellow },

    Type = { fg = theme.palette.yellow, style = config.styles.types },
    StorageClass = { fg = theme.palette.yellow },
    Structure = { fg = theme.palette.purple },
    Typedef = { fg = theme.palette.purple },

    Special = { fg = theme.palette.blue },
    SpecialChar = { fg = theme.palette.orange },
    Tag = {},
    Delimiter = { fg = theme.palette.fg },
    SpecialComment = { fg = theme.palette.comment },
    Debug = {},

    Underlined = { underline = true },
    Bold = { bold = true },
    Ignore = {},
    Italic = { italic = true },

    Error = { fg = theme.palette.red },
    Todo = { fg = theme.palette.purple },
  }
end

return M
