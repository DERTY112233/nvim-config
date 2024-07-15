-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "pyright", "pyre", "pylsp", "jedi_language_server", "jdtls", "rust_analyzer", "cobol_ls", "nimls", "nim_langserver", "biome", "intelephense", "asm_lsp", "diagnosticls", "csharp_ls", "psalm", "stimulus_ls", "ast_grep", "ccls", "ltex", "textlsp", "texlab" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.intelephense.setup{
  "intelephense", "--stdio"
}

lspconfig.asm_lsp.setup{
  capabilities = capabilities
}

