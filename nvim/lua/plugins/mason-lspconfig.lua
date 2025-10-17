return {
    "mason-org/mason-lspconfig.nvim",
    config = function()
        local mason_lspconfig = require("mason-lspconfig")

        -- instalar automaticamente os servidores que você especificar
        mason_lspconfig.setup({
            ensure_installed = { -- 🧠 LSP servers
            "lua-language-server", "pyright", "ruff"},
            automatic_installation = true
        })
    end
}
