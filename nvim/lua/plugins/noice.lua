return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"},
    opts = {
        -- Configurações gerais
        cmdline = {
            enabled = true, -- habilita a cmdline melhorada
            view = "cmdline_popup", -- popup para comandos
            format = {
                cmdline = {
                    pattern = "^:",
                    icon = "",
                    lang = "vim"
                },
                search_down = {
                    icon = "",
                    lang = "regex"
                },
                search_up = {
                    icon = "",
                    lang = "regex"
                },
                lua = {
                    icon = "",
                    lang = "lua"
                }
            }
        },

        messages = {
            enabled = true,
            view = "mini", -- mensagens pequenas no canto inferior
            history = 100 -- histórico de mensagens
        },

        popupmenu = {
            enabled = true, -- melhora o popup do completamento
            backend = "nui" -- usa o NUI para exibir
        },

        notify = {
            enabled = true,
            view = "notify" -- integra com nvim-notify
        },

        lsp = {
            progress = {
                enabled = true
            },
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true
            }
        },

        presets = {
            bottom_search = true, -- move barra de pesquisa para o fundo
            command_palette = true, -- estilo de palette para comandos
            long_message_to_split = true, -- mensagens longas vão para split
            inc_rename = true, -- renomeação LSP incremental
            lsp_doc_border = true -- borda nas docs do LSP
        }
    },
    -- opcional: binds para fechar ou rolar mensagens
    keys = {{
        "<leader>mn",
        function()
            require("noice").notify.dismiss()
        end,
        desc = "Dismiss all notifications"
    }, {
        "<S-Enter>",
        function()
            require("noice").redirect(vim.fn.getcmdline())
        end,
        mode = "c",
        desc = "Redirect Cmdline"
    }}
}
