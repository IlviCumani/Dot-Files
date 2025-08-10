return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    view = {
    },
    renderer = {
      highlight_diagnostics = "all",
      symlink_destination = false,
      indent_markers = {
        enable = true,
      },
      icons = {
        git_placement = "right_align",
        glyphs = {
         folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
          git = {
            unstaged = "",
            untracked = "",
          },
        },
      },
    },
    diagnostics = {
      enable = true,
    },
    filters = {
      dotfiles = false,
      git_ignored = false
    },
  },
}
