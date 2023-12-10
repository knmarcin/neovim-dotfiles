-- Map ]g to jump to the next hunk
vim.api.nvim_set_keymap('n', ']c', '<cmd>lua require("gitsigns").next_hunk()<CR>', { noremap = true })

-- Map [c to jump to the previous hunk
vim.api.nvim_set_keymap('n', '[c', '<cmd>lua require("gitsigns").prev_hunk()<CR>', { noremap = true })

vim.api.nvim_set_var('mapleader', ' ')

-- Tab navigation
vim.api.nvim_set_keymap('n', '<Leader>1', '1gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>2', '2gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>3', '3gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>4', '4gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>5', '5gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>6', '6gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>7', '7gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>8', '8gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>9', '9gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>0', ':tablast<cr>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<c-P>', '<cmd>lua require("fzf-lua").live_grep()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-p>',
    [[<cmd>lua require'fzf-lua'.live_grep({ winopts = { preview = { layout = 'vertical', vertical = 'up:50%' } } })<CR>]],
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':Neotree toggle<cr>', { noremap = true })

-- Moving lines
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true })
vim.api.nvim_set_keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true })
vim.api.nvim_set_keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true })

-- Key mappings
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {})
