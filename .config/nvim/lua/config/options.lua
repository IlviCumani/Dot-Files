-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true
vim.g.ai_cmp = false
vim.g.lazyvim_picker = "telescope"
vim.g.lazyvim_eslint_auto_format = true
vim.g.lazyvim_cmp = "blink.cmp"

vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#9ECE6A" })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#a3cfff" })
