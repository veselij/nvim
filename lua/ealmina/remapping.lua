local map = require("ealmina.utils").map

map("v", "<C-c>", '"+y', { silent = true })
map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
map("n", "gd", "<cmd>tab split | lua vim.lsp.buf.definition()<CR>")
map("x", "<leader>p", "\"_dP")

