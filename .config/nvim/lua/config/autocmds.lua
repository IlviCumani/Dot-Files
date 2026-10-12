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

-- The heart of the cure. When the servant bringeth forth a file anew upon the
-- disk -- most of all one born AFTER a buffer was opened upon its name (as
-- befalleth when `acp_follow_agent_locations` leadeth the window thither ere
-- the writing) -- Neovim's lone `autoread` will NOT draw it in; the omen beareth
-- v:fcs_reason == "created", which the wonted rite leaveth untouched, and thus
-- the buffer lingereth empty till nvim be closed and opened afresh. Here we
-- seize the FileChangedShell omen ourselves and bid Neovim yield to the disk,
-- that such empty buffers be filled forthwith -- no quitting, no reopening.
vim.api.nvim_create_autocmd("FileChangedShell", {
  group = reload_grp,
  callback = function(args)
    -- A vanished file: leave it to Neovim's own counsel, reload it not.
    if vim.v.fcs_reason == "deleted" then
      return
    end
    local buf = args.buf
    -- Doth the buffer stand bare, void of any true content of thine own? When
    -- the servant followeth the agent to a file ere its birth, the buffer it
    -- openeth is empty YET oft marked "modified" -- and so a mere unmodified
    -- test faileth, falling to the dreaded "ask" that raiseth the W13 prompt
    -- (the input that aped the `:` cmdline) and reloadeth nothing.
    local empty = true
    local ok, head = pcall(vim.api.nvim_buf_get_lines, buf, 0, 2, false)
    if ok then
      empty = (#head == 0) or (#head == 1 and head[1] == "")
    end
    -- Reload with neither prompt nor stay when thou hast no unsaved labour OR
    -- when the buffer is empty (a file freshly summoned). Only a buffer that
    -- beareth real, unsaved edits of THINE shall stay the reload and ask.
    if (not vim.bo[buf].modified) or empty then
      vim.v.fcs_choice = "reload"
    else
      vim.v.fcs_choice = "ask"
    end
  end,
})
