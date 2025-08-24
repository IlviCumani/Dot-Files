-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local map = vim.keymap.set

map("n", "<leader>cH", ":Shades<CR>", { desc = "Minty Shades" })
map("n", "<leader>ch", ":Huefy<CR>", { desc = "Minty Huefy" })
map("n", "<C-t>", function()
  require("menu").open("default")
end, {})
