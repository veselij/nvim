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
vim.o.shiftwidth = 4
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
require "oil".setup({ columns = {} })
vim.keymap.set('n', '<leader>f', ":Pick files<CR>")
vim.keymap.set('n', '<leader>g', ":Pick grep_live<CR>")
vim.keymap.set('n', '<leader>e', ":Oil<CR>")
vim.keymap.set('n', '<leader>b', ":Pick buffers<CR>")

vim.keymap.set('n', '<leader>v', ":vsplit<CR>")
vim.keymap.set('n', '<leader>s', ":split<CR>")


local function togle_diagnostic()
    vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end
vim.keymap.set('n', '<leader>td', togle_diagnostic)

local function togle_spelling()
    vim.o.spell = not vim.o.spell
end
vim.keymap.set('n', '<leader>ts', togle_spelling)

require("gruvbox").setup({
    contrast = "hard",
})
vim.cmd("colorscheme gruvbox")
vim.cmd(":hi statusline guibg=None")

vim.lsp.enable({ 'pyright', 'lua-language-server', 'ruff', 'rust_analyzer', 'typescript' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = false })
        end
    end,
})

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'Enable inlay hints',
    callback = function(event)
        local id = vim.tbl_get(event, 'data', 'client_id')
        local client = id and vim.lsp.get_client_by_id(id)
        if client == nil or not client:supports_method('textDocument/inlayHint') then
            return
        end

        vim.lsp.inlay_hint.enable(true, { bufnr = event.buf })
    end,

})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })

vim.opt.completeopt = { 'menu', 'longest', 'preinsert', 'preview', 'popup' }
vim.opt.shortmess:append('c')

local function tab_complete()
    if vim.fn.pumvisible() == 1 then
        -- navigate to next item in completion menu
        return '<Down>'
    end

    local c = vim.fn.col('.') - 1
    local is_whitespace = c == 0 or vim.fn.getline('.'):sub(c, c):match('%s')


    if is_whitespace then
        -- insert tab
        return '<Tab>'
    end

    local lsp_completion = vim.bo.omnifunc == 'v:lua.vim.lsp.omnifunc'

    if lsp_completion then
        -- trigger lsp code completion
        return '<C-x><C-o>'
    end

    -- suggest words in current buffer
    return '<C-x><C-n>'
end


local function tab_prev()
    if vim.fn.pumvisible() == 1 then
        -- navigate to previous item in completion menu
        return '<Up>'
    end

    -- insert tab

    return '<Tab>'
end

vim.keymap.set('i', '<Tab>', tab_complete, { expr = true })
vim.keymap.set('i', '<S-Tab>', tab_prev, { expr = true })
