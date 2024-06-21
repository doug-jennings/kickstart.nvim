-- Helper function to set keymaps
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Set leader and localleader
-- hi
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Normal mode keybindings
-- Clear search highlighting with <Esc>
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Navigate diagnostics
map('n', '<down>', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { desc = 'Go to previous diagnostic message' })
map('n', '<up>', '<cmd>lua vim.diagnostic.goto_next()<CR>', { desc = 'Go to next diagnostic message' })

-- Show diagnostic error messages
map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float(0, { scope = "line" })<CR>', { desc = 'Show diagnostic error messages' })

-- Open diagnostic quickfix list
map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', { desc = 'Open diagnostic quickfix list' })

-- Move focus between splits
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

map('n', '<Left>', '<cmd>undo<CR>', { noremap = true })
map('n', '<Right>', '<cmd>redo<CR>', { noremap = true })

-- Terminal mode keybindings
-- Exit terminal mode with <Esc><Esc>
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Command mode keybindings

-- Map Ctrl+Backspace to delete word backward in command mode
map('c', '<C-b>', '<C-h>', { noremap = true, silent = true })
