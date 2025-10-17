-- Auto-completion / Snippets
return {
    -- https://github.com/hrsh7th/nvim-cmp
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',

    dependencies = {                                                     -- Snippet engine & source
        'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip',                  -- LSP completion
        'hrsh7th/cmp-nvim-lsp',                                          -- Additional completions
        'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline', -- Extra snippets
        'rafamadriz/friendly-snippets' },

    config = function()
        local cmp = require('cmp')
        local luasnip = require('luasnip')

        -- Carrega snippets do vscode
        require('luasnip.loaders.from_vscode').lazy_load()
        luasnip.config.setup({})

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end
            },

            completion = {
                completeopt = 'menu,menuone,noinsert'
            },

            mapping = cmp.mapping.preset.insert({
                ['<C-j>'] = cmp.mapping.select_next_item(),
                ['<C-k>'] = cmp.mapping.select_prev_item(),
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete({}),
                ['<CR>'] = cmp.mapping.confirm({
                    select = true
                }),

                ['<Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_locally_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { 'i', 's' }),

                ['<S-Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.locally_jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { 'i', 's' })
            }),

            sources = cmp.config.sources({ {
                name = 'nvim_lsp'
            }, {
                name = 'luasnip'
            }, {
                name = 'buffer'
            }, {
                name = 'path'
            } }),

            window = {
                completion = cmp.config.window.bordered({
                    side_padding = 1,
                    border = "rounded",
                }),
                documentation = cmp.config.disable, -- 🚫 Desativa o popup de documentação
            },

            formatting = {
                fields = { "abbr", "kind", "menu" },
                format = function(entry, vim_item)
                    -- Mostra o nome completo da função (sem truncar)
                    vim_item.abbr = vim_item.abbr:gsub("%s+", " ")

                    -- Opcional: ajusta ícones (se quiser manter um visual limpo)
                    local kind_icons = {
                        Text = "",
                        Method = "",
                        Function = "",
                        Constructor = "",
                        Field = "",
                        Variable = "",
                        Class = "",
                        Interface = "",
                        Module = "",
                        Property = "",
                        Unit = "",
                        Value = "",
                        Enum = "",
                        Keyword = "",
                        Snippet = "",
                        Color = "",
                        File = "",
                        Reference = "",
                        Folder = "",
                        EnumMember = "",
                        Constant = "",
                        Struct = "",
                        Event = "",
                        Operator = "",
                        TypeParameter = "",
                    }
                    vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind] or "", vim_item.kind)

                    -- Mostra a origem (LSP, snippet, buffer, etc)
                    vim_item.menu = ({
                        nvim_lsp = "[LSP]",
                        luasnip = "[Snippet]",
                        buffer = "[Buffer]",
                        path = "[Path]",
                    })[entry.source.name]

                    return vim_item
                end,
            },
            view = {
                entries = {
                    name = 'custom',
                    selection_order = 'near_cursor',
                    max_item_count = 5
                }
            }

        })

        -- 🧠 Integra capabilities com o novo sistema do Neovim 0.11
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        vim.lsp.config.capabilities = vim.tbl_deep_extend('force', {}, vim.lsp.config.capabilities or {}, capabilities)
    end
}
