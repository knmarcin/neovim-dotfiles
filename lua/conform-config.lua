local status, conform = pcall(require, "conform")
if (not status) then return end

conform.setup({
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
  },
})

-- Remap = to use Prettier for JS/TS files in visual mode
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
  callback = function()
    vim.keymap.set("v", "=", function()
      conform.format({ lsp_fallback = true })
    end, { buffer = true, desc = "Format with Prettier" })
  end,
})
