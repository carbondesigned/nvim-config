vim.g.copilot_filetypes = { xml = false }

vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

-- Copilot accept remap.
vim.cmd('imap <silent><script><expr> <C-J> copilot#Accept("<CR>")')

vim.cmd [[highlight CopilotSuggestion guifg=#aeaeae ctermfg=8]]
