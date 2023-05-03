local augroup = vim.api.nvim_create_augroup
DylGroup = augroup('Dyl', {})

-- Plugins
require("dyl.packer")
require("dyl.set")
require("dyl.telescope")
require("dyl.keymap")
require("dyl.treesitter")
require("dyl.lsp")
require("dyl.cmp")
require("dyl.bufferline")
require("dyl.lualine")
require("dyl.gitsigns")
require("dyl.comments")
require("dyl.copilot")
require("dyl.nvimtree")
-- require('dyl.lsp.formatting')

-- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
--[[ vim.cmd "colorscheme gruvbox" ]]
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

 require("catppuccin").setup({
     transparent_background = true
 })

vim.cmd [[colorscheme catppuccin]]
-- vim.cmd [[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]]

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

vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.bg = "dark"

require('nvim-ts-autotag').setup()
require 'colorizer'.setup()
local neogit = require('neogit')
neogit.setup {}
