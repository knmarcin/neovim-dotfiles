local status, gitsigns = pcall(require, "gitsigns")
if (not status) then return end

gitsigns.setup {
  signs = {
    add = {text = '+', numhl = 'GitSignsAddNr'},
    change = {text = '~', numhl = 'GitSignsChangeNr'},
    delete = {text = '_', numhl = 'GitSignsDeleteNr'},
    topdelete = {text = '‾', numhl = 'GitSignsDeleteNr'},
    changedelete = {text = '~', numhl = 'GitSignsChangeNr'}
  }
}

