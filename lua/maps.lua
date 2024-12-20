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
vim.api.nvim_set_keymap('n', '<leader>rt', ':%s/    /\t/g<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<leader>rt', ':s/    /\t/g<cr>', {noremap = true, silent = true})

-- Key mappings
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {})
vim.api.nvim_set_keymap('n', '<leader>vi', ':e ~/.config/nvim/init.lua<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- Define a function to fetch git log containing 'ref' and insert it
vim.api.nvim_create_user_command('Ref', function()
    -- Execute shell command and get the output
    local handle = io.popen("git log | grep 'ref T' | head -1")
    local result = handle:read("*a")
    handle:close()

    -- Trim leading spaces from the result
    local trimmed_result = result:match("^%s*(.-)%s*$")

    -- Insert the trimmed result into the current line at the cursor position
    local line = vim.api.nvim_get_current_line()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    local new_line = line:sub(1, col - 1) .. trimmed_result .. line:sub(col)
    vim.api.nvim_set_current_line(new_line)
end, { nargs = 0 })

