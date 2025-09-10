-- Define React icon once to avoid duplication across JS/TS files
-- Change this icon to update all React-related files at once

return {
  {
    "echasnovski/mini.animate",
    optional = true,
    opts = {
      cursor = { enable = true },
    },
  },
  {
    "echasnovski/mini.icons",
    opts = function()
      vim.api.nvim_set_hl(0, "TmuxGreenIcon", { fg = "#78bd44" })

      local storybook_icon = ""

      return {
        filetype = {
          ["scss"] = { glyph = "", hl = "MiniIconsRed", name = "Scss" },
        },
        extension = {
          ["stories.tsx"] = { glyph = storybook_icon, hl = "MiniIconsRed", name = "StoryBook" },
          ["stories.jsx"] = { glyph = storybook_icon, hl = "MiniIconsRed", name = "StoryBook" },
          ["stories.ts"] = { glyph = storybook_icon, hl = "MiniIconsRed", name = "StoryBook" },
          ["stories.js"] = { glyph = storybook_icon, hl = "MiniIconsRed", name = "StoryBook" },
          ["tmux"] = { glyph = "", hl = "TmuxGreenIcon", name = "Tmux" },
        },
        file = {
          ["next.config.ts"] = { glyph = " ", hl = "MiniIconsGrey", name = "Next Config" },
          ["postcss.config.mjs"] = { glyph = "", hl = "MiniIconsOrange", name = "Next Config" },
          [".tmux.conf"] = { glyph = "", hl = "TmuxGreenIcon", name = "Tmux" },
        },
      }
    end,
  },
}
