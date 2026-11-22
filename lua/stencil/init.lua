local M = {}

local p = {
  black = 0,
  red = 1,
  green = 2,
  yellow = 3,
  blue = 4,
  magenta = 5,
  cyan = 6,
  white = 7,
  bright_black = 8,
  bright_red = 9,
  bright_green = 10,
  bright_yellow = 11,
  bright_blue = 12,
  bright_magenta = 13,
  bright_cyan = 14,
  bright_white = 15,
}

local function build(bg)
  local light = bg == "light"
  local ghost = light and p.white or p.black
  local strong = light and p.black or p.white
  local line_bg = light and {} or { ctermbg = p.black }

  return {
    LineNr = { ctermfg = p.bright_black },
    NonText = { ctermfg = ghost },
    Whitespace = { ctermfg = ghost },
    SignColumn = { ctermfg = p.bright_black },
    FoldColumn = { ctermfg = p.bright_black },
    EndOfBuffer = { ctermfg = ghost },
    ModeMsg = { ctermfg = p.bright_black },
    CursorLine = line_bg,
    CursorColumn = line_bg,
    ColorColumn = line_bg,
    QuickFixLine = line_bg,
    CursorLineNr = { ctermfg = p.blue, bold = true },
    WinSeparator = { ctermfg = p.bright_black },
    VertSplit = { link = "WinSeparator" },
    MatchParen = light and { reverse = true, bold = true } or { ctermbg = p.black, bold = true },

    StatusLine = { ctermbg = p.black, ctermfg = p.white },
    StatusLineNC = { ctermbg = p.black, ctermfg = p.bright_black },
    TabLine = { ctermbg = p.black, ctermfg = p.bright_black },
    TabLineSel = { ctermfg = p.blue },
    TabLineFill = {},
    Pmenu = { ctermbg = p.black, ctermfg = p.white },
    PmenuSel = { reverse = true },
    PmenuSbar = { ctermbg = p.black },
    PmenuThumb = { ctermbg = p.bright_black },
    NormalFloat = { ctermbg = p.black, ctermfg = p.white },
    FloatBorder = { ctermfg = p.bright_black },
    FloatTitle = { ctermfg = strong, bold = true },
    WinBar = { ctermfg = strong, bold = true },
    WinBarNC = { ctermfg = p.bright_black },
    Folded = { ctermbg = p.black, ctermfg = p.bright_black },

    Visual = light and { reverse = true } or { ctermbg = p.black },
    Search = light and { reverse = true } or { ctermbg = p.bright_black, ctermfg = p.black },
    IncSearch = { ctermbg = p.yellow, ctermfg = p.black },
    CurSearch = { link = "IncSearch" },
    Substitute = { link = "IncSearch" },

    Conceal = { ctermfg = p.bright_black },
    SpecialKey = { ctermfg = p.bright_black },
    WildMenu = { link = "PmenuSel" },
    Underlined = { underline = true },

    DiffAdd = { ctermfg = p.green },
    DiffDelete = { ctermfg = p.red },
    DiffChange = { ctermfg = p.yellow },
    DiffText = { ctermfg = p.yellow, reverse = true },
    diffAdded = { link = "DiffAdd" },
    diffRemoved = { link = "DiffDelete" },
    diffChanged = { link = "DiffChange" },

    ErrorMsg = { ctermfg = p.red },
    WarningMsg = { ctermfg = p.yellow },
    Question = { ctermfg = p.green },
    MoreMsg = { ctermfg = p.green },
    Directory = { ctermfg = p.blue },
    Title = { ctermfg = p.blue },
    SpellBad = { undercurl = true },
    SpellCap = { undercurl = true },
    SpellRare = { undercurl = true },
    SpellLocal = { undercurl = true },

    DiagnosticError = { ctermfg = p.red },
    DiagnosticWarn = { ctermfg = p.yellow },
    DiagnosticInfo = { ctermfg = p.blue },
    DiagnosticHint = { ctermfg = p.cyan },
    DiagnosticOk = { ctermfg = p.green },
    DiagnosticUnderlineError = { undercurl = true },
    DiagnosticUnderlineWarn = { undercurl = true },
    DiagnosticUnderlineInfo = { undercurl = true },
    DiagnosticUnderlineHint = { undercurl = true },
    DiagnosticUnderlineOk = { undercurl = true },
    DiagnosticVirtualTextError = { link = "DiagnosticError" },
    DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
    DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
    DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
    DiagnosticVirtualTextOk = { link = "DiagnosticOk" },
    DiagnosticSignError = { link = "DiagnosticError" },
    DiagnosticSignWarn = { link = "DiagnosticWarn" },
    DiagnosticSignInfo = { link = "DiagnosticInfo" },
    DiagnosticSignHint = { link = "DiagnosticHint" },
    DiagnosticSignOk = { link = "DiagnosticOk" },
    DiagnosticFloatingError = { link = "DiagnosticError" },
    DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
    DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
    DiagnosticFloatingHint = { link = "DiagnosticHint" },
    DiagnosticFloatingOk = { link = "DiagnosticOk" },

    ComplHint = { ctermfg = p.bright_black },
    ComplMatchIns = { ctermfg = p.bright_black },
    CmpGhostText = { ctermfg = p.bright_black, italic = true },
    BlinkCmpGhostText = { ctermfg = p.bright_black, italic = true },
    LspInlayHint = { ctermfg = p.bright_black },
    LspCodeLens = { ctermfg = p.bright_black },
    LspCodeLensSeparator = { ctermfg = p.bright_black },

    TelescopeNormal = {},
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeTitle = { link = "FloatTitle" },
    TelescopeSelection = { link = "Visual" },
    TelescopeSelectionCaret = { link = "TelescopeSelection" },
    TelescopeMatching = { ctermfg = p.yellow, bold = true },
    TelescopePromptPrefix = { ctermfg = p.blue },

    Comment = { ctermfg = p.yellow },
    ["@comment"] = { link = "Comment" },
    ["@string.documentation"] = { link = "Comment" },

    String = { ctermfg = p.cyan },
    ["@string"] = { link = "String" },

    Number = { ctermfg = p.magenta },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Number" },
    Boolean = { link = "Number" },
    ["@boolean"] = { link = "Number" },
    ["@constant.builtin"] = { link = "Number" },
    ["@constant.builtin.rust"] = { nocombine = true },

    ["@function"] = { ctermfg = p.bright_red },
    ["@function.method"] = { link = "@function" },
    ["@constructor"] = { link = "@function" },
    ["@constructor.lua"] = { nocombine = true },
    ["@function.call"] = { nocombine = true },
    ["@function.method.call"] = { nocombine = true },
    ["@function.builtin"] = { nocombine = true },
    ["@function.macro"] = { nocombine = true },
    ["@type.definition"] = { ctermfg = p.green },

    ["@lsp.typemod.function.declaration"] = { link = "@function" },
    ["@lsp.typemod.function.definition"] = { link = "@function" },
    ["@lsp.typemod.method.declaration"] = { link = "@function" },
    ["@lsp.typemod.method.definition"] = { link = "@function" },

    ["@lsp.typemod.type.declaration"] = { link = "@type.definition" },
    ["@lsp.typemod.type.definition"] = { link = "@type.definition" },
    ["@lsp.typemod.class.declaration"] = { link = "@type.definition" },
    ["@lsp.typemod.class.definition"] = { link = "@type.definition" },
    ["@lsp.typemod.struct.declaration"] = { link = "@type.definition" },
    ["@lsp.typemod.struct.definition"] = { link = "@type.definition" },
    ["@lsp.typemod.enum.declaration"] = { link = "@type.definition" },
    ["@lsp.typemod.enum.definition"] = { link = "@type.definition" },
    ["@lsp.typemod.interface.declaration"] = { link = "@type.definition" },
    ["@lsp.typemod.interface.definition"] = { link = "@type.definition" },
    ["@lsp.typemod.typeParameter.declaration"] = { link = "@type.definition" },
    ["@lsp.typemod.typeParameter.definition"] = { link = "@type.definition" },

    ["@variable.definition"] = { ctermfg = p.blue },
    ["@lsp.typemod.variable.declaration"] = { link = "@variable.definition" },
    ["@lsp.typemod.variable.definition"] = { link = "@variable.definition" },
    ["@lsp.typemod.property.declaration"] = { link = "@variable.definition" },
    ["@lsp.typemod.property.definition"] = { link = "@variable.definition" },
    ["@lsp.typemod.enumMember.declaration"] = { link = "@variable.definition" },
    ["@lsp.typemod.enumMember.definition"] = { link = "@variable.definition" },
    ["@lsp.typemod.namespace.declaration"] = { link = "@variable.definition" },
    ["@lsp.typemod.namespace.definition"] = { link = "@variable.definition" },
  }
end

function M.load()
  vim.cmd.highlight("clear")

  vim.o.termguicolors = false
  vim.g.colors_name = "stencil"

  for group in pairs(vim.api.nvim_get_hl(0, {})) do
    vim.api.nvim_set_hl(0, group, {})
  end

  for group, opts in pairs(build(vim.o.background)) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
