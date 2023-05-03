local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<leader>sm", ":resize -2<CR>", opts)
keymap("n", "<leader>lg", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>c", ":bd!<CR>", opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
keymap("n", "<leader>g", "<cmd>lua require'telescope.builtin'.live_grep()<cr>", opts)
keymap("n", "<leader> ", "<cmd>lua require'telescope.builtin'.buffers()<cr>", opts)

-- NvimTree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- Neogit
keymap("n", "<leader>gs", "<cmd>lua require'neogit'.open({ })<cr>", opts)
keymap("n", "<leader>ga", "<cmd>!git fetch --all<cr>", opts)

-- Prettier
--[[ keymap("n", "<leader>p", "<cmd>:Prettier<cr>", opts) ]]

-- Neoformat
keymap("n", "<leader>p", "<cmd>:Neoformat<cr>", opts)

-- moving
--[[ keymap("n", "J", "<cmd>:m<cr>", opts) ]]
keymap("n", "<leader>j", "<cmd>:m .+1<CR>==", opts)
keymap("n", "<leader>k", "<cmd>:m .-2<CR>==", opts)

-- Terminal
keymap("t", "<Esc>", "<C-\\><C-n>", term_opts)
keymap("n", "<leader>v", "<cmd>:vertical rightbelow split term://zsh<CR>", term_opts)
keymap("n", "<leader>t", "<cmd>:belowright split term://zsh<CR>", term_opts)

-- Close the current terminal
keymap("t", "<C-w>q", "<C-\\><C-n>:q!<CR>", term_opts)

-- Explore
--[[ keymap("n", "<leader>e", ":Explore<CR>", opts) ]]
