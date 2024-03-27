vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- h_protect for headers
vim.keymap.set(
	"n",
	"<leader>hh",
	'<cmd>lua require("tesla33io.h_protect").generate_include_guard()<CR>'
)
