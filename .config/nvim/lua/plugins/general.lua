return {
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      min_horizontal_distance_smear = 3,
      min_vertical_distance_smear = 2,
      smear_between_neighbor_lines = true,

      stiffness = 0.8,
      trailing_stiffness = 0.5,
      distance_stop_animating = 0.5,
    },
  },
  {
    "numToStr/Comment.nvim",
    opts = {
      toggler = { line = "<leader>/l", block = "<leader>/b" },
      opleader = { line = "<leader>/l", block = "<leader>/b" },
      extra = { above = "<leader>/p", below = "<leader>/n", eol = "<leader>/e" },
      mappings = { basic = true, extra = true },
    },
  },
  "eandrju/cellular-automaton.nvim",
  -- {
  --   "OXY2DEV/helpview.nvim",
  --   lazy = false,
  --   opts = {
  --     preview = {
  --       icon_provider = "mini",
  --     },
  --   },
  -- },
}
