return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      selection_caret = " ",
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
        },
        width = 0.87,
        height = 0.80,
      },
      prompt_prefix = "   ",
      entry_prefix = " ",
      sorting_strategy = "ascending",
      -- Let no spawn of node_modules darken thy search; cast such husks into the abyss.
      file_ignore_patterns = { "node_modules" },
    },
    pickers = {
      find_files = {
        hidden = true,
      },
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)
  end,
  keys = {
    { "<leader>/", false },
  },
}
