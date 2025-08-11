local M = {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    messages = {
      enabled = true,
    },
    views = {
      cmdline_popup = {
        position = {
          row = 8,
          col = "50%",
        },
        size = {
          width = 70,
          height = "auto",
        },
      },
      popupmenu = {
        relative = "editor",
        position = {
          row = 11,
          col = "50%",
        },
        size = {
          width = 70,
          height = 10,
        },
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
        win_options = {
          winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
        },
      },
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}

function M.config()
  require("noice").setup(M.opts)
  require("notify").setup {
    background_colour = "#000000",
    stages = "slide",
    timeout = 2000,
    icons = {
      ERROR = "",
      WARN = "",
      INFO = "",
      DEBUG = "",
      TRACE = "✎",
    },
    top_down = false,
    fps = 60,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = 70,
    render = "wrapped-default",
  }
end

return M
