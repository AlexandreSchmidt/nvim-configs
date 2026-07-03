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
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("ts_ls")
		vim.lsp.enable("gopls")
	end,
}
