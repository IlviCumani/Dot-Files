require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Disable arrow keys in all modes
map({ "n", "i", "v" }, "<Up>", "<Nop>")
map({ "n", "i", "v" }, "<Down>", "<Nop>")
map({ "n", "i", "v" }, "<Left>", "<Nop>")
map({ "n", "i", "v" }, "<Right>", "<Nop>")
-- Disable <C-i> in insert mode
map({ "i" }, "<C-i>", "<Nop>")


map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("i", "<C-i>", function()
  return vim.fn["copilot#Accept"] "\\<CR>"
end, { expr = true, silent = true, desc = "Copilot: Accept full suggestion" })

map("i", "<C-a>", function()
  return vim.fn["copilot#AcceptWord"]()
end, { expr = true, silent = true, desc = "Copilot: Accept next word" })

map("i", "<C-n>", function()
  vim.fn["copilot#Next"]()
end, { expr = true, silent = true, desc = "Copilot: Next suggestion" })

map("i", "<C-p>", function()
  vim.fn["copilot#Previous"]()
end, { expr = true, silent = true, desc = "Copilot: Previous suggestion" })

map("n", "sw", function()
  local winid = require("ufo").peekFoldedLinesUnderCursor()
  if not winid then
    vim.fn.CocActionAsync "definitionHover"
    vim.lsp.buf.hover()
  end
end)


map("n", "<leader>ms", ":Shades<CR>", { desc = "Minty Shades" })
map("n", "<leader>mh", ":Huefy<CR>", { desc = "Minty Huefy" })
