local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'thin',
    show_buffer_close_icons = false,
    show_close_icon = true,
    show_tab_indicators = true,
    color_icons = true,
    show_buffer_name = true,
    always_show_bufferline = true,
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36',
    },
    separator_selected = {
      fg = '#abb2bf',
    },
    background = {
      fg = '#657b83',
      bg = '#282c34'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      bg = '#282c34'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
