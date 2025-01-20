local on_attach = function(client, bufnr)
	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
	vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
	vim.keymap.set("n", "<space>.", function()
		vim.lsp.buf.format({ async = true })
	end, bufopts)
end

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
	-- Server-specific settings. See `:help lspconfig-setup`
	on_attach = on_attach,
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
--lspconfig.tsserver.setup({})
--
--
-- Configure `ruff-lsp`.
-- See: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#ruff_lsp
-- For the default config, along with instructions on how to customize the settings
lspconfig.ruff.setup {
  on_attach = on_attach,
  init_options = {
    settings = {
      -- Any extra CLI arguments for `ruff` go here.
      args = {},
    }
  }
}

lspconfig.rust_analyzer.setup({
    on_attach = on_attach
})
