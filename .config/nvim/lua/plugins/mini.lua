-- Define React icon once to avoid duplication across JS/TS files
-- Change this icon to update all React-related files at once
local react_icon = ""

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
    opts = {
      filetype = {
        ["scss"] = { glyph = "", hl = "MiniIconsRed", name = "Scss" },
      },
      extension = {
        ["stories.tsx"] = { glyph = react_icon, hl = "MiniIconsRed", name = "StoryBook" },
        ["stories.jsx"] = { glyph = react_icon, hl = "MiniIconsRed", name = "StoryBook" },
        ["stories.ts"] = { glyph = react_icon, hl = "MiniIconsRed", name = "StoryBook" },
        ["stories.js"] = { glyph = react_icon, hl = "MiniIconsRed", name = "StoryBook" },
      },
      file = {
        ["next.config.ts"] = { glyph = " ", hl = "MiniIconsGrey", name = "Next Config" },
        ["postcss.config.mjs"] = { glyph = " ", hl = "MiniIconsOrange", name = "Next Config" },
      },
    },
  },
}
