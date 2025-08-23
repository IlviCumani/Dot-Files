return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = { "filesystem", "buffers", "git_status" },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      hide_by_name = {
        ".DS_Store",
        "node_modules",
      },
      never_show = {
        ".DS_Store",
      },
    },
    default_component_configs = {
      indent = {
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
      git_status = {
        symbols = {
          unstaged = "",
          untracked = "",
        },
      },
      name = {
        use_git_status_colors = true,
        symbols = {
          modified = "", -- 🔹 Change this to whatever icon you want instead of [+]
        },
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)

    vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#9ECE6A" })
    vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#a3cfff" })
  end,
}

--[[
   Change type
   added     = "✚",
   deleted   = "✖",
   modified  = "",
   renamed   = "󰁕",
   Status type
   untracked = "",
   ignored   = "",
   unstaged  = "󰄱",
   staged    = "",
   conflict  = "",
--]]
