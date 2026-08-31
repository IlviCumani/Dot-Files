return {
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   opts = {
  --     enable = {
  --       terminal = true,
  --       legacy_highlights = true,
  --       migrations = true,
  --     },
  --     styles = {
  --       bold = true,
  --       italic = true,
  --       transparency = true,
  --     },
  --     groups = {
  --       border = "foam",
  --       link = "iris",
  --       panel = "surface",
  --     },
  --   },
  -- },
  --

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true, -- enable transparent floating windows
        solid = false, -- use solid styling for floating windows, see |winborder|
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- Neovim beareth its own `colors/catppuccin.vim`, and that elder flame doth
      -- eclipse the plugin's unsuffixed rite. Name the flavour, lest thy setup opts
      -- (transparency among them) be cast into the abyss.
      colorscheme = "catppuccin-mocha",
    },
  },
}
