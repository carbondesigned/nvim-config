local augroup = vim.api.nvim_create_augroup
DylGroup = augroup('Dyl', {})

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
vim.cmd "colorscheme tokyonight"

local neogit = require('neogit')
neogit.setup {}

require("dyl.set")
require("dyl.packer")
require("dyl.telescope")
require("dyl.keymap")
require("dyl.treesitter")
require("dyl.lsp")
require("dyl.cmp")
require("dyl.formatting")
require("dyl.bufferline")
require("dyl.lualine")
require("dyl.gitsigns")
require("nvim-tree").setup()

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})
