return {
  {
    "github/copilot.vim",
    event = "VeryLazy",
    cmd = {
      "Copilot",
      "Copilot setup",
      "Copilot status",
      "Copilot enable",
      "Copilot disable",
      "Copilot suggestions",
    },
    config = function()
      vim.g.copilot_filetypes = {
        ["*"] = true,
        ["javascript"] = true,
        ["typescript"] = true,
        ["typescriptreact"] = true,
        ["javascriptreact"] = true,
        ["html"] = true,
        ["css"] = true,
        ["scss"] = true,
        ["less"] = true,
        ["json"] = true,
        ["markdown"] = true,
        ["python"] = true,
        ["lua"] = true,
        ["vim"] = true,
      }
      -- vim.g.copilot_no_tab_map = true
      -- vim.g.copilot_assume_mapped = true
    end,
  },
}
