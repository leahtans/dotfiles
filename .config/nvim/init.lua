-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Godot Setup Start
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilties())
-- require('lspconfig').gdscript.setup(capabilities)
--
-- local gdproject = io.open(vim.fn.getcwd()..'/project.godot', 'r')
-- if gdproject then
--     io.close(gdproject)
--     vim.fn.serverstart './godothost'
-- end
-- Godot Setup End
