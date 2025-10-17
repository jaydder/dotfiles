return {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = {"Mason", "MasonInstall", "MasonUninstall"},
    opts = {
        ensure_installed = { -- 🧠 LSP servers
        "lua-language-server", "ruff"},
        ui = {
            border = "rounded",
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    },

    config = function(_, opts)
        local mason = require("mason")
        local mr = require("mason-registry")

        mason.setup(opts)

        -- 🔄 Recarrega LSP automaticamente após instalação
        mr:on("package:install:success", function()
            vim.defer_fn(function()
                require("lazy.core.handler.event").trigger({
                    event = "FileType",
                    buf = vim.api.nvim_get_current_buf()
                })
            end, 100)
        end)

        -- 🔧 Instala automaticamente os pacotes faltantes
        mr.refresh(function()
            for _, tool in ipairs(opts.ensure_installed or {}) do
                local ok, p = pcall(mr.get_package, tool)
                if ok and not p:is_installed() then
                    vim.notify("🔧 Instalando: " .. tool, vim.log.levels.INFO)
                    p:install()
                end
            end
        end)
    end
}
