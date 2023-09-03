local M = {}

---Set the highlight groups for the editor
---@param theme table
---@return table
function M.groups(theme)
  local color = require("onedark.helpers")
  local config = require("onedark.config").config

  return {
    -- Conceal = {},
    -- CurSearch = {},
    Cursor = { fg = theme.palette.bg, bg = theme.palette.blue },
    CursorColumn = { bg = theme.palette.gray },
    -- CursorIM = {},
    Directory = { fg = theme.palette.blue },
    EndOfBuffer = { fg = theme.palette.black },
    Folded = { bg = theme.palette.bg, fg = theme.palette.fg },
    MatchParen = { fg = theme.palette.blue },
    -- Menu = {},
    ModeMsg = {},
    MoreMsg = {},
    NonText = { fg = theme.generated.level_1 },
    Normal = { bg = theme.palette.bg, fg = theme.palette.fg },
    NormalNC = {},
    Question = { fg = theme.palette.purple },
    QuickFixLine = { bg = theme.palette.yellow },
    Scrollbar = {},
    SpecialKey = { fg = theme.palette.gray },
    Statement = { fg = theme.palette.purple },
    StatusLine = { bg = theme.generated.level_3, fg = theme.palette.fg },
    StatusLineNC = { bg = theme.generated.level_3, fg = theme.palette.comment },
    StatusLineTerm = { bg = theme.generated.level_3, fg = theme.palette.fg },
    StatusLineTermNC = { bg = theme.generated.level_3, fg = theme.palette.comment },
    Subsitute = {},
    TabLine = { bg = theme.generated.level_3, fg = theme.palette.white },
    TabLineFill = {},
    TabLineSel = { fg = theme.palette.white },
    TermCursor = {},
    TermCursorNC = {},
    Terminal = { bg = theme.palette.bg, fg = theme.palette.fg },
    Title = { fg = theme.palette.green },
    Tooltip = {},
    VertSplit = { fg = theme.generated.level_3 },
    Visual = { bg = theme.palette.gray },
    VisualNOS = { bg = theme.palette.gray },
    WinBar = {},
    WinBarNC = {},
    WinSeparator = {},
    lCursor = {},

    -- done
    -- Whitespace = {},
    -- WildMenu = { bg = theme.palette.blue },

    ColorColumn = {},

    DiffAdd = { fg = theme.palette.green },
    DiffChange = { fg = theme.palette.orange },
    DiffDelete = { fg = theme.palette.red },
    DiffText = { fg = theme.palette.cyan },

    DiagnosticError = { fg = theme.palette.red },
    DiagnosticWarn = { fg = theme.palette.orange },
    DiagnosticInfo = { fg = theme.palette.blue },
    DiagnosticHint = { fg = theme.palette.cyan },
    DiagnosticOk = { fg = theme.palette.green },
    DiagnosticUnderlineError = { sp = theme.palette.red, underline = true },
    DiagnosticUnderlineWarn = { sp = theme.palette.orange, underline = true },
    DiagnosticUnderlineInfo = { sp = theme.palette.blue, underline = true },
    DiagnosticUnderlineHint = { sp = theme.palette.cyan, underline = true },
    DiagnosticUnderlineOk = { sp = theme.palette.green, underline = true },

    Search = { bg = theme.palette.yellow, fg = theme.palette.black },
    IncSearch = { bg = theme.palette.gray, fg = theme.palette.yellow },

    Pmenu = { bg = theme.generated.level_2 },
    PmenuSel = { bg = theme.generated.level_2_active },
    -- PmenuExtra = {},
    -- PmenuExtraSel = {},
    -- PmenuKind = {},
    -- PmenuKindSel = {},
    -- PmenuSbar = { bg = theme.palette.gray },
    -- PmenuThumb = { bg = theme.palette.white },

    LineNr = { fg = theme.palette.gray },
    LineNrAbove = { fg = theme.palette.gray },
    LineNrBelow = { fg = theme.palette.gray },

    CursorLine = {},
    CursorLineFold = { fg = theme.palette.comment, italic = true },
    CursorLineNr = {},
    CursorLineSign = {},
    
    FoldColumn = { fg = theme.palette.gray },
    SignColumn = {},

    NormalFloat = { bg = theme.palette.bg, fg = theme.palette.fg },
    FloatBorder = { fg = theme.palette.gray },
    -- FloatTitle = {},

    SpellBad = { fg = theme.palette.red, undercurl = true },
    SpellCap = { fg = theme.palette.blue, undercurl = true },
    SpellLocal = { fg = theme.palette.cyan, undercurl = true },
    SpellRare = { fg = theme.palette.purple, undercurl = true },

    ErrorMsg = { fg = theme.generated.red },
    WarningMsg = { fg = theme.palette.orange },
  }
end

return M
