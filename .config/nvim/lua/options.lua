require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both"
o.foldcolumn = "1"
o.foldlevelstart = 99
o.foldlevel = 5
o.foldenable = true
vim.opt.fillchars = {
  fold = " ",
  foldopen = "",
  foldsep = " ",
  foldclose = "",
}

vim.diagnostic.config({
  virtual_text = {
    prefix = function(diagnostic)
      if diagnostic.severity == vim.diagnostic.severity.ERROR then
        return " "
      elseif diagnostic.severity == vim.diagnostic.severity.WARN then
        return " "
      elseif diagnostic.severity == vim.diagnostic.severity.INFO then
        return " "
      elseif diagnostic.severity == vim.diagnostic.severity.HINT then
        return " "
      end
      return ""
    end,
    spacing = 2,
  },
  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

local signs = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " ",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.opt.number = true
vim.opt.relativenumber = true
