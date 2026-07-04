local go_group = vim.api.nvim_create_augroup("GoLspActions", {
  clear = true,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = go_group,
  pattern = "*.go",
  callback = function(args)
    vim.lsp.buf.code_action({
      context = {
        only = { "source.organizeImports" },
        diagnostics = {},
      },
      apply = true,
    })

    vim.lsp.buf.format({
      bufnr = args.buf,
      async = false,
      filter = function(client)
        return client.name == "gopls"
      end,
    })
  end,
})
