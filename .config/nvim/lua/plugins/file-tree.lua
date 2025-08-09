return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    -- view = {},
    renderer = {
      highlight_opened_files = "all",
      symlink_destination = false,
      indent_markers = {
        enable = true,
      },
    },
    diagnostics = {
      enable = true,
      show_on_dirs = true,
      icons = {
        hint = "󰌵",
        info = " ",
        warning = " ",
        error = " ",
      },
    },
    filters = {
      dotfiles = false,
    },
  },
}
