return {
  -- Better comments -- the watchwords TODO, HACK and FIX, set ablaze in their
  -- own hues so thy marginalia crieth out from the grey of the code.
  --
  -- NOTE: the keyword must be writ in CAPITALS and crowned with a colon, thus:
  --   -- TODO: that which is yet to be wrought  (orange)
  --   -- HACK: a cunning, dubious contrivance    (blue)
  --   -- FIX:  a wound in the code to be mended  (red)
  -- Lowercase 'todo' shall pass unseen; the colon is the key that turns the lock.
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- merge_keywords stayeth true by default, so WARN/PERF/NOTE/TEST endure
    -- untouched; here we but re-paint the three thou namest.
    keywords = {
      TODO = { icon = " ", color = "todo" },
      HACK = { icon = " ", color = "hack" },
      FIX = { icon = " ", color = "fix", alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "!" } },
    },
    -- The named hues, drawn from thy Catppuccin Mocha flame, that they sit in
    -- concord with the rest of thy realm.
    colors = {
      todo = { "#fab387" }, -- peach  -> orange
      hack = { "#89b4fa" }, -- blue
      fix = { "#f38ba8" }, -- red
    },
    highlight = {
      -- 'wide' giveth the keyword its coloured badge; 'fg' bathes the words
      -- that follow in the selfsame hue -- thus the whole comment taketh colour.
      keyword = "wide",
      after = "fg",
    },
  },
  -- stylua: ignore
  keys = {
    -- The far-seeing eye gathereth every such mark across thy project.
    { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
    { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
    -- Leap betwixt the marks without the Telescope.
    { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
  },
}
