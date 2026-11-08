-- Colours follow VS Code's Dark+ token colours, mapped onto treesitter captures.
local M = {}

local c = {
  fg = "#D4D4D4",
  comment = "#6A9955",
  string = "#CE9178",
  number = "#B5CEA8",
  keyword = "#569CD6",
  control = "#C586C0",
  func = "#DCDCAA",
  type = "#4EC9B0",
  variable = "#9CDCFE",
  constant = "#4FC1FF",
  regexp = "#D16969",
  escape = "#D7BA7D",
}

M.base_30 = {
  white = "#dee1e6",
  darker_black = "#1a1a1a",
  black = "#1E1E1E",
  black2 = "#252525",
  one_bg = "#282828",
  one_bg2 = "#313131",
  one_bg3 = "#3a3a3a",
  grey = "#444444",
  grey_fg = "#5a5a5a",
  grey_fg2 = "#646464",
  light_grey = "#6e6e6e",
  red = "#F44747",
  baby_pink = "#ea696f",
  pink = c.control,
  line = "#2e2e2e",
  green = c.comment,
  green1 = c.type,
  vibrant_green = c.number,
  blue = c.keyword,
  nord_blue = "#60a6e0",
  yellow = c.func,
  sun = c.escape,
  purple = c.control,
  dark_purple = "#b77bdf",
  teal = c.type,
  orange = c.string,
  cyan = c.variable,
  statusline_bg = "#242424",
  lightbg = "#303030",
  pmenu_bg = c.keyword,
  folder_bg = "#7A8A92",
}

M.base_16 = {
  base00 = "#1E1E1E",
  base01 = "#262626",
  base02 = "#303030",
  base03 = "#3C3C3C",
  base04 = "#464646",
  base05 = c.fg,
  base06 = "#E9E9E9",
  base07 = "#FFFFFF",
  base08 = c.variable,
  base09 = c.number,
  base0A = c.type,
  base0B = c.string,
  base0C = c.escape,
  base0D = c.func,
  base0E = c.control,
  base0F = c.fg,
}

M.polish_hl = {
  defaults = {
    Comment = { fg = c.comment },
  },
  syntax = {
    Boolean = { fg = c.keyword },
    Constant = { fg = c.constant },
    Statement = { fg = c.control },
    Include = { fg = c.control },
    Repeat = { fg = c.control },
    StorageClass = { fg = c.keyword },
    Special = { fg = c.keyword },
    SpecialChar = { fg = c.escape },
  },
  treesitter = {
    ["@comment"] = { fg = c.comment },
    ["@comment.documentation"] = { fg = c.comment },

    ["@keyword"] = { fg = c.control },
    ["@keyword.function"] = { fg = c.control },
    ["@keyword.type"] = { fg = c.control },
    ["@keyword.return"] = { fg = c.control },
    ["@keyword.conditional"] = { fg = c.control },
    ["@keyword.repeat"] = { fg = c.control },
    ["@keyword.exception"] = { fg = c.control },
    ["@keyword.import"] = { fg = c.control },
    ["@keyword.directive"] = { fg = c.control },
    ["@keyword.operator"] = { fg = c.keyword },
    ["@keyword.modifier"] = { fg = c.keyword },
    ["@keyword.storage"] = { fg = c.keyword },

    ["@boolean"] = { fg = c.keyword },
    ["@constant"] = { fg = c.type },
    ["@constant.builtin"] = { fg = c.keyword },
    ["@variable.builtin"] = { fg = c.keyword },

    ["@type"] = { fg = c.type },
    ["@type.builtin"] = { fg = c.type },
    ["@module"] = { fg = c.type },
    ["@constructor"] = { fg = c.type },

    ["@function"] = { fg = c.func },
    ["@function.call"] = { fg = c.func },
    ["@function.method"] = { fg = c.func },
    ["@function.method.call"] = { fg = c.func },
    ["@function.builtin"] = { fg = c.keyword },

    ["@variable"] = { fg = c.variable },
    ["@variable.parameter"] = { fg = c.variable },
    ["@variable.member"] = { fg = c.variable },
    ["@variable.member.key"] = { fg = c.variable },
    ["@property"] = { fg = c.variable },

    ["@string"] = { fg = c.string },
    ["@string.special.symbol"] = { fg = c.keyword },
    ["@string.regexp"] = { fg = c.regexp },
    ["@string.escape"] = { fg = c.escape },
    ["@label"] = { fg = c.string },
    ["@number"] = { fg = c.number },
    ["@number.float"] = { fg = c.number },

    ["@operator"] = { fg = c.fg },
    ["@punctuation.bracket"] = { fg = c.fg },
    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.special"] = { fg = c.keyword },

    ["@tag"] = { fg = c.keyword },
    ["@tag.attribute"] = { fg = c.variable },
    ["@tag.delimiter"] = { fg = "#808080" },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "dark_plus")

return M
