return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"j-hui/fidget.nvim",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		{ 
			"folke/lazydev.nvim", ft = "lua", opts = {
				library = {
					{
						path = "${3rd}/luv/library",
						words = { "vim%.uv" }
					}
				}
			} 
		} 
	},
	configs = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls" },
			handlers = { 
				function(server_name)
					if server_name == "lua_ls" then
						vim.lsp.config(server_name, {
							settings = {
								Lua = { diagnostics = { globals = { "vim" } } }
							}
						})

					end
					vim.lsp.enable(server_name)
				end }
		})

		require("fidget").setup()
	end
}
