return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
                  ▄█▄▄▄█▄               
           ▄▀    ▄▌─▄─▄─▐▄    ▀▄        
           █▄▄█  ▀▌─▀─▀─▐▀  █▄▄█        
            ▐▌    ▀▀███▀▀    ▐▌         
           ████ ▄█████████▄ ████        
                                        
     ████████╗ ██████╗ ███████╗████████╗
     ╚══██╔══╝██╔═══██╗██╔════╝╚══██╔══╝
        ██║   ██║   ██║███████╗   ██║   
        ██║   ██║   ██║╚════██║   ██║   
        ██║   ╚██████╔╝███████║   ██║   
        ╚═╝    ╚═════╝ ╚══════╝   ╚═╝   
                                        
            ⚡ Welcome, TOST ✦          
                                         
 ]],
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
