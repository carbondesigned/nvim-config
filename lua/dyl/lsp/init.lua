local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require'lspconfig'.eslint.setup{}

require("dyl.lsp.lsp-installer")
-- require('dyl.lsp.formatting')
require("dyl.lsp.handlers").setup()
