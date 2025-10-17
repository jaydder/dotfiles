return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {{
        "<leader>bp",
        "<Cmd>BufferLineTogglePin<CR>",
        desc = "Toggle Pin"
    }, {
        "<leader>t",
        "<Cmd>BufferLineCloseOthers<CR>",
        desc = "Delete Non-Pinned Buffers"
    }, {
        "<S-h>",
        "<Cmd>BufferLineCyclePrev<CR>",
        desc = "Prev Buffer"
    }, {
        "<S-l>",
        "<Cmd>BufferLineCycleNext<CR>",
        desc = "Next Buffer"
    }, {
        "<Tab>",
        "<Cmd>BufferLineCycleNext<CR>",
        desc = "Next Buffer"
    }},
    opts = {
        -- aqui você pode adicionar configurações, por exemplo:
        options = {
            diagnostics = "nvim_lsp",
            show_buffer_close_icons = true,
            show_close_icon = false,
            separator_style = "thin",
            always_show_bufferline = true
        }
    }
}
