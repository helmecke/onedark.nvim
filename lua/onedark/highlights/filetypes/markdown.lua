local M = {}

---Get the highlight groups for the filetype
---@param theme table
---@return table
function M.groups(theme)
  local config = require("onedark.config").config

  return {
    ["@text.title.1.markdown"] = { fg = theme.palette.green, bold = true },
    ["@text.title.2.markdown"] = { fg = theme.palette.green, bold = true },
    ["@text.title.3.markdown"] = { fg = theme.palette.green, bold = true },
    ["@text.title.4.markdown"] = { fg = theme.palette.green, bold = true },
    ["@text.title.5.markdown"] = { fg = theme.palette.green, bold = true },
    ["@text.title.6.markdown"] = { fg = theme.palette.green, bold = true },
    ["@text.literal.markdown_inline"] = { fg = theme.palette.yellow },
    ["@text.reference.markdown_inline"] = { fg = theme.palette.blue },
    ["@text.strong.markdown_inline"] = { bold = true },
    ["@text.emphasis.markdown_inline"] = { italic = true },
    ["@text.strike.markdown_inline"] = { strikethrough = true },
    ["@parameter.markdown_inline"] = { fg = theme.palette.fg },
    ["@punctuation.delimiter.markdown_inline"] = { fg = theme.palette.gray },
    ["@text.uri.markdown_inline"] = {},
    ["@text.todo.checked.markdown"] = { fg = theme.palette.comment },
  }
end

return M
