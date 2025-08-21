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
    opts = {},
  },
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
            },
          },
          view = "mini",
        },
      },
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
      },
      views = {
        search_top_right = {
          backend = "popup",
          border = { style = "rounded", padding = { 0, 1 } },
          position = { row = "5%", col = "95%" }, -- top-right placement
          size = { width = 45, height = "auto" },
          win_options = {
            winhighlight = {
              Normal = "NormalFloat",
              FloatBorder = "FloatBorder",
            },
          },
        },
      },
      cmdline = {
        view = "cmdline_popup",
        format = {
          cmdline = { view = "cmdline_popup" },
          search_down = { view = "search_top_right" },
          search_up = { view = "search_top_right" },
        },
      },
    },
  },
}
