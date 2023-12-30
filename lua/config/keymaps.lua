local mapkey = require("util.keymapper").mapkey
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- General
keymap("i", "jk", "<ESC>", opts) -- Easy exit INSERT MODE
keymap("n", "<S-W>", "<CMD>w<CR>", opts) -- Easy write changes NORMAL MODE
keymap("n", "<S-Q>", "<CMD>q<CR>", opts) -- Easy exit NORMAL MODE
keymap("n", "<S-X>", "<Cmd>wq<CR>", opts) -- Easy write and quit nvim (saving)

-- Scroll
keymap("n", "m", "<C-u>", opts) -- Scroll up
keymap("n", ",", "<C-d>", opts) -- Scroll down

-- Window management
keymap("n", "<leader>sv", ":vsplit<CR>", opts) -- Split vertical
keymap("n", "<leader>sh", ":split<CR>", opts) -- Split horizontal
keymap("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimeze
keymap("n", "<leader>-", ":vertical resize -10<CR>", opts)
keymap("n", "<leader>.", ":vertical resize +10<CR>", opts)
keymap("n", "<leader>-", ":vertical resize -10<CR>", opts)

-- General Pane navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("t", "<C-h>", [[<Cmd>wincmd h <CR>]], opts)
keymap("t", "<C-j>", [[<Cmd>wincmd j <CR>]], opts)
keymap("t", "<C-k>", [[<Cmd>wincmd k <CR>]], opts)
keymap("t", "<C-l>", [[<Cmd>wincmd l <CR>]], opts)

-- Tmux navigator
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- FTerm
keymap("n", "<S-T>", '<CMD>lua require("FTerm").toggle()<CR>')
keymap("t", "<S-t>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
