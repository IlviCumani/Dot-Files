return {
  -- Diffview -- a hall wherein all thy changes are laid bare at once. Walk
  -- each altered file, weigh every hunk, and decree its fate: keep it, or
  -- cast it back into the void whence it came.
  --
  -- Within the review panel:
  --   <Tab> / <S-Tab>  move betwixt the changed files
  --   s / u            stage (keep) or unstage a file's changes
  --   X                restore (undo) a file's changes entirely
  --   g?               the full litany of keybindings
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggle", "DiffviewFileHistory" },
  opts = {
    enhanced_diff_hl = true,
  },
  keys = {
    { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Review all changes (Diffview)" },
    { "<leader>gV", "<cmd>DiffviewFileHistory %<cr>", desc = "File history (Diffview)" },
    { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
  },
}
