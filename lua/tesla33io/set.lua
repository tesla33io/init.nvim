vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })

-- Spaces and tabs
vim.cmd [[set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣]]
-- vim.opt.listchars = {
-- 	eol = '¬',
-- 	tab = '▏',
-- 	trail = '~',
-- 	extends = '>',
-- 	precedes = '<',
-- 	space = '␣'
-- }
-- vim.api.nvim_set_option('listchars', "eol:¬,tab:▏,trail:~,extends:>,precedes:<,space:␣,")
