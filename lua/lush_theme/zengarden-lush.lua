--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP"`Yb
--    8888888P"                          I8  8I
--       88                              I8  8"
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8"8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8"  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8"_   8) ,d8     I8,
--  "Y8P"  "Y888888P""Y88P"`Y8P" "YY8P8P88P     `Y8
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require("lush").ify()`

local lush = require("lush")
local hsl = lush.hsl

local dark = {
  bg = hsl("#353839"),
  fg = hsl("#faebd7"),
}

local light = {
  bg = hsl("#faebd7"),
  fg = hsl("#353839"),
}

local colors = dark
if vim.o.background == "light" then
  colors = light
end

local white = hsl("#faebd7")
local black = hsl("#353839")
local fg = hsl("#faebd7")
local bg = hsl("#353839")
local grey = hsl("#686b6c")
local dark_grey = hsl("#505354")
local green = hsl("#53a776")
local dark_green = hsl("#177245")
local magenta = hsl("#a94fa6")
local dark_magenta = hsl("#721772")
local yellow = hsl("#d0a44c")
local dark_yellow = hsl("#967117")
local cyan = hsl("#5396a6")
local medium_cyan = hsl("#377c8b")
local dark_cyan = hsl("#176372")
local orange = hsl("#ff7639")
local dark_orange = hsl("#c04000")
local blue = hsl("#6493d3")
local medium_blue = hsl("#477ab7")
local dark_blue = hsl("#26619c")
local red = hsl("#f85e89")
local dark_red = hsl("#ba1d58")

if (vim.o.background == "light") then
	fg = hsl("#353839")
	bg = hsl("#faebd7")
else
	fg = hsl("#faebd7")
	bg = hsl("#353839")
end

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    ColorColumn    { bg = bg.lighten(5) }, -- Columns set with "colorcolumn"
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see "conceallevel")
    -- Cursor         { }, -- Character under the cursor
    CurSearch      { gui = "bold,reverse" }, -- Highlighting a search pattern under the cursor (see "hlsearch")
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see "guicursor")
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { bg = bg.lighten(5) }, -- Screen-column at the cursor, when "cursorcolumn" is set.
    CursorLine     { bg = bg.lighten(5) }, -- Screen-line at the cursor, when "cursorline" is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg = blue, gui = "bold" }, -- Directory names (and other special names in listings)
    DiffAdd        { fg = green }, -- Diff mode: Added line |diff.txt|
    DiffChange     { fg = blue }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { fg = red }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg = orange }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg       { bg = dark_red, fg = bg }, -- Error messages on the command line
    VertSplit      { fg = fg }, -- Column separating vertically split windows
    Folded         { bg = bg.lighten(10) }, -- Line used for closed folds
    FoldColumn     { fg = blue, gui = "bold" }, -- "foldcolumn"
    SignColumn     { }, -- Column where |signs| are displayed
    IncSearch      { bg = yellow, fg = bg }, -- "incsearch" highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    LineNr         { fg = grey }, -- Line number for ":number" and ":#" commands, and when "number" or "relativenumber" option is set.
    LineNrAbove    { fg = dark_red }, -- Line number for when the "relativenumber" option is set, above the cursor line
    LineNrBelow    { fg = dark_green }, -- Line number for when the "relativenumber" option is set, below the cursor line
    CursorLineNr   { gui = "bold" }, -- Like LineNr when "cursorline" or "relativenumber" is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when "cursorline" is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when "cursorline" is set for the cursor line
    MatchParen     { fg = cyan, gui = "bold" }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- "showmode" message (e.g., "-- INSERT -- ")
    MsgArea        { bg = bg.darken(10) }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of "display"
    -- MoreMsg        { }, -- |more-prompt|
    NonText        { fg = grey }, -- "@" at the end of the window, characters from "showbreak" and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn"t fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { fg = fg, bg = bg }, -- Normal text
    NormalFloat    { fg = fg.lighten(15), bg = bg.darken(15) }, -- Normal text in floating windows.
    FloatBorder    { fg = fg.lighten(15), bg = bg.darken(15) }, -- Border of floating windows.
    FloatTitle     { fg = cyan, gui = "bold" }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu          { fg = white, bg = dark_grey }, -- Popup menu: Normal item.
    PmenuSel       { fg = white, bg = dark_cyan }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    PmenuSbar      { bg = dark_cyan }, -- Popup menu: Scrollbar.
    PmenuThumb     { bg = cyan }, -- Popup menu: Thumb of the scrollbar.
    Question       { fg = fg, bg = dark_green, gui = "bold" }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    --Search       { bg = yellow.darken(25), fg = bg }, -- Last search pattern highlighting (see "hlsearch"). Also used for similar items that need to stand out.
    Search       { gui = "underline,bold" }, -- Last search pattern highlighting (see "hlsearch"). Also used for similar items that need to stand out.
    SpecialKey     { fg = orange }, -- Unprintable characters: text displayed differently from what it really is. But not "listchars" whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { fg = fg, bg = dark_cyan }, -- Status line of current window
    StatusLineNC   { fg = fg, bg = dark_grey }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine        { fg = fg, bg = dark_cyan }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title          { fg = cyan, gui = "bold" }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { gui = "reverse" }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = dark_red }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in "listchars"
    Winseparator   { fg = grey }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in "wildmenu" completion
    WinBar         { fg = fg, bg = dark_cyan }, -- Window bar of current window
    WinBarNC       { fg = fg, bg = dark_grey }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = grey, gui = "italic" }, -- Any comment

    Constant       { fg = green }, -- (*) Any constant
    String         { fg = green }, --   A string constant: "this is a string"
    Character      { fg = magenta }, --   A character constant: "c", "\n"
    Number         { fg = yellow }, --   A number constant: 234, 0xff
    Boolean        { fg = blue }, --   A boolean constant: TRUE, false
    Float          { fg = yellow }, --   A floating point constant: 2.3e10

    Identifier     { fg = cyan }, -- (*) Any variable name
    Function       { fg = cyan }, --   Function name (also: methods for classes)

    Statement      { fg = red }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    Keyword        { fg = fg.darken(15), gui = "italic" }, --   any other keyword
    Exception      { fg = red, gui = "italic" }, --   try, catch, throw

    PreProc        { fg = blue }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = yellow }, -- (*) int, long, char, etc.
    StorageClass   { fg = yellow, gui = "italic" }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    -- Special        { }, -- (*) Any special symbol
    SpecialChar    { fg = dark_orange }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. "\n")
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { bg = red, fg = bg }, -- Any erroneous construct
    Todo           { bg = yellow, fg = bg }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client"s documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = dark_red, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = orange, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = blue, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = cyan, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = green, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym("@text.literal")
    -- sym"@text.literal"
    -- sym"@text.literal"
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    sym"@text.todo"         { Todo }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { fg = dark_orange }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    sym"@namespace"         { fg = blue, gui = "italic" }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
