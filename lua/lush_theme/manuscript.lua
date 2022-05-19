--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--
--
-- Enable lush.ify on this file, run: :Lushify

local lush = require('lush')
local hsl = lush.hsl
local hsluv = lush.hsluv

local gb = { -- {{{
   bg0       = hsluv(61, 33, 83),
   bg1       = hsluv(61, 47, 89),
   grey0     = hsluv(49, 21, 48),
   grey1     = hsluv(52, 23, 56),
   grey2     = hsluv(59, 26, 64),
   grey3     = hsluv(58, 21, 68),
   fg0       = hsluv(37, 49, 33),
   fg1       = hsluv(39, 49, 26),
   fg2       = hsluv(40, 8, 24),
   red0      = hsluv(15, 83, 59),
   red       = hsluv(12, 75, 50),
   red1      = hsluv(12, 100, 32),
   aqua0     = hsluv(122, 45, 71),
   aqua      = hsluv(141, 63, 47),
   blue0     = hsluv(167, 39, 66),
   blue1     = hsluv(212, 60, 45),
   blue2     = hsluv(217, 98, 39),
   green0    = hsluv(90, 84, 72),
   green1    = hsluv(82, 97, 48),
   green2    = hsluv(96, 81, 48),
   orange0   = hsluv(32, 89, 66),
   orange    = hsluv(29, 98, 51),
   orange2   = hsluv(20, 99, 41),
   purple0   = hsluv(355, 48, 64),
   purple1   = hsluv(329, 34, 47),
   purple    = hsluv(333, 58, 39),
   yellow0   = hsluv(56, 87, 76),
   yellow    = hsluv(43, 99, 54),
   bg_red    = hsluv(12, 39, 48),
   bg_yellow = hsluv(40, 85, 51),
   bg_green  = hsluv(106, 54, 52),
} -- }}}

local bg0     = hsluv(75, 32, 96)  -- #f7f3e3
local bg1     = hsluv(75, 17, 90)

local black   = hsluv(0, 0, 0)     -- #000000
local blue    = hsluv(254, 94, 47) -- #1e6fcc
local green   = hsluv(124, 97, 38) -- #216609
local lgreen  = hsluv(103, 21, 91) -- #dfeacc
local red     = hsluv(16, 86, 48)  -- #cc3e28
local grey1   = hsluv(77, 12, 84)  -- #d8d5c7
local grey2   = hsluv(77, 13, 76)  -- #bfbcaf
local grey3   = hsluv(0, 0, 70)    -- #aaaaaa
local grey4   = hsluv(0, 0, 50)    -- #777777
local grey5   = hsluv(0, 0, 36)    -- #555555
local yellow0 = hsluv(77, 57, 89)  -- #f2de91
local yellow1 = hsluv(59, 100, 60) -- #b58900
local yellow2 = hsluv(30, 100, 44)
local orange  = hsluv(30, 100, 44) -- #a55000
local orange2 = hsluv(46, 85, 75)
local purple  = hsluv(277, 86, 30) -- #5c21a5
local white   = hsluv(0, 0, 100)   -- #ffffff
local cyan    = hsluv(185, 96, 53) -- #158c86

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
   return {
      -- Predefined Highlight Groups {{{
      Black  { fg = black },
      Red    { fg = red },
      Green  { fg = green },
      Yellow { fg = yellow1 },
      Orange { fg = orange },
      Aqua   { },
      Blue   { fg = blue },
      Purple { fg = purple },
      Grey   { fg = grey4 },

      BlackBold  { Black,  gui = 'bold' },
      RedBold    { Red,    gui = 'bold' },
      GreenBold  { Green,  gui = 'bold' },
      YellowBold { Yellow, gui = 'bold' },
      OrangeBold { Orange, gui = 'bold' },
      AquaBold   { Aqua,   gui = 'bold' },
      BlueBold   { Blue,   gui = 'bold' },
      PurpleBold { Purple, gui = 'bold' },
      GreyBold   { Grey,   gui = 'bold' },

      BlackItalic    { Black,  gui = 'italic' },
      RedItalic    { Red,    gui = 'italic' },
      GreenItalic  { Green,  gui = 'italic' },
      YellowItalic { Yellow, gui = 'italic' },
      OrangeItalic { Orange, gui = 'italic' },
      AquaItalic   { Aqua,   gui = 'italic' },
      BlueItalic   { Blue,   gui = 'italic' },
      PurpleItalic { Purple, gui = 'italic' },
      GreyItalic   { Grey,   gui = 'italic' },
      -- }}}

      -- Standart {{{

      -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
      -- groups, mostly used for styling UI elements.
      -- An empty definition `{}` will clear all styling, leaving elements looking
      -- like the 'Normal' group.
      -- To be able to link to a group, it must already be defined, so you may have
      -- to reorder items as you go.
      --
      -- See :h highlight-groups

      ColorColumn  { bg = bg0 }, -- Columns set with 'colorcolumn'
      -- Conceal      { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
      Cursor       { bg = hsl('#80aa9e') }, -- Character under the cursor
      -- Cursor       { gui = 'reverse' }, -- Character under the cursor
      -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
      -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
      -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
      CursorLine   { bg = bg0 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
      Directory    { fg = purple }, -- Directory names (and other special names in listings)
      -- DiffAdd      { }, -- Diff mode: Added line |diff.txt|
      -- DiffChange   { }, -- Diff mode: Changed line |diff.txt|
      -- DiffDelete   { }, -- Diff mode: Deleted line |diff.txt|
      -- DiffText     { }, -- Diff mode: Changed text within a changed line |diff.txt|
      -- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
      -- TermCursor   { }, -- Cursor in a focused terminal
      -- TermCursorNC { }, -- Cursor in an unfocused terminal
      ErrorMsg     { RedBold }, -- Error messages on the command line
      VertSplit    { fg = grey2 }, -- Column separating vertically split windows
      Folded       { fg = yellow2, bg = bg1.darken(2) }, -- Line used for closed folds
      FoldColumn   { fg = black, bg = grey1 }, -- 'foldcolumn'
      SignColumn   { FoldColumn }, -- Column where |signs| are displayed
      IncSearch    { bg = yellow0 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
      -- Substitute   { }, -- |:substitute| replacement text highlighting
      LineNr       { Grey }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
      CursorLineNr { Blue }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
      MatchParen   { gui = 'bold' }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
      -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
      -- MsgArea      { }, -- Area for messages and cmdline
      -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
      MoreMsg      { Black }, -- |more-prompt|
      NonText      { fg = bg1 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
      Normal       { fg = black, bg = bg1 }, -- Normal text
      NormalFloat  { fg = black, bg = grey1 }, -- Normal text in floating windows.
      -- NormalNC     { }, -- normal text in non-current windows
      Pmenu        { fg = black, bg = grey1 }, -- Popup menu: Normal item.
      PmenuSel     { fg = black, bg = grey2, gui = 'bold' }, -- Popup menu: Selected item.
      -- PmenuSbar    { }, -- Popup menu: Scrollbar.
      PmenuThumb   { PmenuSel }, -- Popup menu: Thumb of the scrollbar.
      Question     { Black }, -- |hit-enter| prompt and yes/no questions
      -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
      Search       { bg = yellow0 }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
      SpecialKey   { Blue }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
      SpellBad     { fg = red, gui = 'bold,undercurl' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
      SpellCap     { fg = purple, gui = 'undercurl' }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
      SpellLocal   { fg = green, gui = 'undercurl' }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
      SpellRare    { fg = purple, gui = 'undercurl' }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
      StatusLine   { fg = black, bg = grey1 }, -- Status line of current window
      StatusLineNC { fg = black, bg = grey1 }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
      TabLine      { fg = grey5, bg = grey2 }, -- Tab pages line, not active tab page label
      TabLineFill  { fg = black, bg = grey2 }, -- Tab pages line, where there are no labels
      TabLineSel   { fg = black, bg = bg1, gui = 'bold' }, -- Tab pages line, active tab page label
      Title        { BlackBold }, -- Titles for output from ":set all", ":autocmd" etc.
      Visual       { bg = grey1 }, -- Visual mode selection
      -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
      WarningMsg   { fg = orange, gui = 'bold' }, -- Warning messages
      -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
      -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
      WildMenu     { PmenuSel }, -- Current match in 'wildmenu' completion

      -- }}}
      -- Syntax {{{
      -- Common vim syntax groups used for all kinds of code and markup.
      -- Commented-out groups should chain up to their preferred (*) group
      -- by default.
      --
      -- See :h group-name

      Comment        { Grey }, -- Any comment

      Constant       { Black }, -- (*) Any constant
      String         { Green }, --   A string constant: "this is a string"
      Character      { Green }, --   A character constant: 'c', '\n'
      Number         { Blue }, --   A number constant: 234, 0xff
      Boolean        { BlackBold }, --   A boolean constant: TRUE, false
      -- Float          { }, --   A floating point constant: 2.3e10

      Identifier     { Black }, -- (*) Any variable name
      Function       { fg = gbml.green }, --   Function name (also: methods for classes)

      Statement      { BlackBold }, -- (*) Any statement
      -- Conditional    { }, --   if, then, else, endif, switch, etc.
      -- Repeat         { }, --   for, do, while, etc.
      Label          { BlackBold }, --   case, default, etc.
      Operator       { Black }, --   "sizeof", "+", "*", etc.
      Keyword        { fg = gb.red }, --   any other keyword
      -- Exception      { }, --   try, catch, throw

      PreProc        { Yellow }, -- (*) Generic Preprocessor
      Include        { BlackBold }, --   Preprocessor #include
      -- Define         { }, --   Preprocessor #define
      Macro          { Orange }, --   Same as Define
      PreCondit      { Orange }, --   Preprocessor #if, #else, #endif, etc.

      Type           { BlackBold }, -- (*) int, long, char, etc.
      StorageClass   { BlackBold }, --   static, register, volatile, etc.
      -- Structure      { }, --   struct, union, enum, etc.
      -- Typedef        { }, --   A typedef

      Special        { Black }, -- (*) Any special symbol
      -- SpecialChar    { }, --   Special character in a constant
      -- Tag            { }, --   You can use CTRL-] on this
      -- Delimiter      { }, --   Character that needs attention
      -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
      -- Debug          { }, --   Debugging statements

      Underlined     { gui = "underline" }, -- Text that stands out, HTML links
      -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
      Error          { RedBold }, -- Any erroneous construct
      Todo           { fg = grey4, gui = 'bold' }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

      -- }}}
      -- LSP {{{
      -- These groups are for the native LSP client and diagnostic system. Some
      -- other LSP clients may use these groups, or use their own. Consult your
      -- LSP client's documentation.

      -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
      --
      -- LspReferenceText            { } , -- Used for highlighting "text" references
      -- LspReferenceRead            { } , -- Used for highlighting "read" references
      -- LspReferenceWrite           { } , -- Used for highlighting "write" references
      -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
      -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
      -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
      -- }}}
      -- Diagnostic {{{
      -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
      --
      -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
      -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
      -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
      -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
      -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
      -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
      -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
      -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
      -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
      -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
      -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
      -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
      -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
      -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
      -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
      -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
      -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
      -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
      -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
      -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
      -- }}}
      -- Treesitter {{{
      -- Tree-Sitter syntax groups. Most link to corresponding
      -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
      --
      -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
      --
      -- TSAttribute          { }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
      -- TSBoolean            { }, -- Boolean literals: `True` and `False` in Python.
      -- TSCharacter          { }, -- Character literals: `'a'` in C.
      -- TSCharacterSpecial   { }, -- Special characters.
      TSComment            { Comment }, -- Line comments and block comments.
      -- TSConditional        { }, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
      -- TSConstant           { }, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
      -- TSConstBuiltin       { }, -- Built-in constant values: `nil` in Lua.
      -- TSConstMacro         { }, -- Constants defined by macros: `NULL` in C.
      -- TSConstructor        { }, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
      -- TSDebug              { }, -- Debugging statements.
      -- TSDefine             { }, -- Preprocessor #define statements.
      -- TSError              { }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
      -- TSException          { }, -- Exception related keywords: `try`, `except`, `finally` in Python.
      -- TSField              { }, -- Object and struct fields.
      -- TSFloat              { }, -- Floating-point number literals.
      TSFunction           { Function }, -- Function calls and definitions.
      -- TSFuncBuiltin        { }, -- Built-in functions: `print` in Lua.
      -- TSFuncMacro          { }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
      -- TSInclude            { }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
      TSKeyword            { Keyword }, -- Keywords that don't fit into other categories.
      -- TSKeywordFunction    { }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
      -- TSKeywordOperator    { }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
      -- TSKeywordReturn      { }, -- Keywords like `return` and `yield`.
      -- TSLabel              { }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
      -- TSMethod             { }, -- Method calls and definitions.
      -- TSNamespace          { }, -- Identifiers referring to modules and namespaces.
      -- TSNone               { }, -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
      -- TSNumber             { }, -- Numeric literals that don't fit into other categories.
      -- TSOperator           { }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
      -- TSParameter          { }, -- Parameters of a function.
      -- TSParameterReference { }, -- References to parameters of a function.
      -- TSPreProc            { }, -- Preprocessor #if, #else, #endif, etc.
      -- TSProperty           { }, -- Same as `TSField`.
      -- TSPunctDelimiter     { }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
      -- TSPunctBracket       { }, -- Brackets, braces, parentheses, etc.
      -- TSPunctSpecial       { }, -- Special punctuation that doesn't fit into the previous categories.
      -- TSRepeat             { }, -- Keywords related to loops: `for`, `while`, etc.
      -- TSStorageClass       { }, -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
      -- TSString             { }, -- String literals.
      -- TSStringRegex        { }, -- Regular expression literals.
      -- TSStringEscape       { }, -- Escape characters within a string: `\n`, `\t`, etc.
      -- TSStringSpecial      { }, -- Strings with special meaning that don't fit into the previous categories.
      -- TSSymbol             { }, -- Identifiers referring to symbols or atoms.
      -- TSTag                { }, -- Tags like HTML tag names.
      -- TSTagAttribute       { }, -- HTML tag attributes.
      -- TSTagDelimiter       { }, -- Tag delimiters like `<` `>` `/`.
      -- TSText               { }, -- Non-structured text. Like text in a markup language.
      -- TSStrong             { }, -- Text to be represented in bold.
      -- TSEmphasis           { }, -- Text to be represented with emphasis.
      -- TSUnderline          { }, -- Text to be represented with an underline.
      -- TSStrike             { }, -- Strikethrough text.
      -- TSTitle              { }, -- Text that is part of a title.
      -- TSLiteral            { }, -- Literal or verbatim text.
      -- TSURI                { }, -- URIs like hyperlinks or email addresses.
      -- TSMath               { }, -- Math environments like LaTeX's `$ ... $`
      -- TSTextReference      { }, -- Footnotes, text references, citations, etc.
      -- TSEnvironment        { }, -- Text environments of markup languages.
      -- TSEnvironmentName    { }, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
      -- TSNote               { }, -- Text representation of an informational note.
      -- TSWarning            { }, -- Text representation of a warning note.
      -- TSDanger             { }, -- Text representation of a danger note.
      -- TSType               { }, -- Type (and class) definitions and annotations.
      -- TSTypeBuiltin        { }, -- Built-in types: `i32` in Rust.
      -- TSVariable           { }, -- Variable names that don't fit into other categories.
      -- TSVariableBuiltin    { }, -- Variable names defined by the language: `this` or `self` in Javascript.
      -- }}}

      -- Plugins {{{

      -- phaazon/hop.nvim {{{

      HopNextKey  { RedBold },
      HopNextKey1 { Yellow },
      HopNextKey2 { Yellow },
      -- HopUnmatched { }

      -- }}}
      -- chentau/marks.nvim {{{

      -- MarkSignHL     { }, -- Displayed mark signs.
      -- MarkSignNumHL  { }, -- The number line in a signcolumn.
      -- MarkVirtTextHL { }, -- Bookmark virtual text annotations.

      -- }}}
      -- romgrk/barbar.nvim {{{
      -- Meaning of terms:
      --
      -- format: "Buffer" + status + part
      --
      -- status:
      --      Current : current buffer
      --      Visible : visible but not current buffer
      --     Inactive : invisible but not current buffer
      --
      -- part:
      --         Icon : filetype icon
      --        Index : buffer index
      --          Mod : when modified
      --         Sign : the separator between buffers
      --       Target : letter in buffer-picking mode
      --

      -- BufferCurrent        { }, -- fg1,    bg5
      -- BufferCurrentIndex   { }, -- fg1,    bg5
      -- BufferCurrentMod     { }, -- blue,   bg5
      -- BufferCurrentSign    { }, -- grey2,  bg5
      -- BufferCurrentTarget  { }, -- red,    bg5,   'bold'
      --
      -- BufferVisible        { }, -- fg1,    bg3
      -- BufferVisibleIndex   { }, -- fg1,    bg3
      -- BufferVisibleMod     { }, -- blue,   bg3
      -- BufferVisibleSign    { }, -- grey2,  bg3
      -- BufferVisibleTarget  { }, -- yellow, bg3,   'bold'
      --
      -- BufferInactive       { }, -- grey1,  bg3
      -- BufferInactiveIndex  { }, -- grey1,  bg3
      -- BufferInactiveMod    { }, -- grey1,  bg3
      -- BufferInactiveSign   { }, -- grey0,  bg3
      -- BufferInactiveTarget { }, -- yellow, bg3,   'bold'
      --
      -- BufferTabpages    { }, -- bg0, grey2, 'bold' -- tabpage indicator
      BufferTabpageFill { bg = grey2 }, -- bg0, bg0 -- filler after the buffer section
      -- BufferOffset      { }, -- offset section, created with set_offset()

      -- }}}

      -- }}}
      -- Extended Syntax {{{

      -- JSON
      jsonKeyword { String },

      -- Lua
      luaFunction { Keyword },

      -- Make
      makeTarget { Function },

      -- Markdown {{{
      markdownCode       { Comment },
      markdownCodeBlock  { Comment },
      markdownListMarker { Keyword },
      markdownOrderedListMarker { Keyword },
      -- }}}

      -- Ruby {{{
      rubyAttribute        { Identifier },
      rubyClass            { Keyword },
      rubyClassVariable    { Directory },
      rubyConstant         { Constant },
      rubyDefine           { Keyword },
      rubyFunction         { Function },
      rubyInstanceVariable { Directory },
      rubyMacro            { Identifier },
      rubyModule           { rubyClass },
      rubyRegexp           { Orange },
      rubyRegexpCharClass  { Orange },
      rubyRegexpDelimiter  { Orange },
      rubyRegexpQuantifier { Orange },
      rubyRegexpSpecial    { Orange },
      rubyStringDelimiter  { String },
      rubySymbol           { Orange },
      -- }}}

      -- Rust {{{
      rustCommentBlockDoc { Comment },
      rustCommentLineDoc  { Comment },
      rustFuncCall        { Identifier },
      rustModPath         { Identifier },
      -- }}}

      -- Python
      pythonOperator { Keyword },

      -- Shell
      shFunctionKey { Keyword },

      -- SQL
      sqlKeyword { Keyword },

      -- Vimscript {{{
      VimCommentTitle { Todo },
      VimIsCommand    { Constant },
      vimGroup        { Constant },
      vimHiGroup      { Constant },
      -- }}}

      -- YAML
      yamlPlainScalar { String },

      -- }}}

  }
end)
return theme

-- vim: nowrap fdm=marker
