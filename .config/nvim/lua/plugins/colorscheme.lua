return {
  {
    "thedenisnikulin/vim-cyberpunk",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.opt.cursorline = true

      local function apply_highlights()
        -- Keep the editor background transparent
        for _, group in ipairs({
          "Normal",
          "NormalNC",
          "SignColumn",
          "EndOfBuffer",
          "LineNr",
          "Folded",
          "NonText",
          "NormalFloat",
          "FloatBorder",
        }) do
          vim.api.nvim_set_hl(0, group, { bg = "NONE" })
        end

        -- Burgundy current line; don't set a foreground color
        vim.api.nvim_set_hl(0, "CursorLine", {
          bg = "#210E15",
        })

        vim.api.nvim_set_hl(0, "CursorLineNr", {
          bg = "#210E15",
          bold = true,
        })
      end

      -- Apply now and after every colorscheme change
      local group = vim.api.nvim_create_augroup("CyberpunkCustomHighlights", { clear = true })

      vim.api.nvim_create_autocmd("ColorScheme", {
        group = group,
        callback = apply_highlights,
      })

      vim.api.nvim_create_autocmd("VimEnter", {
        group = group,
        callback = apply_highlights,
      })

      apply_highlights()
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberpunk",
    },
  },
}
