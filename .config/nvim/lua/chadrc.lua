-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "embark",
  hl_override = {
    LineNr = { fg = "white" },
    CursorLineNr = { fg = "purple", bold = true },
    Folded = { bg = "base03", italic = true },
    TelescopeBorder = { fg = "green" },
    TelescopePromptBorder = { fg = "yellow" },
    FloatBorder = { fg = "purple", bg = "base02" },
    NormalFloat = { bg = "base02" },
    NormalBorder = { fg = "purple" },
    NvimTreeGitNew = { fg = "#9ECE6A" },
    NvimTreeGitNewIcon = { fg = "#9ECE6A" },
    NvimTreeGitFileNewHL = { fg = "#9ECE6A" },
    NvimTreeGitFolderNewHL = { fg = "#9ECE6A" },
    NvimTreeGitFileNew = { fg = "#9ECE6A" },
    NvimTreeGitFolderNew = { fg = "#9ECE6A" },
    NvimTreeGitDirty = { fg = "#a3cfff" },
    NvimTreeGitDirtyIcon = { fg = "#a3cfff" },
    NvimTreeGitFileDirtyHL = { fg = "#a3cfff" },
    NvimTreeGitFolderDirtyHL = { fg = "#a3cfff" },
    NvimTreeGitModified = { fg = "#a3cfff" },
    NvimTreeGitFileDirty = { fg = "#a3cfff" },
  },
  transparency = true,
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "            ▄█▄▄▄█▄              ",
    "     ▄▀    ▄▌─▄─▄─▐▄    ▀▄       ",
    "     █▄▄█  ▀▌─▀─▀─▐▀  █▄▄█       ",
    "      ▐▌    ▀▀███▀▀    ▐▌        ",
    "     ████ ▄█████████▄ ████       ",
    "                                 ",
    " ████████╗ ██████╗ ███████╗████████╗",
    " ╚══██╔══╝██╔═══██╗██╔════╝╚══██╔══╝",
    "    ██║   ██║   ██║███████╗   ██║   ",
    "    ██║   ██║   ██║╚════██║   ██║   ",
    "    ██║   ╚██████╔╝███████║   ██║   ",
    "    ╚═╝    ╚═════╝ ╚══════╝   ╚═╝   ",
    "                                    ",
    "        ⚡ Welcome, TOST ✦          ",
    "                                    ",
  },

  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "  Settings", keys = "fs", cmd = "Telescope find_files cwd=~/.config/nvim" },
  },
}

M.ui = {
  cmp = {
    icons = true,
    icons_left = true,
    style = "atom_colored",
  },
  telescope = {
    style = "bordered",
  },
  statusline = {
    separator_style = "arrow",
  },
  tabufline = {
    lazyload = false,
  },
}

M.colorify = {
  enabled = true,
  mode = "virtual",
}
return M
