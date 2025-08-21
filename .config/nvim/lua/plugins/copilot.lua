return {
  "github/copilot.vim",
  event = "InsertEnter",
  keys = {
    { "<C-w>", "<Plug>(copilot-accept-word)", mode = "i", desc = "Copilot accept word" },
    { "<C-l>", "<Plug>(copilot-accept-line)", mode = "i", desc = "Copilot accept line" },
    { "<C-n>", "<Plug>(copilot-next)", mode = "i", desc = "Copilot next suggestion" },
    { "<C-p>", "<Plug>(copilot-previous)", mode = "i", desc = "Copilot previous suggestion" },
  },
  config = function()
    -- disable Copilot’s default <Tab> mapping
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_filetypes = {
      ["*"] = true,
    }

    -- Accept full suggestion with Shift-Tab
    vim.keymap.set("i", "<Tab>", 'copilot#Accept("<CR>")', {
      expr = true,
      replace_keycodes = false,
      silent = true,
      desc = "Copilot accept full suggestion",
    })
  end,
}
