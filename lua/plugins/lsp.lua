local function ts_lsp_enable()
    
    vim.lsp.config("ts_ls", {
      settings = {
        typescript = {
          inlayHints = {
            includeInlayParameterNameHints = "literal",
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
          },
        },
        javascript = {
          inlayHints = {
            includeInlayParameterNameHints = "literal",
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
          },
        },
      },
    })

    vim.lsp.enable("ts_ls")


end

return {
  "neovim/nvim-lspconfig",
  config = function()
          vim.diagnostic.config({
      virtual_text = true,
      underline = true,
      signs = true,
      severity_sort = true,
      float = {
        border = "rounded",
        source = true,
      },
    })
    ts_lsp_enable()
    vim.lsp.config("gopls", {
      settings = {
        gopls = {
          gofumpt = true, staticcheck = true,
          usePlaceholders = true,
          completeUnimported = true,
          analyses = {
            unusedparams = true,
            shadow = true,
          },
        },
      },
    })

    vim.lsp.enable("gopls")
  end,
}
