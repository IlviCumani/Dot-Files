return {
  {
    "echasnovski/mini.animate",
    optional = true,
    opts = {
      cursor = { enable = false },
    },
  },
  {
    "echasnovski/mini.surround",
    opts = function(_, opts)
      opts.mappings = {
        add = "Sa", -- Add surrounding
        delete = "Sd", -- Delete surrounding
        replace = "Sr", -- Replace surrounding
        find = "Sf", -- Find surrounding to the right
        highlight = "Sh", -- Highlight surrounding
        update_n_lines = "Sn", -- Update `n_lines`
      }
      return opts
    end,
    keys = function()
      return {
        { "S", group = "Surround" },
        { "Sa", desc = "Add surrounding" },
        { "Sd", desc = "Delete surrounding" },
        { "Sr", desc = "Replace surrounding" },
        { "Sf", desc = "Find surrounding" },
        { "Sh", desc = "Highlight surrounding" },
        { "Sn", desc = "Update `n_lines`" },
      }
    end,
  },
}
