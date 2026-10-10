-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.diagnostic.config({ virtual_text = false })
  end,
})

-- =====================================================================
-- Live reload -- that the deeds wrought by the servant (Cursor, through
-- Avante) be revealed within thine open buffers forthwith, needing no rite
-- of closing nor reopening. The agent inscribeth upon the disk; thus must
-- Neovim be bidden to glance thither oft and draw the changes in anew.
-- =====================================================================
vim.o.autoread = true

local reload_grp = vim.api.nvim_create_augroup("avante_live_reload", { clear = true })

-- Upon these omens, glance disk-ward and reload what hath been altered.
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "TermLeave" }, {
  group = reload_grp,
  callback = function()
    if vim.fn.getcmdwintype() == "" then
      pcall(vim.cmd, "checktime")
    end
  end,
})

-- A tireless watcher: even whilst thou restest, the disk is surveyed each
-- second, and thy buffers kept true to what lieth beneath.
local uv = vim.uv or vim.loop
local reload_timer = uv.new_timer()
if reload_timer then
  reload_timer:start(
    1000,
    1000,
    vim.schedule_wrap(function()
      if vim.fn.mode() ~= "c" and vim.fn.getcmdwintype() == "" then
        pcall(vim.cmd, "silent! checktime")
      end
    end)
  )
end

-- Make known, in soft voice, when a file hath been reforged from without.
vim.api.nvim_create_autocmd("FileChangedShellPost", {
  group = reload_grp,
  callback = function()
    vim.notify("Buffer reforged from disk", vim.log.levels.INFO, { title = "Avante" })
  end,
})
