return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "yaml",
      },
    },
  },
  {
    "brianhuster/live-preview.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    ft = { "markdown" },
  },
  { "karb94/neoscroll.nvim", event = "VeryLazy", opts = {
    hide_cursor = true,
  } },
  require "plugins.copilot",
  require "plugins.typescript",
  require "plugins.folding",
  require "plugins.noice",
  require "plugins.lazygit",
  require "plugins.avante",
}
