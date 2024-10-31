return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    opts.servers.neocmake.capabilities = capabilities
  end,
}
