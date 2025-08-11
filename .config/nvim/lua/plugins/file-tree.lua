return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    renderer = {
      highlight_diagnostics = "all",
      symlink_destination = false,
      indent_markers = {
        enable = true,
      },
      icons = {
        git_placement = "right_align",
        glyphs = {
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
      git_ignored = false,
    },
  },
}
