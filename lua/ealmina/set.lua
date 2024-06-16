vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.encoding = "utf-8"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.fileformat = "unix"
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 20
vim.opt.swapfile = false
vim.opt.incsearch = true
vim.opt.wrap = true
vim.opt.wildmenu = true
vim.opt.termguicolors = true
vim.opt.backup = false
vim.wo.colorcolumn = '120'
vim.opt.path:prepend('**')
vim.opt.cursorline = true

-- vim.g.netrw_banner = false
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 3
vim.g.mapleader = ' '

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50
