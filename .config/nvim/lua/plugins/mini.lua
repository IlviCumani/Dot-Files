-- Define React icon once to avoid duplication across JS/TS files
-- Change this icon to update all React-related files at once

return {
  {
    "nvim-mini/mini.animate",
    optional = true,
    opts = {
      cursor = { enable = true },
    },
  },
  {
    "nvim-mini/mini.icons",
    opts = function()
      vim.api.nvim_set_hl(0, "TmuxGreenIcon", { fg = "#78bd44" })
      vim.api.nvim_set_hl(0, "FirebaseIcon", { fg = "#F5820D" })
      vim.api.nvim_set_hl(0, "NodeIcon", { fg = "#6cc24a" })

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
          [".firebaserc"] = { glyph = "", hl = "FirebaseIcon", name = "Firebase RS" },
          ["firebase.json"] = { glyph = "", hl = "FirebaseIcon", name = "Firebase Json" },
          ["package.json"] = { glyph = "", hl = "NodeIcon", name = "Package Json" },
          ["package-lock.json"] = { glyph = "", hl = "NodeIcon", name = "Package Lock Json" },
          [".nvmrc"] = { glyph = "", hl = "NodeIcon", name = "NvimRC" },
        },
      }
    end,
  },
}
