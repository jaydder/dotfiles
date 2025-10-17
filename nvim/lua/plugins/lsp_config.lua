-- LSP Support
return {
    "neovim/nvim-lspconfig",
    dependencies = {{"williamboman/mason.nvim"}, {"williamboman/mason-lspconfig.nvim"},
                    {"WhoIsSethDaniel/mason-tool-installer.nvim"}, {
        "folke/neodev.nvim",
        opts = {}
    }},

    opts = function()
        ---@class PluginLspOpts
        local ret = {
            diagnostics = {
                underline = true,
                update_in_insert = false,
                virtual_text = {
                    spacing = 4,
                    source = "if_many",
                    prefix = "●"
                },
                severity_sort = true,
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = " ",
                        [vim.diagnostic.severity.WARN] = " ",
                        [vim.diagnostic.severity.HINT] = " ",
                        [vim.diagnostic.severity.INFO] = " "
                    }
                }
            },

            inlay_hints = {
                enabled = true,
                exclude = {"vue"}
            },

            codelens = {
                enabled = false
            },
            folds = {
                enabled = true
            },

            capabilities = {
                workspace = {
                    fileOperations = {
                        didRename = true,
                        willRename = true
                    }
                }
            },

            format = {
                formatting_options = nil,
                timeout_ms = nil
            },

            ---@type table<string, vim.lsp.Config|boolean>
            servers = {
                lua_ls = {
                    settings = {
                        Lua = {
                            workspace = {
                                checkThirdParty = false
                            },
                            codeLens = {
                                enable = true
                            },
                            completion = {
                                callSnippet = "Replace"
                            },
                            doc = {
                                privateName = {"^_"}
                            },
                            hint = {
                                enable = true,
                                setType = false,
                                paramType = true,
                                paramName = "Disable",
                                semicolon = "Disable",
                                arrayIndex = "Disable"
                            }
                        }
                    }
                }
            }
        }

        return ret
    end,

    config = function(_, opts)
        -- Configurações básicas do LSP nativo
        vim.diagnostic.config(opts.diagnostics)

        -- 🔧 Integração com Mason
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(opts.servers or {})
        })

    end
}
