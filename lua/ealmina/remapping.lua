local map = require("ealmina.utils").map

map("v", "<C-c>", '"+y', { silent = true })
map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
map("n", ",ff", "<cmd>Telescope find_files<CR>")
map("n", ",fg", "<cmd>Telescope live_grep<CR>")
map("n", "gd", "<cmd>tab split | lua vim.lsp.buf.definition()<CR>")

