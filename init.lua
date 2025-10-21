vim.cmd([[packadd packer.nvim]])

require("packer").startup(function(use)
        use("wbthomason/packer.nvim")
        use("ellisonleao/gruvbox.nvim")
        use("dominikduda/vim_current_word")
        use("windwp/nvim-autopairs")
        use("echasnovski/mini.pick")
        use("stevearc/oil.nvim")
end)

vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.encoding = "utf-8"
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.fileformat = "unix"
vim.o.foldmethod = "indent"
vim.o.foldlevel = 20
vim.o.swapfile = false
vim.o.incsearch = true
vim.o.winborder = "rounded"
vim.o.signcolumn = "yes"



vim.wo.colorcolumn = "120"
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR> :so<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>,', ':noh<CR>')
vim.keymap.set('n', '<leader>n', ':bn<CR>')
vim.keymap.set('n', '<leader>p', ':bp<CR>')
vim.keymap.set('n', '<leader>d', ':bd<CR>')


local pick = require('mini.pick')
pick.setup({ source = { show = pick.default_show } })
require "oil".setup({columns={}})
vim.keymap.set('n', '<leader>f', ":Pick files<CR>")
vim.keymap.set('n', '<leader>g', ":Pick grep<CR>")
vim.keymap.set('n', '<leader>e', ":Oil<CR>")

vim.cmd("colorscheme gruvbox")
vim.cmd(":hi statusline guibg=None")

vim.lsp.enable({ 'pyright', 'lua-language-server', 'ruff', 'rust_analyzer', 'typescript' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
                local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
                if client:supports_method('textDocument/completion') then
                        vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
                end
        end,
})

--vim.o.completeopt = "menu,longest"
vim.cmd("set completeopt=menu,longest")

local pumMaps = {
        ['<Tab>'] = '<C-n>',
        ['<S-Tab>'] = '<C-p>',
        ['<Down>'] = '<C-n>',
        ['<Up>'] = '<C-p>',
        ['<CR>'] = '<C-y>',
}
for insertKmap, pumKmap in pairs(pumMaps) do
        vim.keymap.set('i', insertKmap, function()
                return vim.fn.pumvisible() == 1 and pumKmap or insertKmap
        end, { expr = true })
end
