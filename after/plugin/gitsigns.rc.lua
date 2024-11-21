local status, gitsigns = pcall(require, "gitsigns")
if not status then return end

-- Proper setup without deprecated `numhl` entries
gitsigns.setup {
  signs = {
    add = {text = '+'},           -- Highlight for added lines
    change = {text = '~'},        -- Highlight for changed lines
    delete = {text = '_'},        -- Highlight for deleted lines
    topdelete = {text = '‾'},     -- Highlight for top-deleted lines
    changedelete = {text = '~'}   -- Highlight for changed and deleted lines
  }
}

-- Define highlights for the number column
vim.api.nvim_set_hl(0, 'GitSignsAddNr', { link = 'GitSignsAdd' })
vim.api.nvim_set_hl(0, 'GitSignsChangeNr', { link = 'GitSignsChange' })
vim.api.nvim_set_hl(0, 'GitSignsChangedeleteNr', { link = 'GitSignsChange' })
vim.api.nvim_set_hl(0, 'GitSignsDeleteNr', { link = 'GitSignsDelete' })
vim.api.nvim_set_hl(0, 'GitSignsTopdeleteNr', { link = 'GitSignsDelete' })

