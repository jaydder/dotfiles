return {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    branch = "v3.x",
    dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons" -- opcional, mas recomendado
    },
    lazy = false,                     -- carregar imediatamente
    opts = {
        sources = { "filesystem", "buffers", "git_status" },
        open_files_do_not_reAplace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
        filesystem = {
            bind_to_cwd = false,
            follow_current_file = {
                enabled = true
            },
            use_libuv_file_watcher = true,
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_hidden = false
            }
        },

        default_component_configs = {
            indent = {
                with_expanders = true, -- habilita expanders se o nesting estiver ativo
                expander_collapsed = "",
                expander_expanded = "",
                expander_highlight = "NeoTreeExpander"
            },
            git_status = {
                symbols = {
                    unstaged = "󰄱",
                    staged = "󰱒",
                    untracked = "",
                    renamed = "➜",
                    deleted = "",
                    ignored = "◌"
                }
            }
        }
    },
}
