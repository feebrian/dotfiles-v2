function Map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }

	if opts then
		options = vim.tbls_extends("force", options, opts)
	end

	vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- Window Movement
Map("n", "<C-h>", "<C-w>h")
Map("n", "<C-j>", "<C-w>j")
Map("n", "<C-k>", "<C-w>k")
Map("n", "<C-l>", "<C-w>l")

-- Terminal
Map("t", "<C-h>", "<cmd>wincmd h<CR>")
Map("t", "<C-j>", "<cmd>wincmd j<CR>")
Map("t", "<C-k>", "<cmd>wincmd k<CR>")
Map("t", "<C-l>", "<cmd>wincmd l<CR>")

-- Window Resizing
Map("n", "<C-Up>", ":resize -2<CR>")
Map("n", "<C-Down>", ":resize +2<CR>")
Map("n", "<C-Left>", ":vertical resize -2<CR>")
Map("n", "<C-Right>", ":vertical resize +2<CR>")

-- Terminal Window Resizing
Map("t", "<C-Up>", "<cmd>:resize -2<CR>")
Map("t", "<C-Down>", "<cmd>:resize +2<CR>")
Map("t", "<C-Left>", "<cmd>:vertical resize -2<CR>")
Map("t", "<C-Right>", "<cmd>:vertical resize +2<CR>")

-- Text Editing
Map("v", "J", ":m '>+1<CR>gv=gv")
Map("v", "K", ":m '<-2<CR>gv=gv")
Map("v", "<", "<gv")
Map("v", ">", ">gv")

-- Buffers and Tabs
Map("n", "<TAB>", ":bn<CR>")
Map("n", "<S-TAB>", ":bp<CR>")
Map("n", "<leader>bd", ":bd<CR>")

-- Telescope
Map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
Map("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true<CR>")
Map("n", "<leader>fe", "<cmd> Telescope file_browser <CR>")
Map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
Map("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
Map("n", "<leader>fh", "<cmd> Telescope help_tags <CR>")
Map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
Map("n", "<leader>fc", "<cmd> Telescope colorschemes <CR>")

-- Neo-tree
Map("n", "<leader>e", "<cmd> Neotree toggle <CR>")

-- Toggleterm
Map("n", "<leader>tf", "<cmd> ToggleTerm direction=float <CR>")
Map("t", "<leader>tc", "<cmd> ToggleTerm <CR>")

-- Override
Map("n", "J", "mzJ`z")
Map("n", "<C-d>", "<C-d>zz")
Map("n", "<C-u>", "<C-u>zz")
Map("n", "n", "nzzzv")
Map("n", "N", "Nzzzv")

Map("n", "<leader>w", "<cmd> w <CR>")
Map("n", "<leader>qq", "<cmd> wq <CR>")
