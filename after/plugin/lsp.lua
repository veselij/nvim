local lspconfig = require("lspconfig")
lspconfig.pyright.setup({
	-- Server-specific settings. See `:help lspconfig-setup`
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "openFilesOnly",
				useLibraryCodeForTypes = true,
			},
		},
	},
})
