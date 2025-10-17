local Neotree = require("neo-tree")
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    picker = {
      ignored = true, -- para arquivos .gitignore
    },

    terminal = {
      win = {
        keys = {
          hide_slash = { "<C-/>", "hide", desc = "Hide Terminal", mode = { "t", "n" } },
        },
      },
    },

    dashboard = {
      preset = {
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = "", key = "p", desc = "Projects", action = ":lua Snacks.picker.projects()" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },

      },
    },
  },


  keys = {

    -- Top Pickers & Explorer
    { "<leader><space>", function() Snacks.picker.smart() end,                desc = "Smart Find Files" },
    { "<leader>,",       function() Snacks.picker.buffers() end,              desc = "Buffers" },
    { "<leader>e",       function() Snacks.explorer() end,                    desc = "File Explorer" },
    -- find
    { "<leader>ff",      function() Snacks.picker.files() end,                desc = "Find Files" },
    { "<leader>fp",      function() Snacks.picker.projects() end,             desc = "Projects" },
    -- Grep
    { "<leader>sg",      function() Snacks.picker.grep() end,                 desc = "Grep" },
    { "<leader>sw",      function() Snacks.picker.grep_word() end,            desc = "Visual selection or word", mode = { "n", "x" } },
    -- LSP
    { "gd",              function() Snacks.picker.lsp_definitions() end,      desc = "Goto Definition" },
    { "gD",              function() Snacks.picker.lsp_declarations() end,     desc = "Goto Declaration" },
    { "gr",              function() Snacks.picker.lsp_references() end,       nowait = true,                     desc = "References" },
    { "gI",              function() Snacks.picker.lsp_implementations() end,  desc = "Goto Implementation" },
    { "gy",              function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
    -- Other
    { "<leader>gg",      function() Snacks.lazygit() end,                     desc = "Lazygit" },
    { "<leader>un",      function() Snacks.notifier.hide() end,               desc = "Dismiss All Notifications" },
    { "<c-/>",           function() Snacks.terminal() end,                    desc = "Toggle Terminal" },
    -- { "<c-_>",  function() Snacks.terminal() end, desc = "which_key_ignore" },

    { "]]",              function() Snacks.words.jump(vim.v.count1) end,      desc = "Next Reference",           mode = { "n", "t" } },
    { "[[",              function() Snacks.words.jump(-vim.v.count1) end,     desc = "Prev Reference",           mode = { "n", "t" } },
  },
  init = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        -- Setup some globals for debugging (lazy-loaded)
        _G.dd = function(...)
          Snacks.debug.inspect(...)
        end
        _G.bt = function()
          Snacks.debug.backtrace()
        end
      end,
    })
  end,
}
