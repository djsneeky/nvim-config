return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPost", "BufNewFile" }, -- Load early for diagnostics
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		{ "williamboman/mason-lspconfig.nvim" },
	},
	config = function()
		-- List the servers you want to ensure are installed
		local servers = { "lua_ls", "clangd" }

		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = servers,
			automatic_installation = true,
		})

		local lspconfig = require("lspconfig")
		local capabilities = vim.lsp.protocol.make_client_capabilities()

		-- Add nvim-cmp capabilities if using nvim-cmp
		local ok_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
		if ok_cmp then
			capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
		end

		-- Setup each server
		for _, server in ipairs(servers) do
			lspconfig[server].setup({
				capabilities = capabilities,
				-- Add any server-specific settings here
			})
		end
	end,
}
