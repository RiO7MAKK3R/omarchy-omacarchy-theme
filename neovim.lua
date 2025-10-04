-- Omacarchy single-file colorscheme (macOS-inspired)

local palette = {
  bg        = "#1C1C1E",  -- dark graphite background
  bg_dark   = "#121212",  -- darker background for lines
  fg        = "#E5E5E5",  -- main text
  fg_dim    = "#8E8E93",  -- secondary text
  border    = "#AEB1B8",  -- subtle border gray
  panel     = "#2C2C2E",  -- status / float backgrounds

  silver    = "#C0C0C0",
  steel     = "#8E8E93",
  black     = "#000000",
  white     = "#FFFFFF",
}

local function hi(group, opts)
  local parts = { "highlight", group }
  if opts.fg then table.insert(parts, "guifg=" .. opts.fg) end
  if opts.bg then table.insert(parts, "guibg=" .. opts.bg) end
  if opts.gui then table.insert(parts, "gui=" .. opts.gui) end
  vim.cmd(table.concat(parts, " "))
end

local function apply()
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "omacarchy"

  vim.cmd("highlight clear")

  -- Core UI
  hi("Normal",       { fg = palette.fg, bg = palette.bg })
  hi("CursorLine",   { bg = palette.bg_dark })
  hi("CursorLineNr", { fg = palette.fg, bg = palette.bg })
  hi("LineNr",       { fg = palette.fg_dim, bg = palette.bg })
  hi("StatusLine",   { fg = palette.fg, bg = palette.panel })
  hi("StatusLineNC", { fg = palette.fg_dim, bg = palette.panel })
  hi("TabLine",      { fg = palette.fg_dim, bg = palette.bg_dark })
  hi("TabLineSel",   { fg = palette.bg, bg = palette.fg, gui = "bold" })
  hi("VertSplit",    { fg = palette.border, bg = palette.bg })
  hi("ColorColumn",  { bg = palette.silver })

  -- Syntax
  hi("Comment",      { fg = palette.fg_dim, gui = "italic" })
  hi("Constant",     { fg = palette.fg })
  hi("String",       { fg = palette.fg })
  hi("Character",    { fg = palette.fg })
  hi("Number",       { fg = palette.fg })
  hi("Boolean",      { fg = palette.fg })
  hi("Float",        { fg = palette.fg })
  hi("Identifier",   { fg = palette.fg })
  hi("Function",     { fg = palette.fg })
  hi("Statement",    { fg = palette.fg })
  hi("Conditional",  { fg = palette.fg })
  hi("Repeat",       { fg = palette.fg })
  hi("Label",        { fg = palette.fg })
  hi("Operator",     { fg = palette.fg })
  hi("Keyword",      { fg = palette.fg, gui = "bold" })
  hi("Exception",    { fg = palette.fg })
  hi("PreProc",      { fg = palette.fg })
  hi("Include",      { fg = palette.fg })
  hi("Define",       { fg = palette.fg })
  hi("Macro",        { fg = palette.fg })
  hi("Type",         { fg = palette.fg })
  hi("StorageClass", { fg = palette.fg })
  hi("Structure",    { fg = palette.fg })
  hi("Typedef",      { fg = palette.fg })
  hi("Special",      { fg = palette.fg })
  hi("SpecialComment",{ fg = palette.fg_dim })
  hi("Todo",         { fg = palette.bg, bg = palette.fg })

  -- Search / matches
  hi("Search",     { fg = palette.bg, bg = palette.fg_dim })
  hi("IncSearch",  { fg = palette.bg, bg = palette.fg })
  hi("MatchParen", { fg = palette.fg, bg = palette.silver, gui = "bold" })

  -- Diagnostics / LSP
  hi("DiagnosticError",          { fg = palette.fg })
  hi("DiagnosticWarn",           { fg = palette.fg_dim })
  hi("DiagnosticInfo",           { fg = palette.fg_dim })
  hi("DiagnosticHint",           { fg = palette.silver })
  hi("DiagnosticVirtualTextError", { fg = palette.fg })
  hi("DiagnosticVirtualTextWarn",  { fg = palette.fg_dim })
  hi("DiagnosticSignError",        { fg = palette.fg })
  hi("DiagnosticSignWarn",         { fg = palette.fg_dim })
  hi("LspReferenceText", { bg = palette.silver })
  hi("LspReferenceRead", { bg = palette.silver })
  hi("LspReferenceWrite", { bg = palette.silver })

  -- Popup / completion
  hi("Pmenu",      { fg = palette.fg, bg = palette.panel })
  hi("PmenuSel",   { fg = palette.bg, bg = palette.fg })
  hi("PmenuSbar",  { bg = palette.steel })
  hi("PmenuThumb", { bg = palette.silver })

  -- Telescope / Hop
  hi("TelescopeNormal",       { fg = palette.fg, bg = palette.panel })
  hi("TelescopePreviewNormal", { fg = palette.fg, bg = palette.bg_dark })
  hi("TelescopePromptNormal",  { fg = palette.fg, bg = palette.panel })
  hi("TelescopePromptPrefix",  { fg = palette.fg, bg = palette.panel })
  hi("TelescopePromptTitle",   { fg = palette.bg, bg = palette.fg })
  hi("TelescopePreviewTitle",  { fg = palette.bg, bg = palette.fg })

  hi("HopNextKey",       { fg = palette.fg, bg = palette.bg }) 
  hi("HopNextKey1",      { fg = palette.fg, bg = palette.bg })
  hi("HopNextKey2",      { fg = palette.fg_dim, bg = palette.bg })
  hi("LightspeedLabel",  { fg = palette.fg, bg = palette.bg })
  hi("LightspeedLabelDistant", { fg = palette.fg_dim, bg = palette.bg })

  -- Treesitter
  hi("TSKeyword",       { fg = palette.fg, gui = "bold" })
  hi("TSString",        { fg = palette.fg })
  hi("TSVariable",      { fg = palette.fg })
  hi("TSField",         { fg = palette.fg })
  hi("TSFunction",      { fg = palette.fg })
  hi("TSMethod",        { fg = palette.fg })
  hi("TSConstant",      { fg = palette.fg })
  hi("TSComment",       { fg = palette.fg_dim, gui = "italic" })
  hi("TSConstructor",   { fg = palette.fg })
  hi("TSType",          { fg = palette.fg })
  hi("TSOperator",      { fg = palette.fg })
  hi("TSParameter",     { fg = palette.fg_dim })
  hi("TSVariableBuiltin",{ fg = palette.fg })
  hi("TSNote",          { fg = palette.fg, bg = palette.silver })

  -- Floating windows
  hi("NormalFloat", { fg = palette.fg, bg = palette.panel })
  hi("FloatBorder", { fg = palette.border, bg = palette.panel })
  hi("WhichKey", { fg = palette.fg })
  hi("WhichKeyGroup", { fg = palette.fg })

  -- Git
  hi("GitSignsAdd",    { fg = palette.fg })
  hi("GitSignsChange", { fg = palette.fg_dim })
  hi("GitSignsDelete", { fg = palette.fg })

  -- Diff
  hi("DiffAdd",    { fg = palette.fg, bg = palette.bg })
  hi("DiffChange", { fg = palette.fg_dim, bg = palette.bg })
  hi("DiffDelete", { fg = palette.fg, bg = palette.bg })

  -- Terminal colors
  vim.g.terminal_color_0  = palette.bg
  vim.g.terminal_color_1  = palette.fg
  vim.g.terminal_color_2  = palette.fg_dim
  vim.g.terminal_color_3  = palette.fg_dim
  vim.g.terminal_color_4  = palette.border
  vim.g.terminal_color_5  = palette.fg
  vim.g.terminal_color_6  = palette.steel
  vim.g.terminal_color_7  = palette.fg
  vim.g.terminal_color_8  = palette.fg_dim
  vim.g.terminal_color_9  = palette.fg
  vim.g.terminal_color_10 = palette.fg_dim
  vim.g.terminal_color_11 = palette.fg_dim
  vim.g.terminal_color_12 = palette.border
  vim.g.terminal_color_13 = palette.fg
  vim.g.terminal_color_14 = palette.steel
  vim.g.terminal_color_15 = palette.white
end

local aug = vim.api.nvim_create_augroup("Omacarchy", { clear = true })
vim.api.nvim_create_autocmd({ "VimEnter", "UIEnter" }, {
  group = aug,
  callback = function() vim.schedule(apply) end,
})
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  group = aug,
  callback = function() vim.schedule(apply) end,
})

vim.api.nvim_create_user_command("ApplyOmacarchy", function() apply() end, {})

apply()

return { name = "omacarchy-local" }
