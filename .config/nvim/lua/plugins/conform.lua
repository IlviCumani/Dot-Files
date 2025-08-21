return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      tsx = { "prettier" },
      typescriptreact = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      javascript = { "prettier" },
      json = { "prettier" },
    },
  },
}
