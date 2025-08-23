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
    },
    pickers = {
      find_files = {
        hidden = true,
      },
    },
  },
  config = function(_, opts)
    vim.keymap.del("n", "<leader>/")
    require("telescope").setup(opts)
  end,
}
