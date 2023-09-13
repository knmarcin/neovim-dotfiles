vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'


vim.o.listchars = "tab:| "
vim.wo.list = true

vim.o.termguicolors = true

vim.wo.number = true
vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"
vim.opt.title = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.breakindent = true
vim.opt.wrap = true -- No Wrap lines
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.tabline = '%!v:lua.require\'luatab\'.tabline()'
vim.opt.swapfile = false
vim.o.number = true
vim.o.hlsearch = true
-- Indentation settings
vim.o.autoindent = true
vim.o.noexpandtab = true
vim.o.smarttab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.preserveindent = true
vim.o.copyindent = true
vim.o.softtabstop = 0
-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }


-- Filetype-specific settings
vim.cmd([[autocmd FileType python setlocal autoindent noexpandtab smarttab tabstop=4 shiftwidth=4 preserveindent copyindent softtabstop=0]])
vim.cmd([[autocmd FileType javascript setlocal autoindent expandtab smarttab tabstop=4 shiftwidth=4 preserveindent copyindent]])
