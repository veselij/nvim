local map = require("ealmina.utils").map

map("v", "<C-c>", '"+y', { silent = true })
map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
map("n", "gd", "<cmd>tab split | lua vim.lsp.buf.definition()<CR>")
map("x", "<leader>p", "\"_dP")

vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })

vim.keymap.set('n', 'gK', function()
        local new_config = not vim.diagnostic.config().virtual_lines
        vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'Toggle diagnostic virtual_lines' })
