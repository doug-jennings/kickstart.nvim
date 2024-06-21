-- Basic Appearance Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = false

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.opt.clipboard = 'unnamedplus'
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true

-- List and List Characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.hlsearch = true

-- Highlight when yanking (copying) text
vim.api.nvim_command [[
  autocmd TextYankPost * lua vim.highlight.on_yank { higroup="IncSearch", timeout=150 }
]]

-- Highlight on yank configuration
vim.api.nvim_command [[
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank {on_visual = false}
]]

-- Automatically close pairs
vim.api.nvim_command [[
  autocmd FileType * :inoremap <buffer> " ""<left>
]]
