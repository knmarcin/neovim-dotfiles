require('base')
require('highlights')
require('maps')
require('plugins')
require('conform-config')
vim.deprecate = function() end
local has = vim.fn.has
local is_mac = has "macunix"

-- Define the deprecated highlights explicitly for GitSigns
vim.api.nvim_set_hl(0, 'GitSignsAddNr', { link = 'GitSignsAdd' })
vim.api.nvim_set_hl(0, 'GitSignsChangeNr', { link = 'GitSignsChange' })
vim.api.nvim_set_hl(0, 'GitSignsChangedeleteNr', { link = 'GitSignsChange' })
vim.api.nvim_set_hl(0, 'GitSignsDeleteNr', { link = 'GitSignsDelete' })
vim.api.nvim_set_hl(0, 'GitSignsTopdeleteNr', { link = 'GitSignsDelete' })


if is_mac then
  require('macos')
end
