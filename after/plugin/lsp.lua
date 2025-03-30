vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(ev)
                local client = vim.lsp.get_client_by_id(ev.data.client_id)
                if client:supports_method('textDocument/completion') then
                        vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
                end

                if not client:supports_method('textDocument/willSaveWaitUntil')
                    and client:supports_method('textDocument/formatting') then
                        vim.api.nvim_create_autocmd('BufWritePre', {
                                buffer = ev.buf,
                                callback = function()
                                        vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
                                end,
                        })
                end
        end,
})

vim.lsp.enable({ 'pyright', 'lua-language-server', 'ruff', 'rust_analyzer' })
vim.o.winborder = 'rounded'
vim.diagnostic.config({
        virtual_lines = true,
})


---[[AUTOCOMPLETION SETUP
vim.o.completeopt = "menu,noinsert,popup,fuzzy"

---[[ Setup keymaps so we can accept completion using Enter and choose items using arrow keys or Tab.
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
---]]
