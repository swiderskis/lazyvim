local M = {}

M.colors = {
  bg = "#ead4aa",
  fg = "#181425",
  text = "#181425",
  func = "#124e89",
  string = "#265c42",
  keyword = "#a22633",
  type = "#be4a2f",
  err = "#ff0044",
  comment = "#3a4466",
  highlight = "#e4a672",
  ruler = "#debc96",
  cursorline = "#debc96",
  preproc = "#b55088",
  statusline = "#debc96",
  modemsg = "#c28569",
  indent = "#c28569",
  active_indent = "#be4a2f",
  untracked = "#265c42",
  hidden = "#3a4466",
  cmp = "#debc96",
  cmp_cursorline = "#c28569",
  cmp_ghosttext = "#3a4466",
  cmp_bar = "#b86f50",
  cmp_bargutter = "#c28569",
  character = "#265c42",
}

function M.setup()
  local c = M.colors
  vim.cmd("highlight clear")
  vim.opt.background = "light"
  vim.cmd("syntax reset")
  vim.g.colors_name = "seb-theme"

  local hl = vim.api.nvim_set_hl
  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "NormalFloat", { fg = c.fg, bg = c.bg })
  hl(0, "Identifier", { fg = c.text })
  hl(0, "Comment", { fg = c.comment })
  hl(0, "String", { fg = c.string })
  hl(0, "Function", { fg = c.func })
  hl(0, "Keyword", { fg = c.keyword })
  hl(0, "Type", { fg = c.type })
  hl(0, "Error", { fg = c.err })
  hl(0, "CursorLine", { bg = c.cursorline })
  hl(0, "CursorLineNr", { bg = c.bg, bold = false })
  hl(0, "LineNr", { bg = c.bg, bold = false })
  hl(0, "LspReferenceText", { bg = c.highlight })
  hl(0, "ColorColumn", { bg = c.ruler })
  hl(0, "IncSearch", { bg = c.highlight, fg = "none" })
  hl(0, "MatchParen", { bg = c.highlight, fg = "none" })
  hl(0, "PreProc", { fg = c.preproc })
  hl(0, "StatusLine", { bg = c.statusline })
  hl(0, "StatusLineNC", { bg = c.statusline })
  hl(0, "ModeMsg", { fg = c.modemsg })
  hl(0, "Special", { fg = c.type })
  hl(0, "Delimiter", { fg = c.text })
  hl(0, "SnacksIndent", { fg = c.indent })
  hl(0, "SnacksIndentScope", { fg = c.active_indent })
  hl(0, "SnacksPickerListCursorLine", { bg = c.cursorline })
  hl(0, "SnacksPickerGitStatusUntracked", { fg = c.untracked })
  hl(0, "SnacksPickerPathHidden", { fg = c.hidden })
  hl(0, "SnacksPickerPathIgnored", { fg = c.hidden })
  hl(0, "BlinkCmpMenu", { bg = c.cmp })
  hl(0, "BlinkCmpKind", { bg = c.cmp })
  hl(0, "BlinkCmpMenuSelection", { bg = c.cmp_cursorline })
  hl(0, "BlinkCmpDoc", { bg = c.cmp })
  hl(0, "BlinkCmpDocBorder", { bg = c.cmp })
  hl(0, "BlinkCmpDocSeparator", { bg = c.cmp })
  hl(0, "BlinkCmpGhostText", { fg = c.cmp_ghosttext })
  hl(0, "BlinkCmpScrollBarThumb", { bg = c.cmp_bar })
  hl(0, "BlinkCmpScrollBarGutter", { bg = c.cmp_bargutter })
  hl(0, "Character", { fg = c.character })
end

return M
