return {
  "snacks.nvim",
  init = function()
    local function set_dashboard_colors()
      -- ASCII header: Arasaka red
      vim.api.nvim_set_hl(0, "SnacksDashboardHeader", {
        fg = "#FDF500",
        bg = "NONE",
      })

      -- Icons: Arasaka red
      vim.api.nvim_set_hl(0, "SnacksDashboardIcon", {
        fg = "#FB3048",
        bg = "NONE",
      })

      -- Descriptions: Arasaka red
      vim.api.nvim_set_hl(0, "SnacksDashboardDesc", {
        fg = "#FB3048",
        bg = "NONE",
      })

      -- Shortcut keys: Cyberpunk cyan
      vim.api.nvim_set_hl(0, "SnacksDashboardKey", {
        fg = "#5DF4FE",
        bg = "NONE",
        bold = true,
      })
    end

    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = set_dashboard_colors,
    })

    set_dashboard_colors()
  end,
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⡔⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⢚⣉⣠⡽⠂⠀⠀⠀⠀⡰⢋⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢴⡆⠀⠀
⠀⠀⠀⠀⠀⢀⡤⠐⢊⣥⠶⠛⠁⢀⠄⡆⣠⠤⣤⠞⢠⠿⢥⡤⠀⠀⠠⢤⠀⠀⠀⠤⠤⠤⡄⢠⠤⠄⠤⠀⠀⠀⠒⣆⡜⣿⣄⠀⡤⢤⠖⣠⣀⠤⢒⣭⠶⠛⠃⠀⠀
⢀⣀⡠⢴⣎⣥⣴⣾⣟⡓⠒⠒⠒⠺⣄⡋⢀⡾⢃⣴⢖⣢⣞⢁⣋⣉⣹⠏⠚⠛⢛⣉⣤⡴⢞⠃⣰⠾⠟⣛⣩⢵⢶⡟⣰⠇⠘⡼⢡⡟⣀⡋⢵⡞⠋⠁⠀⠀⠀⠀⠀
⠈⠢⠄⠤⠤⠤⠤⠤⠴⠤⠴⠶⠶⢾⠟⣱⡿⢤⢿⣕⠾⣿⣿⣩⡭⢤⠞⣰⠶⢤⣀⡉⠓⢾⡍⣠⠴⠾⠛⠹⠡⣟⡁⢰⢏⣼⡇⢰⣿⢀⠟⠳⣤⣌⣦⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢃⡼⠋⠛⠾⠚⠁⠀⠈⠉⠀⠀⠸⣄⠏⠀⠀⠈⠙⠓⡟⣰⠏⠀⠀⠀⠘⠾⠛⠳⠞⠉⠁⠙⠋⠙⠚⠀⠀⠀⠙⠛⢿⣷⣤⣀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣜⡵⠟⠀⠀⠀⠀⠀⠀⣼⣿⣾⣿⣽⣽⣿⣿⢏⢫⣻⡹⡽⣰⢏⣯⠍⡭⡍⣭⢩⡭⢩⡍⡏⡏⣯⡍⣍⠙⡭⢹⣄⣤⠄⢠⠉⠓⢿⣕⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣯⠃⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣽⣾⣾⣟⣯⣣⣱⣾⣟⣞⣸⣇⣳⣃⣿⣛⣷⣬⠧⠳⠇⠿⢧⢿⢀⣷⢸⠧⢾⢃⠇⠀⠀⠀⠀⠁]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
    notifier = {
      timeout = 2000,
      icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
      },
      top_down = false,
      style = "fancy",
      fps = 60,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = 70,
      render = "wrapped-default",
    },
    explorer = { enabled = false },
  },
}
