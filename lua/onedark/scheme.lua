local scheme = require("onedark.colors")
local setup = {}
local g = vim.g

---Color table for the editor
--@return syntax table: table with the groups and its respective colors
function setup.load_editor()
  ---------------------
  --  EDITOR COLORS  --
  ---------------------
  local syntax = {
    String =           { fg = scheme.green,      bg = scheme.none,       scheme.none },
    Delimiter =        { fg = scheme.none,       bg = scheme.none,       scheme.none },
    Character =        { fg = scheme.green,      bg = scheme.none,       scheme.none },
    Constant =         { fg = scheme.cyan,       bg = scheme.none,       scheme.none },
    Boolean =          { fg = scheme.dark_yellow,bg = scheme.none,       scheme.none },
    Number =           { fg = scheme.dark_yellow,bg = scheme.none,       scheme.none },
    Float =            { fg = scheme.dark_yellow,bg = scheme.none,       scheme.none },
    Tag =              { fg = scheme.none,       bg = scheme.none,       scheme.none },
    Label =            { fg = scheme.purple,     bg = scheme.none,       scheme.none },
    PreProc =          { fg = scheme.yellow,     bg = scheme.none,       scheme.none },
    Type =             { fg = scheme.yellow,     bg = scheme.none,       scheme.none },
    StorageClass =     { fg = scheme.yellow,     bg = scheme.none,       scheme.none },
    Special =          { fg = scheme.blue,       bg = scheme.none,       scheme.none },
    PreCondit =        { fg = scheme.yellow,     bg = scheme.none,       scheme.none },
    Todo =             { fg = scheme.purple,     bg = scheme.none,       scheme.none },
    Identifier =       { fg = scheme.red,        bg = scheme.none,       scheme.none },
    Function =         { fg = scheme.blue,       bg = scheme.none,       scheme.none },
    Include =          { fg = scheme.blue,       bg = scheme.none,       scheme.none },
    SpecialChar =      { fg = scheme.dark_yellow,bg = scheme.none,       scheme.none },
    Underlined =       { fg = scheme.blue,       bg = scheme.none,       syle = "underline" },
    Conceal =          { fg = scheme.none,       bg = scheme.none,       scheme.none },
    Statement =        { fg = scheme.purple,     bg = scheme.none,       scheme.none },
    Repeat =           { fg = scheme.purple,     bg = scheme.none,       scheme.none },
    Structure =        { fg = scheme.yellow,     bg = scheme.none,       scheme.none },
    Define =           { fg = scheme.purple,     bg = scheme.none,       scheme.none },
    Operator =         { fg = scheme.purple,     bg = scheme.none,       scheme.none },
    Keyword =          { fg = scheme.red,        bg = scheme.none,       scheme.none },
    Macro =            { fg = scheme.purple,     bg = scheme.none,       scheme.none },
    Typedef =          { fg = scheme.yellow,     bg = scheme.none,       scheme.none },
    Comment =          { fg = scheme.grey,       bg = scheme.none,       style = "italic" },
    SpecialComment =   { fg = scheme.grey,       bg = scheme.none,       style = "italic" },
    Ignore =           { fg = scheme.none,       bg = scheme.none,       scheme.none },
    Error =            { fg = scheme.red,        bg = scheme.none,       scheme.none },
    Debug =            { fg = scheme.darkred,    bg = scheme.none,       scheme.none },
    Exception =        { fg = scheme.purple,     bg = scheme.none,       scheme.none },
    ColorColumn =      { fg = scheme.none,       bg = scheme.cursor_grey,scheme.none },
    Cursor =           { fg = scheme.black,      bg = scheme.blue,       scheme.none },
    CursorIM =         { fg = scheme.none,       bg = scheme.none,       scheme.none },
    CursorColumn =     { fg = scheme.none,       bg = scheme.cursor_grey,scheme.none },
    CursorLineNr =     { fg = scheme.none,       bg = scheme.none,       scheme.none },
    CursorLine =       { fg = scheme.none,       bg = scheme.cursor_grey,scheme.none },
    Folded =           { fg = scheme.grey,       bg = scheme.none,       scheme.none },
    FoldColumn =       { fg = scheme.none,       bg = scheme.none,       scheme.none },
    SignColumn =       { fg = scheme.none,       bg = scheme.none,       scheme.none },
    IncSearch =        { fg = scheme.yellow,     bg = scheme.grey,       scheme.none },
    PMenu =            { fg = scheme.none,       bg = scheme.menu_grey,  scheme.none },
    PMenuSel =         { fg = scheme.black,      bg = scheme.blue,       scheme.none },
    PMenuSbar =        { fg = scheme.none,       bg = scheme.special_grey,scheme.none },
    PMenuThumb =       { fg = scheme.none,       bg = scheme.white,      scheme.none },
    Directory =        { fg = scheme.blue,       bg = scheme.none,       scheme.none },
    DiffAdd =          { fg = scheme.black,      bg = scheme.green,      scheme.none },
    DiffChange =       { fg = scheme.yellow,     bg = scheme.none,       style = "underline" },
    DiffDelete =       { fg = scheme.black,      bg = scheme.red,        scheme.none },
    DiffText =         { fg = scheme.yellow,     bg = scheme.none,       scheme.none },
    StatusLine =       { fg = scheme.white,      bg = scheme.black,      scheme.none },
    StatusLineNC =     { fg = scheme.grey,       bg = scheme.none,       scheme.none },
    WarningMsg =       { fg = scheme.darkred,    bg = scheme.none,       scheme.none },
    Warnings =         { fg = scheme.orange,     bg = scheme.none,       style = "reverse" },
    WildMenu =         { fg = scheme.black,      bg = scheme.blue,       scheme.none },
    EndOfBuffer =      { fg = scheme.black,      bg = scheme.none,       scheme.none },
    ErrorMsg =         { fg = scheme.red,        bg = scheme.none,       scheme.none },
    VertSplit =        { fg = scheme.vertsplit,  bg = scheme.none,       scheme.none },
    LineNr =           { fg = scheme.dark_grey,  bg = scheme.none,       scheme.none },
    MatchParen =       { fg = scheme.blue,       bg = scheme.none,       style = "underline" },
    ModeMsg =          { fg = scheme.none,       bg = scheme.none,       scheme.none },
    MoreMsg =          { fg = scheme.none,       bg = scheme.none,       scheme.none },
    NonText =          { fg = scheme.special_grey,bg = scheme.none,      scheme.none },
    Normal =           { fg = scheme.white,      bg = scheme.black,      scheme.none },
    NormalFloat =      { fg = scheme.foreground, bg = scheme.lightgrey,  scheme.none },
    Question =         { fg = scheme.purple,     bg = scheme.none,       scheme.none },
    qfLineNr =         { fg = scheme.yellow,     bg = scheme.none,       scheme.none },
    Search =           { fg = scheme.black,      bg = scheme.yellow,     scheme.none },
    SpecialKey =       { fg = scheme.special_grey,bg = scheme.none,      scheme.none },
    Title =            { fg = scheme.foreground, bg = scheme.none,       scheme.none },
    Visual =           { fg = scheme.none,       bg = scheme.menu_grey,  scheme.none },
    VisualNOS =        { fg = scheme.none,       bg = scheme.menu_grey,  scheme.none },
    StatusLineTerm =   { fg = scheme.white,      bg = scheme.grey,       scheme.none },
    StatusLineTermNC = { fg = scheme.grey,       bg = scheme.none,       scheme.none },
    Conditional =      { fg = scheme.purple,     bg = scheme.none,       scheme.none },
    QuickFixLine =     { fg = scheme.black,      bg = scheme.yellow,     scheme.none },
    TabLineFill =      { fg = scheme.none,       bg = scheme.none,       scheme.none },
    TabLineSel =       { fg = scheme.white,      bg = scheme.none,       scheme.none },
    TabLine =          { fg = scheme.grey,       bg = scheme.none,       scheme.none },
  }

  return syntax
end

---Color table for the languages
--@return syntax table: table with the groups and its respective colors
function setup.load_langs()
  ---------------------
  -- LANGUAGE COLORS --
  ---------------------
  local syntax = {
    ---------
    -- GIT --
    ---------
    gitcommitComment =        { fg = scheme.grey,   bg = scheme.none,  scheme.none },
    SignifySignAdd =          { fg = scheme.green,  bg = scheme.none,  scheme.none },
    SignifySignChange =       { fg = scheme.yellow, bg = scheme.none,  scheme.none },
    SignifySignDelete =       { fg = scheme.red,    bg = scheme.none,  scheme.none },
    gitcommitDiscardedType =  { fg = scheme.red,    bg = scheme.none,  scheme.none },
    gitcommitSelectedType =   { fg = scheme.green,  bg = scheme.none,  scheme.none },
    gitcommitHeader =         { fg = scheme.none,   bg = scheme.none,  scheme.none },
    gitcommitUntrackedFile =  { fg = scheme.cyan,   bg = scheme.none,  scheme.none },
    gitcommitDiscardedFile =  { fg = scheme.red,    bg = scheme.none,  scheme.none },
    gitcommitUnmerged =       { fg = scheme.green,  bg = scheme.none,  scheme.none },
    gitcommitOnBranch =       { fg = scheme.none,   bg = scheme.none,  scheme.none },
    gitcommitBranch =         { fg = scheme.purple, bg = scheme.none,  scheme.none },
    gitcommitSelectedFile =   { fg = scheme.green,  bg = scheme.none,  scheme.none },
    gitcommitUnmergedFile =   { fg = scheme.yellow, bg = scheme.none,  scheme.none },

    ----------
    -- DIFF --
    ----------
    diffAdded =   { fg = scheme.black,  bg = scheme.green, scheme.none },
    diffFile =    { fg = scheme.orange, bg = scheme.none, scheme.none },
    diffNewFile = { fg = scheme.yellow, bg = scheme.none, scheme.none },
    diffChanged = { fg = scheme.black,   bg = scheme.yellow, scheme.none },
    diffRemoved = { fg = scheme.black,    bg = scheme.red, scheme.none },
    diffLine =    { fg = scheme.blue,   bg = scheme.none, scheme.none },

    --------------
    -- MARKDOWN --
    --------------
    markdownUrl =               { fg = scheme.purple,     bg = scheme.none, scheme.none },
    markdownH1 =                { fg = scheme.red,        bg = scheme.none, scheme.none },
    markdownH2 =                { fg = scheme.red,        bg = scheme.none, scheme.none },
    markdownH3 =                { fg = scheme.red,        bg = scheme.none, scheme.none },
    markdownH4 =                { fg = scheme.red,        bg = scheme.none, scheme.none },
    markdownH5 =                { fg = scheme.red,        bg = scheme.none, scheme.none },
    markdownH6 =                { fg = scheme.red,        bg = scheme.none, scheme.none },
    markdownItalic =            { fg = scheme.orange,     bg = scheme.none, style = "bold" },
    markdownBold =              { fg = scheme.orange,     bg = scheme.none, style = "bold" },
    markdownListMarker =        { fg = scheme.darkyellow, bg = scheme.none, scheme.none },
    markdownCode =              { fg = scheme.green,      bg = scheme.none, scheme.none },
    markdownCodeBlock =         { fg = scheme.yellow,     bg = scheme.none, scheme.none },
    markdownCodeDelimiter =     { fg = scheme.green,      bg = scheme.none, scheme.none },
    markdownRule =              { fg = scheme.grey,       bg = scheme.none, scheme.none },
    markdownHeadingRule =       { fg = scheme.grey,       bg = scheme.none, scheme.none },
    markdownUrlDelimiter =      { fg = scheme.darkgrey,   bg = scheme.none, scheme.none },
    markdownLinkDelimiter =     { fg = scheme.darkgrey,   bg = scheme.none, scheme.none },
    markdownLinkTextDelimiter = { fg = scheme.darkgrey,   bg = scheme.none, scheme.none },
    markdownUrlTitleDelimiter = { fg = scheme.green,      bg = scheme.none, scheme.none },
    markdownHeadingDelimiter =  { fg = scheme.darkorange, bg = scheme.none, scheme.none },
    markdownOrderedListMarker = { fg = scheme.grey,       bg = scheme.none, scheme.none },

    ----------
    -- HTML --
    ----------
    htmlSpecialTagName = { fg = scheme.red,      bg = scheme.none, scheme.none },
    htmlArg =            { fg = scheme.orange,   bg = scheme.none, scheme.none },
    htmlTagName =        { fg = scheme.red,      bg = scheme.none, scheme.none },
    htmlTagN =           { fg = scheme.red,      bg = scheme.none, scheme.none },
    htmlEndTag =         { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    htmlTag =            { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    MatchTag =           { fg = scheme.red,      bg = scheme.none, style = "bold,underline" },

    -----------
    --  XML  --
    -----------
    xmlTag =             { fg = scheme.red,    bg = scheme.none, scheme.none },
    xmlEndTag =          { fg = scheme.red,    bg = scheme.none, scheme.none },
    xmlTagName =         { fg = scheme.red,    bg = scheme.none, scheme.none },
    xmlAttrib =          { fg = scheme.yellow, bg = scheme.none, scheme.none },
    xmlEqual =           { fg = scheme.red,    bg = scheme.none, scheme.none },
    docbkKeyword =       { fg = scheme.cyan,   bg = scheme.none, style = "bold" },
    xmlDocTypeDecl =     { fg = scheme.grey,   bg = scheme.none, scheme.none },
    xmlDocTypeKeyword =  { fg = scheme.purple, bg = scheme.none, scheme.none },
    xmlCdataStart =      { fg = scheme.grey,   bg = scheme.none, scheme.none },
    xmlCdataCdata =      { fg = scheme.purple, bg = scheme.none, scheme.none },
    xmlProcessingDelim = { fg = scheme.grey,   bg = scheme.none, scheme.none },
    xmlAttribPunct =     { fg = scheme.grey,   bg = scheme.none, scheme.none },
    xmlEntity =          { fg = scheme.orange, bg = scheme.none, scheme.none },
    xmlEntityPunct =     { fg = scheme.orange, bg = scheme.none, scheme.none },

    ---------
    -- PUG --
    ---------
    pugDocType =             { fg = scheme.grey,    bg = scheme.none, style = "italic" },
    pugClass =               { fg = scheme.orange,  bg = scheme.none, scheme.none },
    pugTag =                 { fg = scheme.red,     bg = scheme.none, scheme.none },
    pugAttributesDelimiter = { fg = scheme.orange,  bg = scheme.none, scheme.none },

    ---------
    -- CSS --
    ---------
    cssFontAttr =          { fg = scheme.orange,   bg = scheme.none, scheme.none },
    cssAttrComma =         { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cssIdentifier =        { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    cssImportant =         { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cssInclude =           { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    cssIncludeKeyword =    { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cssMediaType =         { fg = scheme.orange,   bg = scheme.none, scheme.none },
    cssProp =              { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    cssAttributeSelector = { fg = scheme.green,    bg = scheme.none, scheme.none },
    cssBraces =            { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    cssClassName =         { fg = scheme.orange,   bg = scheme.none, scheme.none },
    cssClassNameDot =      { fg = scheme.orange,   bg = scheme.none, scheme.none },
    cssDefinition =        { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cssFontDescriptor =    { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cssFunctionName =      { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    cssPseudoClassId =     { fg = scheme.orange,   bg = scheme.none, scheme.none },
    cssSelectorOp =        { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cssSelectorOp2 =       { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cssStringQ =           { fg = scheme.green,    bg = scheme.none, scheme.none },
    cssStringQQ =          { fg = scheme.green,    bg = scheme.none, scheme.none },
    cssTagName =           { fg = scheme.red,      bg = scheme.none, scheme.none },
    cssAttr =              { fg = scheme.orange,   bg = scheme.none, scheme.none },

    ----------
    -- SASS --
    ----------
    sassId =             { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    sassInclude =        { fg = scheme.purple,   bg = scheme.none, scheme.none },
    sassMedia =          { fg = scheme.purple,   bg = scheme.none, scheme.none },
    sassMediaOperators = { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    sassMixin =          { fg = scheme.purple,   bg = scheme.none, scheme.none },
    sassMixinName =      { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    sassMixing =         { fg = scheme.purple,   bg = scheme.none, scheme.none },
    sassAmpersand =      { fg = scheme.red,      bg = scheme.none, scheme.none },
    sassClass =          { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    sassControl =        { fg = scheme.purple,   bg = scheme.none, scheme.none },
    sassExtend =         { fg = scheme.purple,   bg = scheme.none, scheme.none },
    sassFor =            { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    sassProperty =       { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    sassFunction =       { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    scssSelectorName =   { fg = scheme.yellow,   bg = scheme.none, scheme.none },

    ----------------
    -- JAVASCRIPT --
    ----------------
    jsClassKeyword =                  { fg = scheme.red,      bg = scheme.none, scheme.none },
    jsExtendsKeyword =                { fg = scheme.red,      bg = scheme.none, scheme.none },
    jsGlobalNodeObjects =             { fg = scheme.red,      bg = scheme.none, scheme.none },
    jsGlobalObjects =                 { fg = scheme.red,      bg = scheme.none, scheme.none },
    jsFunction =                      { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    jsObjectProp =                    { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    jsUndefined =                     { fg = scheme.darkred,  bg = scheme.none, scheme.none },
    jsObjectBraces =                  { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    javascriptDocTags =               { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    javascriptDocNotation =           { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    javascriptDocParamType =          { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    javascriptDocNamedParamType =     { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    javascriptDocParamName =          { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    javaScriptParens =                { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    jsClassDefinition =               { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    javascriptArrowFunc =             { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    javascriptClassName =             { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    javascriptClassSuperName =        { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    javascriptGlobal =                { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    jsFuncArgs =                      { fg = scheme.blue,     bg = scheme.none, scheme.none },
    jsExportDefault =                 { fg = scheme.blue,     bg = scheme.none, style = "bold" },
    jsObjectKey =                     { fg = scheme.blue,     bg = scheme.none, scheme.none },
    jsFunctionKey =                   { fg = scheme.blue,     bg = scheme.none, scheme.none },
    javascriptCacheMethod =           { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptDateMethod =            { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptMathStaticMethod =      { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptURLUtilsProp =          { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    jsFuncBraces =                    { fg = scheme.blue,     bg = scheme.none, scheme.none },
    jsClassBlock =                    { fg = scheme.blue,     bg = scheme.none, scheme.none },
    jsStorageClass =                  { fg = scheme.blue,     bg = scheme.none, scheme.none },
    jsxRegion =                       { fg = scheme.blue,     bg = scheme.none, scheme.none },
    javaScriptMember =                { fg = scheme.blue,     bg = scheme.none, scheme.none },
    jsObjectValue =                   { fg = scheme.green,    bg = scheme.none, scheme.none },
    javaScriptIdentifier =            { fg = scheme.red,      bg = scheme.none, scheme.none },
    jsParens =                        { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptAsyncFuncKeyword =      { fg = scheme.red,      bg = scheme.none, style = "bold" },
    jsBracket =                       { fg = scheme.red,      bg = scheme.none, scheme.none },
    jsObjectColon =                   { fg = scheme.red,      bg = scheme.none, scheme.none },
    javascriptAwaitFuncKeyword =      { fg = scheme.red,      bg = scheme.none, style = "bold" },
    javascriptOperator =              { fg = scheme.red,      bg = scheme.none, scheme.none },
    javascriptForOperator =           { fg = scheme.red,      bg = scheme.none, scheme.none },
    javascriptYield =                 { fg = scheme.red,      bg = scheme.none, scheme.none },
    javascriptExceptions =            { fg = scheme.darkred,  bg = scheme.none, scheme.none },
    javascriptMessage =               { fg = scheme.red,      bg = scheme.none, scheme.none },
    jsFutureKeys =                    { fg = scheme.orange,   bg = scheme.none, style = "bold" },
    jsFuncParens =                    { fg = scheme.orange,   bg = scheme.none, scheme.none },
    javascriptVariable =              { fg = scheme.orange,   bg = scheme.none, scheme.none },
    javascriptHeadersMethod =         { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptObjectLabel =           { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptPropertyName =          { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptLogicSymbols =          { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    jsVariableDef =                   { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptGlobalMethod =          { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javaScriptBraces =                { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptNodeGlobal =            { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptBOMWindowProp =         { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptArrayMethod =           { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptArrayStaticMethod =     { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptIdentifier =            { fg = scheme.orange,   bg = scheme.none, scheme.none },
    javascriptClassSuper =            { fg = scheme.orange,   bg = scheme.none, scheme.none },
    javascriptClassStatic =           { fg = scheme.orange,   bg = scheme.none, scheme.none },
    javaScriptNumber =                { fg = scheme.purple,   bg = scheme.none, scheme.none },
    javaScriptNull =                  { fg = scheme.purple,   bg = scheme.none, scheme.none },
    jsNull =                          { fg = scheme.purple,   bg = scheme.none, scheme.none },
    javascriptImport =                { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    javascriptTemplateSB =            { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    jsTemplateBraces =                { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    javascriptFuncKeyword =           { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    javascriptEndColons =             { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptFuncArg =               { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptLabel =                 { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptBrackets =              { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptTemplateSubstitution =  { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptStringMethod =          { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptBOMWindowMethod =       { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptAsyncFunc =             { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    javascriptClassKeyword =          { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    javascriptClassExtends =          { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    javascriptDefault =               { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    javaScriptFunction =              { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    javascriptExport =                { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    javascriptDOMElemAttrs =          { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptDOMEventMethod =        { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptDOMNodeMethod =         { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptDOMStorageMethod =      { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptBOMNavigatorProp =      { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptDOMDocMethod =          { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    javascriptDOMDocProp =            { fg = scheme.foreground,    bg = scheme.none, scheme.none },

    ----------------
    -- TYPESCRIPT --
    ----------------
    typeScriptDocParam =               { fg = scheme.darkgrey,   bg = scheme.none, scheme.none },
    typeScriptDocTags =                { fg = scheme.cyan,       bg = scheme.none, scheme.none },
    typeScriptGlobalObjects =          { fg = scheme.red,        bg = scheme.none, scheme.none },
    typeScriptFuncKeyword =            { fg = scheme.cyan,       bg = scheme.none, scheme.none },
    typeScriptIdentifier =             { fg = scheme.cyan,       bg = scheme.none, scheme.none },
    typeScriptBraces =                 { fg = scheme.red,        bg = scheme.none, scheme.none },
    typeScriptEndColons =              { fg = scheme.foreground,      bg = scheme.none, scheme.none },
    typeScriptDOMObjects =             { fg = scheme.foreground,      bg = scheme.none, scheme.none },
    typeScriptParens =                 { fg = scheme.blue,       bg = scheme.none, scheme.none },
    typeScriptOpSymbols =              { fg = scheme.foreground,      bg = scheme.none, scheme.none },
    typeScriptHtmlElemProperties =     { fg = scheme.yellow,     bg = scheme.none, scheme.none },
    typeScriptNull =                   { fg = scheme.purple,     bg = scheme.none, style = "bold" },
    typeScriptInterpolationDelimiter = { fg = scheme.cyan,       bg = scheme.none, scheme.none },
    typeScriptReserved =               { fg = scheme.cyan,       bg = scheme.none, scheme.none },
    typeScriptLabel =                  { fg = scheme.darkyellow, bg = scheme.none, scheme.none },
    typeScriptAjaxMethods =            { fg = scheme.cyan,       bg = scheme.none, scheme.none },
    typeScriptLogicSymbols =           { fg = scheme.foreground,      bg = scheme.none, scheme.none },
    typeScriptDocSeeTag =              { fg = scheme.darkgrey,   bg = scheme.none, scheme.none },

    ----------
    -- JSON --
    ----------
    jsonKeyword =            { fg = scheme.red,      bg = scheme.none, scheme.none },
    jsonNumber =             { fg = scheme.orange,   bg = scheme.none, scheme.none },
    jsonStringSQError =      { fg = scheme.red,      bg = scheme.none, syle = "reverse" },
    jsonNumError =           { fg = scheme.red,      bg = scheme.none, syle = "reverse" },
    jsonQuote =              { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    jsonTrailingCommaError = { fg = scheme.red,      bg = scheme.none, syle = "reverse" },
    jsonMissingCommaError =  { fg = scheme.red,      bg = scheme.none, syle = "reverse" },
    jsonNoQuotesError =      { fg = scheme.red,      bg = scheme.none, syle = "reverse" },
    jsonString =             { fg = scheme.green,    bg = scheme.none, scheme.none },
    jsonBoolean =            { fg = scheme.purple,   bg = scheme.none, scheme.none },
    jsonCommentError =       { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    jsonSemicolonError =     { fg = scheme.red,      bg = scheme.none, syle = "reverse" },

    -------------
    -- CLOJURE --
    -------------
    clojureFunc =             { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    clojureRepeat =           { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    clojureParen =            { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    clojureAnonArg =          { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    clojureKeyword =          { fg = scheme.blue,     bg = scheme.none, scheme.none },
    clojureCond =             { fg = scheme.orange,   bg = scheme.none, scheme.none },
    clojureSpecial =          { fg = scheme.orange,   bg = scheme.none, scheme.none },
    clojureRegexpCharClass =  { fg = scheme.darkgrey, bg = scheme.none, style = "bold" },
    clojureMeta =             { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    clojureDeref =            { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    clojureQuote =            { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    clojureDefine =           { fg = scheme.orange,   bg = scheme.none, scheme.none },
    clojureVariable =         { fg = scheme.blue,     bg = scheme.none, scheme.none },
    clojureMacro =            { fg = scheme.orange,   bg = scheme.none, scheme.none },
    clojureCharacter =        { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    clojureStringEscape =     { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    clojureException =        { fg = scheme.red,      bg = scheme.none, scheme.none },
    clojureRegexp =           { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    clojureRegexpEscape =     { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    clojureUnquote =          { fg = scheme.yellow,   bg = scheme.none, scheme.none },

    -------------
    -- HASKELL --
    -------------
    haskellDeclKeyword =    { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    haskellType =           { fg = scheme.green,    bg = scheme.none, scheme.none },
    haskellWhere =          { fg = scheme.red,      bg = scheme.none, scheme.none },
    haskellImportKeywords = { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    haskellOperators =      { fg = scheme.red,      bg = scheme.none, scheme.none },
    haskellDelimiter =      { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    haskellIdentifier =     { fg = scheme.orange,   bg = scheme.none, scheme.none },
    haskellKeyword =        { fg = scheme.red,      bg = scheme.none, scheme.none },
    haskellNumber =         { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    haskellString =         { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    haskellBacktick =       { fg = scheme.orange,   bg = scheme.none, scheme.none },
    haskellDeriving =       { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    haskellAssocType =      { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    haskellPragma =         { fg = scheme.purple,   bg = scheme.none, scheme.none },
    haskellChar =           { fg = scheme.green,    bg = scheme.none, scheme.none },
    haskellStatement =      { fg = scheme.orange,   bg = scheme.none, scheme.none },
    haskellBottom =         { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    haskellBlockKeywords =  { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    haskellConditional =    { fg = scheme.orange,   bg = scheme.none, scheme.none },
    haskellLet =            { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    haskellDefault =        { fg = scheme.cyan,     bg = scheme.none, scheme.none },

    ---------
    -- PHP --
    ---------
    phpClass =        { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    phpFunction =     { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    phpFunctions =    { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    phpInclude =      { fg = scheme.purple,   bg = scheme.none, scheme.none },
    phpKeyword =      { fg = scheme.purple,   bg = scheme.none, scheme.none },
    phpParent =       { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    phpType =         { fg = scheme.purple,   bg = scheme.none, scheme.none },
    phpSuperGlobals = { fg = scheme.red,      bg = scheme.none, scheme.none },

    ----------
    -- RUST --
    ----------
    rustCommentLineDocError =  { fg = scheme.grey,     bg = scheme.none, scheme.none },
    rustCommentBlock =         { fg = scheme.grey,     bg = scheme.none, scheme.none },
    rustDeriveTrait =          { fg = scheme.green,    bg = scheme.none, scheme.none },
    SpecialComment =           { fg = scheme.grey,     bg = scheme.none, scheme.none },
    rustCommentLine =          { fg = scheme.grey,     bg = scheme.none, scheme.none },
    rustCommentBlockDoc =      { fg = scheme.grey,     bg = scheme.none, scheme.none },
    rustExternCrate =          { fg = scheme.red,      bg = scheme.none, style = "bold" },
    rustIdentifier =           { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    rustCommentLineDoc =       { fg = scheme.grey,     bg = scheme.none, scheme.none },
    rustCommentBlockDocError = { fg = scheme.grey,     bg = scheme.none, scheme.none },

    -----------
    -- C/C++ --
    -----------
    cType =             { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    cStorageClass =     { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cStructure =        { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    cInclude =          { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cppStructure =      { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cppModifier =       { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cppOperator =       { fg = scheme.pink,     bg = scheme.none, scheme.none },
    cppAccess =         { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cppStatement =      { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cppConstant =       { fg = scheme.red,      bg = scheme.none, scheme.none },
    cTODO =             { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cConstant =         { fg = scheme.orange,   bg = scheme.none, scheme.none },
    cSpecial =          { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    cSpecialCharacter = { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    cString =           { fg = scheme.green,    bg = scheme.none, scheme.none },
    cppType =           { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cppStorageClass =   { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cPreCondit =        { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cPreConditMatch =   { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cOperator =         { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cStatement =        { fg = scheme.purple,   bg = scheme.none, scheme.none },
    cCppString =        { fg = scheme.green,    bg = scheme.none, scheme.none },

    --------
    -- C# --
    --------
    csBraces =                 { fg = scheme.foreground, bg = scheme.none, scheme.none },
    csEndColon =               { fg = scheme.foreground, bg = scheme.none, scheme.none },
    csLogicSymbols =           { fg = scheme.foreground, bg = scheme.none, scheme.none },
    csParens =                 { fg = scheme.foreground, bg = scheme.none, scheme.none },
    csOpSymbols =              { fg = scheme.grey,  bg = scheme.none, scheme.none },
    csInterpolationDelimiter = { fg = scheme.grey,  bg = scheme.none, scheme.none },
    csInterpolationAlignDel =  { fg = scheme.grey,  bg = scheme.none, syle = "bold" },
    csInterpolationFormat =    { fg = scheme.grey,  bg = scheme.none, scheme.none },
    csInterpolationFormatDel = { fg = scheme.grey,  bg = scheme.none, syle = "bold" },

    --------------
    -- CUCUMBER --
    --------------
    cucumberThenAnd =         { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    cucumberFeature =         { fg = scheme.red,      bg = scheme.none, syle = "bold" },
    cucumberScenarioOutline = { fg = scheme.purple,   bg = scheme.none, syle = "bold" },
    cucumberThen =            { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    cucumberUnparsed =        { fg = scheme.orange,   bg = scheme.none, scheme.none },
    cucumberGiven =           { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    cucumberWhenAnd =         { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    cucumberBackground =      { fg = scheme.purple,   bg = scheme.none, syle = "bold" },
    cucumberScenario =        { fg = scheme.purple,   bg = scheme.none, syle = "bold" },
    cucumberWhen =            { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    cucumberTags =            { fg = scheme.grey,     bg = scheme.none, syle = "bold" },
    cucumberDelimiter =       { fg = scheme.grey,     bg = scheme.none, syle = "bold" },

    -----------
    -- SPELL --
    -----------
    SpellBad =   { fg = scheme.red,         bg = scheme.none, style = "italic,undercurl" },
    SpellCap =   { fg = scheme.dark_yellow, bg = scheme.none, scheme.none },
    SpellLocal = { fg = scheme.dark_yellow, bg = scheme.none, scheme.none },
    SpellRare =  { fg = scheme.dark_yellow, bg = scheme.none, scheme.none },

    ------------
    -- ELIXIR --
    ------------
    elixirModuleDeclaration = { fg = scheme.orange,   bg = scheme.none, scheme.none },
    elixirOperator =          { fg = scheme.orange,   bg = scheme.none, scheme.none },
    elixirModuleDefine =      { fg = scheme.purple,   bg = scheme.none, scheme.none },
    elixirDocString =         { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    elixirInclude =           { fg = scheme.red,      bg = scheme.none, scheme.none },
    elixirAlias =             { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    elixirAtom =              { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    elixirBlockDefinition =   { fg = scheme.purple,   bg = scheme.none, scheme.none },

    ------------
    -- GOLANG --
    ------------
    goField =        { fg = scheme.red,    bg = scheme.none, scheme.none },
    goMethod =       { fg = scheme.cyan,   bg = scheme.none, scheme.none },
    goType =         { fg = scheme.purple, bg = scheme.none, scheme.none },
    goUnsignedInts = { fg = scheme.purple, bg = scheme.none, scheme.none },
    goDeclaration =  { fg = scheme.cyan,   bg = scheme.none, scheme.none },

    ------------
    -- PYTHON --
    ------------
    pythonEscape =           { fg = scheme.red,       bg = scheme.none, scheme.none },
    pythonSelf =             { fg = scheme.darkgrey,  bg = scheme.none, style = "italic" },
    pythonSelfArg =          { fg = scheme.lightgrey, bg = scheme.none, style = "italic" },
    pythonImport =           { fg = scheme.purple,    bg = scheme.none, scheme.none },
    pythonBuiltin =          { fg = scheme.cyan,      bg = scheme.none, scheme.none },
    pythonModule =           { fg = scheme.purple,    bg = scheme.none, scheme.none },
    pythonStringDelimiter =  { fg = scheme.green,     bg = scheme.none, scheme.none },
    pythonParam =            { fg = scheme.orange,    bg = scheme.none, scheme.none },
    pythonFunction =         { fg = scheme.darkcyan,  bg = scheme.none, scheme.none },
    pythonKeyword =          { fg = scheme.darkcyan,  bg = scheme.none, scheme.none },
    pythonStatement =        { fg = scheme.purple,    bg = scheme.none, scheme.none },
    pythonClass =            { fg = scheme.darkcyan,  bg = scheme.none, scheme.none },
    pythonOperator =         { fg = scheme.purple,    bg = scheme.none, scheme.none },
    pythonSymbol =           { fg = scheme.cyan,      bg = scheme.none, scheme.none },
    pythonBytes =            { fg = scheme.green,     bg = scheme.none, style = "italic" },
    pythonBytesError =       { fg = scheme.darkred,   bg = scheme.none, scheme.none },
    pythonBytesEscapeError = { fg = scheme.darkred,   bg = scheme.none, scheme.none },
    pythonBytesEscape =      { fg = scheme.yellow,    bg = scheme.none, scheme.none },
    pythonRawBytes =         { fg = scheme.green,     bg = scheme.none, scheme.none },
    pythonBytesContent =     { fg = scheme.green,     bg = scheme.none, scheme.none },

    ----------------
    -- PURESCRIPT --
    ----------------
    purescriptKeyword =     { fg = scheme.purple, bg = scheme.none, scheme.none },
    purescriptModuleName =  { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    purescriptType =        { fg = scheme.yellow, bg = scheme.none, scheme.none },
    purescriptTypeVar =     { fg = scheme.red,    bg = scheme.none, scheme.none },
    purescriptIdentifier =  { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    purescriptConstructor = { fg = scheme.red,    bg = scheme.none, scheme.none },
    purescriptOperator =    { fg = scheme.foreground,  bg = scheme.none, scheme.none },

    ---------
    -- VIM --
    ---------
    vimSep =          { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    vimCommentTitle = { fg = scheme.grey,     bg = scheme.none, syle = "bold" },
    vimLineComment =  { fg = scheme.grey,     bg = scheme.none, syle = "italic" },
    vimParenSep =     { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    vimFuncName =     { fg = scheme.purple,   bg = scheme.none, scheme.none },
    vimHighlight =    { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    vimUserFunc =     { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    vimVar =          { fg = scheme.red,      bg = scheme.none, scheme.none },
    vimLet =          { fg = scheme.blue,     bg = scheme.none, scheme.none },
    vimNorm =         { fg = scheme.blue,     bg = scheme.none, scheme.none },
    vimBracket =      { fg = scheme.foreground,    bg = scheme.none, scheme.none },
    vimMapModKey =    { fg = scheme.orange,   bg = scheme.none, scheme.none },
    vimNotation =     { fg = scheme.orange,   bg = scheme.none, scheme.none },
    vimGroup =        { fg = scheme.blue,     bg = scheme.none, scheme.none },
    vimContinue =     { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    vimSetSep =       { fg = scheme.darkgrey, bg = scheme.none, scheme.none },
    vimHiGroup =      { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    vimFunction =     { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    vimFuncSID =      { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    vimCommand =      { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    vimNotFunc =      { fg = scheme.blue,     bg = scheme.none, scheme.none },
    vimFuncVar =      { fg = scheme.purple,   bg = scheme.none, scheme.none },
    vimMapLHS =       { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    vimMap =          { fg = scheme.aqua,     bg = scheme.none, scheme.none },



    ---------
    -- ZSH --
    ---------
    zshSubst =       { fg = scheme.red,    bg = scheme.none, scheme.none },
    zshCommands =    { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    zshKeyword =     { fg = scheme.purple, bg = scheme.none, scheme.none },
    zshTypes =       { fg = scheme.purple, bg = scheme.none, scheme.none },
    zshDeref =       { fg = scheme.red,    bg = scheme.none, scheme.none },
    zshShortDeref =  { fg = scheme.red,    bg = scheme.none, scheme.none },
    zshVariableDef = { fg = scheme.orange, bg = scheme.none, scheme.none },
    zshSubstDelim =  { fg = scheme.grey,   bg = scheme.none, scheme.none },
    zshFunction =    { fg = scheme.cyan,   bg = scheme.none, scheme.none },

    ----------
    -- RUBY --
    ----------
    rubyInstanceVariable =          { fg = scheme.red,      bg = scheme.none, scheme.none },
    rubyBlockParameterList =        { fg = scheme.red,      bg = scheme.none, scheme.none },
    rubyRegexp =                    { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    rubyRegexpDelimiter =           { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    rubyStringDelimiter =           { fg = scheme.green,    bg = scheme.none, scheme.none },
    rubySymbol =                    { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    rubyClass =                     { fg = scheme.purple,   bg = scheme.none, scheme.none },
    rubyConstant =                  { fg = scheme.yellow,   bg = scheme.none, scheme.none },
    rubyBlockParameter =            { fg = scheme.red,      bg = scheme.none, scheme.none },
    rubyEscape =                    { fg = scheme.red,      bg = scheme.none, scheme.none },
    rubyControl =                   { fg = scheme.purple,   bg = scheme.none, scheme.none },
    rubyFunction =                  { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    rubyGlobalVariable =            { fg = scheme.red,      bg = scheme.none, scheme.none },
    rubyCapitalizedMethod =         { fg = scheme.purple,   bg = scheme.none, scheme.none },
    rubyInclude =                   { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    rubyIncluderubyGlobalVariable = { fg = scheme.red,      bg = scheme.none, scheme.none },
    rubyBlock =                     { fg = scheme.purple,   bg = scheme.none, scheme.none },
    rubyInterpolation =             { fg = scheme.cyan,     bg = scheme.none, scheme.none },
    rubyInterpolationDelimiter =    { fg = scheme.red,      bg = scheme.none, scheme.none },
    rubyKeyword =                   { fg = scheme.darkcyan, bg = scheme.none, scheme.none },
    rubyModule =                    { fg = scheme.purple,   bg = scheme.none, scheme.none },
    rubyDefine =                    { fg = scheme.purple,   bg = scheme.none, scheme.none },
    rubyPseudoVariable =            { fg = scheme.red,      bg = scheme.none, scheme.none },

    ----------
    -- JAVA --
    ----------
    javaParen =        { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    javaOperator =     { fg = scheme.orange, bg = scheme.none, scheme.none },
    javaVarArg =       { fg = scheme.green,  bg = scheme.none, scheme.none },
    javaParen1 =       { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    javaParen2 =       { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    javaParen3 =       { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    javaParen4 =       { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    javaParen5 =       { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    javaAnnotation =   { fg = scheme.cyan,   bg = scheme.none, scheme.none },
    javaDocTags =      { fg = scheme.blue,   bg = scheme.none, scheme.none },
    javaCommentTitle = { fg = scheme.grey,   bg = scheme.none, scheme.none },

    -----------
    -- OCAML --
    -----------
    ocamlOperator =       { fg = scheme.grey,   bg = scheme.none, scheme.none },
    ocamlArrow =          { fg = scheme.orange, bg = scheme.none, scheme.none },
    ocamlKeyChar =        { fg = scheme.orange, bg = scheme.none, scheme.none },
    ocamlInfixOpKeyword = { fg = scheme.red,    bg = scheme.none, scheme.none },
    ocamlConstructor =    { fg = scheme.orange, bg = scheme.none, scheme.none },

    ---------
    -- LUA --
    ---------
    luaFunction =             { fg = scheme.cyan,       bg = scheme.none, scheme.none },
    luaTable =                { fg = scheme.orange,     bg = scheme.none, scheme.none },
    luaIn =                   { fg = scheme.red,        bg = scheme.none, scheme.none },
    luaStatement =            { fg = scheme.darkyellow, bg = scheme.none, style = "bold" },
    luaKeyword =              { fg = scheme.darkorange, bg = scheme.none, style = "bold" },
    luaMyKeyword =            { fg = scheme.violet,     bg = scheme.none, style = "bold" },
    luaFunctionCall =         { fg = scheme.darkblue,   bg = scheme.none, scheme.none },
    luaSpecialFunctions =     { fg = scheme.darkblue,   bg = scheme.none, scheme.none },
    luaMetatableEvents =      { fg = scheme.purple,     bg = scheme.none, scheme.none },

    -----------
    -- SCALA --
    -----------
    scalaTypeTypePostDeclaration = { fg = scheme.yellow, bg = scheme.none, scheme.none },
    scalaInstanceDeclaration =     { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    scalaInterpolation =           { fg = scheme.cyan,   bg = scheme.none, scheme.none },
    scalaOperator =                { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    scalaNameDefinition =          { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    scalaCaseFollowing =           { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    scalaCapitalWord =             { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    scalaTypeExtension =           { fg = scheme.foreground,  bg = scheme.none, scheme.none },
    scalaKeyword =                 { fg = scheme.red,    bg = scheme.none, style = "bold" },
    scalaKeywordModifier =         { fg = scheme.red,    bg = scheme.none, scheme.none },
    scalaSpecial =                 { fg = scheme.cyan,   bg = scheme.none, scheme.none },
    scalaTypeDeclaration =         { fg = scheme.yellow, bg = scheme.none, scheme.none },

    -----------
    --  SQL  --
    -----------
    SqlKeyword = { fg = scheme.red, bg = scheme.none, scheme.none },

  }

  return syntax
end

---Color table for the plugins
--@return syntax table: table with the groups and its respective colors
function setup.load_plugins()
  ---------------------
  --  PLUGIN COLORS  --
  ---------------------
  local syntax = {
    -----------------------
    -- TREESITTER COLORS --
    -----------------------
    TSFloat =           { fg = scheme.orange,     bg = scheme.none, scheme.none },
    TSFunction =        { fg = scheme.aqua,       bg = scheme.none, style = "italic" },
    TSType =            { fg = scheme.yellow,     bg = scheme.none, scheme.none },
    TSTypeBuiltin =     { fg = scheme.yellow,     bg = scheme.none, scheme.none },
    TSLabel =           { fg = scheme.darkyellow, bg = scheme.none, scheme.none },
    TSCharacter =       { fg = scheme.orange,     bg = scheme.none, scheme.none },
    TSConditional =     { fg = scheme.red,        bg = scheme.none, scheme.none },
    TSConstant =        { fg = scheme.orange,     bg = scheme.none, scheme.none },
    TSConstBuiltin =    { fg = scheme.orange,     bg = scheme.none, scheme.none },
    TSConstMacro =      { fg = scheme.orange,     bg = scheme.none, scheme.none },
    TSFuncBuiltin =     { fg = scheme.aqua,       bg = scheme.none, scheme.none },
    TSMethod =          { fg = scheme.aqua,       bg = scheme.none, scheme.none },
    TSStructure =       { fg = scheme.purple,     bg = scheme.none, scheme.none },
    TSTagDelimiter =    { fg = scheme.green,      bg = scheme.none, scheme.none },
    TSNumber =          { fg = scheme.red,        bg = scheme.none, scheme.none },
    TSFuncMacro =       { fg = scheme.aqua,       bg = scheme.none, scheme.none },
    TSInclude =         { fg = scheme.cyan,       bg = scheme.none, scheme.none },
    TSKeyword =         { fg = scheme.red,        bg = scheme.none, style = "italic" },
    TSException =       { fg = scheme.darkred,    bg = scheme.none, scheme.none },
    TSBoolean =         { fg = scheme.darkyellow, bg = scheme.none, scheme.none },
    TSError =           { fg = scheme.darkred,    bg = scheme.none, scheme.none },
    TSString =          { fg = scheme.green,      bg = scheme.none, scheme.none },
    TSStringEscape =    { fg = scheme.orange,     bg = scheme.none, scheme.none },
    TSStringRegex =     { fg = scheme.red,        bg = scheme.none, scheme.none },
    TSProperty =        { fg = scheme.darkcyan,   bg = scheme.none, scheme.none },
    TSField =           { fg = scheme.purple,     bg = scheme.none, scheme.none },
    TSParameter =       { fg = scheme.cyan,       bg = scheme.none, scheme.none },
    TSVariable =        { fg = scheme.cyan,       bg = scheme.none, style = "italic" },
    TSPunctBracket =    { fg = scheme.foreground,      bg = scheme.none, scheme.none },
    TSOperator =        { fg = scheme.foreground,      bg = scheme.none, scheme.none },
    TSVariableBuiltin = { fg = scheme.orange,     bg = scheme.none, scheme.none },
    TSConstructor =     { fg = scheme.darkyellow, bg = scheme.none, scheme.none },

    ----------------
    -- LSP COLORS --
    ----------------
    LspDiagnosticsVirtualTextHint =        { fg = scheme.custom_2,    bg = scheme.none, scheme.none },
    LspDiagnosticsSignWarning =            { fg = scheme.darkorange,  bg = scheme.none, scheme.none },
    LspDiagnosticsSignInformation =        { fg = scheme.custom_3,    bg = scheme.none, scheme.none },
    LspDiagnosticsSignHint =               { fg = scheme.custom_2,    bg = scheme.none, scheme.none },
    LspDiagnosticsFloatingHint =           { fg = scheme.custom_2,    bg = scheme.none, style = "underline" },
    LspDiagnosticsSignError =              { fg = scheme.darkred,     bg = scheme.none, scheme.none },
    LspDiagnosticsDefaultWarning =         { fg = scheme.darkorange,  bg = scheme.none, scheme.none },
    LspDiagnosticsDefaultError =           { fg = scheme.darkred,     bg = scheme.none, scheme.none },
    LspDiagnosticsFloatingError =          { fg = scheme.darkred,     bg = scheme.none, style = "underline" },
    LspDiagnosticsFloatingWarning =        { fg = scheme.darkorange,  bg = scheme.none, style = "underline" },
    LspDiagnosticsFloatingInformation =    { fg = scheme.custom_3,    bg = scheme.none, style = "underline" },
    LspDiagnosticsUnderlineInformation =   { fg = scheme.none,        bg = scheme.none, style = "underline" },
    LspDiagnosticsUnderlineHint =          { fg = scheme.none,        bg = scheme.none, style = "underline" },
    LspDiagnosticsDefaultInformation =     { fg = scheme.cyan,        bg = scheme.none, scheme.none },
    LspDiagnosticsDefaultHint =            { fg = scheme.custom_2,    bg = scheme.none, scheme.none },
    LspDiagnosticsUnderlineError =         { fg = scheme.none,        bg = scheme.none, style = "underline" },
    LspDiagnosticsVirtualTextError =       { fg = scheme.darkred,     bg = scheme.none, scheme.none },
    LspDiagnosticsVirtualTextWarning =     { fg = scheme.darkorange,  bg = scheme.none, scheme.none },
    LspDiagnosticsVirtualTextInformation = { fg = scheme.custom_3,    bg = scheme.none, scheme.none },
    LspDiagnosticsUnderlineWarning =       { fg = scheme.none,        bg = scheme.none, style = "underline" },
    LspReferenceText =                     { fg = scheme.darkorange,  bg = scheme.cyan, scheme.none },
    LspReferenceRead =                     { fg = scheme.darkorange,  bg = scheme.cyan, scheme.none },
    LspReferenceWrite =                    { fg = scheme.darkorange,  bg = scheme.cyan, scheme.none },

    ---------------
    --  LSPSAGA  --
    ---------------
    LspSagaRenamePromptPrefix = { fg = scheme.green,   bg = scheme.none, scheme.none },
    DiagnosticHint =            { fg = scheme.purple,  bg = scheme.none, scheme.none },
    DefinitionPreviewTitle =    { fg = scheme.yellow,  bg = scheme.none, scheme.none },
    LspSagaRenameBorder =       { fg = scheme.green,   bg = scheme.none, scheme.none },
    DiagnosticInformation =     { fg = scheme.blue,    bg = scheme.none, scheme.none },
    LspSagaDefPreviewBorder =   { fg = scheme.yellow,  bg = scheme.none, scheme.none },
    LspSagaHoverBorder =        { fg = scheme.cyan,    bg = scheme.none, scheme.none },
    DiagnosticWarning =         { fg = scheme.yellow,  bg = scheme.none, scheme.none },
    DiagnosticError =           { fg = scheme.darkred, bg = scheme.none, scheme.none },

    ---------------
    -- TELESCOPE --
    ---------------
    TelescopeNormal =         { fg = scheme.foreground,       bg = scheme.none, scheme.none },
    TelescopeSelection =      { fg = scheme.foreground,       bg = scheme.grey, style = "bold" },
    TelescopeSelectionCaret = { fg = scheme.red,         bg = scheme.none, scheme.none },
    TelescopeMultiSelection = { fg = scheme.lightgrey,   bg = scheme.none, scheme.none },
    TelescopeBorder =         { fg = scheme.darkorange,  bg = scheme.none, scheme.none },
    TelescopePromptBorder =   { fg = scheme.darkblue,    bg = scheme.none, scheme.none },
    TelescopeResultsBorder =  { fg = scheme.darkorange,  bg = scheme.none, scheme.none },
    TelescopePreviewBorder =  { fg = scheme.darkmagenta, bg = scheme.none, scheme.none },
    TelescopeMatching =       { fg = scheme.yellow,      bg = scheme.none, scheme.none },
    TelescopePromptPrefix =   { fg = scheme.red,         bg = scheme.none, scheme.none },
    TelescopePrompt =         { fg = scheme.red,         bg = scheme.none, scheme.none },

    ---------------
    -- NVIM TREE --
    ---------------
    NvimTreeNormal =      { fg = scheme.icon_grey,       bg = scheme.dark_black, scheme.none },
    NvimTreeGitDirty = { fg = scheme.yellow,       bg = scheme.none, scheme.none },
    NvimTreeGitNew = { fg = scheme.green,       bg = scheme.none, scheme.none },
    NvimTreeGitDeleted = { fg = scheme.red,       bg = scheme.none, scheme.none },
    NvimTreeGitStaged = { fg = scheme.blue,       bg = scheme.none, scheme.none },
    NvimTreeGitMerge = { fg = scheme.purple,       bg = scheme.none, scheme.none },
    NvimTreeGitRenamed = { fg = scheme.yellow,       bg = scheme.none, scheme.none },


    ---------------
    --  STARTIFY --
    ---------------
    startifyheader =  { fg = scheme.darkorange, bg = scheme.none, scheme.none },
    StartifyNumber =  { fg = scheme.pink,       bg = scheme.none, scheme.none },
    StartifyBracket = { fg = scheme.red,        bg = scheme.none, scheme.none },
    startifypath =    { fg = scheme.green,      bg = scheme.none, scheme.none },
    startifyslash =   { fg = scheme.blue,       bg = scheme.none, scheme.none },
    startifyfile =    { fg = scheme.darkred,    bg = scheme.none, scheme.none },

    ---------------
    --   NEOGIT  --
    ---------------
    NeogitDiffContextHighlight =   { fg = scheme.orange,    bg = scheme.lightgrey,  scheme.none },
    NeogitDiffDeleteHighlight =    { fg = scheme.darkred,   bg = scheme.lightgrey,  scheme.none },
    NeogitDiffAddHighlight =       { fg = scheme.darkgreen, bg = scheme.lightgrey,  scheme.none },
    NeogitHunkHeader =             { fg = scheme.foreground,     bg = scheme.Background, scheme.none },
    NeogitHunkHeaderHighlight =    { fg = scheme.blue,      bg = scheme.lightgrey,  scheme.none },
    NeogitBranch =                 { fg = scheme.yellow,    bg = scheme.none,       scheme.none },
    NeogitRemote =                 { fg = scheme.yellow,    bg = scheme.none,       scheme.none },
    NeogitObjectId =               { fg = scheme.purple,    bg = scheme.none,       scheme.none },

    ---------------
    -- GITGUTTER --
    ---------------
    GitGutterChange =  { fg = scheme.darkorange, bg = scheme.none, scheme.none },
    GitGutterAdd =     { fg = scheme.darkgreen,  bg = scheme.none, scheme.none },
    GitGutterDelete =  { fg = scheme.darkred,    bg = scheme.none, scheme.none },

    ----------------
    --  GitSigns  --
    ----------------
    GitSignsChange =   { fg = scheme.darkorange, bg = scheme.none, scheme.none },
    GitSignsChangeLn = { fg = scheme.darkorange, bg = scheme.none, scheme.none },
    GitSignsChangeNr = { fg = scheme.darkorange, bg = scheme.none, scheme.none },
    GitSignsAdd =      { fg = scheme.darkgreen,  bg = scheme.none, scheme.none },
    GitSignsAddLn =    { fg = scheme.darkgreen,  bg = scheme.none, scheme.none },
    GitSignsAddNr =    { fg = scheme.darkgreen,  bg = scheme.none, scheme.none },
    GitSignsDelete =   { fg = scheme.darkred,    bg = scheme.none, scheme.none },
    GitSignsDeleteLn = { fg = scheme.darkred,    bg = scheme.none, scheme.none },
    GitSignsDeleteNr = { fg = scheme.darkred,    bg = scheme.none, scheme.none },

    ----------------
    --  WHICHKEY  --
    ----------------
    WhichKeyGroup =     { fg = scheme.green, bg = scheme.none, scheme.none },
    WhichKeyDesc =      { fg = scheme.white, bg = scheme.none, scheme.none },
    WhichKeySeperator = { fg = scheme.red, bg = scheme.none, scheme.none },
    WhichKey =          { fg = scheme.blue, bg = scheme.none, scheme.none },
    WhichKeyFloat =     { fg = scheme.none, bg = scheme.dark_black, scheme.none },
  }

  return syntax
end

function setup.colors_terminal()
  g.terminal_color_0  = scheme.black
  g.terminal_color_1  = scheme.red
  g.terminal_color_2  = scheme.green
  g.terminal_color_3  = scheme.yellow
  g.terminal_color_4  = scheme.blue
  g.terminal_color_5  = scheme.purple
  g.terminal_color_6  = scheme.cyan
  g.terminal_color_7  = scheme.white
  g.terminal_color_8  = scheme.grey
  g.terminal_color_9  = scheme.red
  g.terminal_color_10 = scheme.green
  g.terminal_color_11 = scheme.yellow
  g.terminal_color_12 = scheme.blue
  g.terminal_color_13 = scheme.purple
  g.terminal_color_14 = scheme.cyan
  g.terminal_color_15 = scheme.white
end

return setup
