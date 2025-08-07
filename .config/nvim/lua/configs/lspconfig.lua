local lspconfig = require "lspconfig"
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- List of servers you want to configure
local servers = { "html", "cssls",  }
for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

require("typescript-tools").setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    tsserver = {
      filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
      root_dir = lspconfig.util.root_pattern("tsconfig.json", "package.json"),
    },
    tsserver_file_preferences = {
      includeInlayParameterNameHints = "all",
      includeCompletionsForModuleExports = true,
      quotePreference = "auto",
    },
    tsserver_format_options = {
      allowIncompleteCompletions = false,
      allowRenameOfImportPath = false,
    },
  },

}

