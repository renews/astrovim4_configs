---@type LazySpec
return {
  "rmagatti/auto-session",
  "f-person/git-blame.nvim",
  { "echasnovski/mini.jump2d", version = false, opts = {} },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", ":LazyGit<CR>", desc = "LazyGit" },
    },
  }, {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  event = "VeryLazy",
  cmd = { "TodoQuickFix" }, -- open when typing command
  keys = {
    { "<leader>TT", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
  },
},
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        " /$$   /$$                           /$$$$$$$                                         ",
        "| $$$ | $$                          | $$__  $$                                        ",
        "| $$$$| $$  /$$$$$$  /$$$$$$$       | $$  \\ $$ /$$    /$$ /$$$$$$$  /$$$$$$   /$$$$$$ ",
        "| $$ $$ $$ /$$__  $$| $$__  $$      | $$  | $$|  $$  /$$//$$_____/ /$$__  $$ /$$__  $$",
        "| $$  $$$$| $$  \\ $$| $$  \\ $$      | $$  | $$ \\  $$/$$/| $$      | $$  \\ $$| $$  \\__/",
        "| $$\\  $$$| $$  | $$| $$  | $$      | $$  | $$  \\  $$$/ | $$      | $$  | $$| $$      ",
        "| $$ \\  $$|  $$$$$$/| $$  | $$      | $$$$$$$/   \\  $/  |  $$$$$$$|  $$$$$$/| $$ /$$  ",
        "|__/  \\__/ \\______/ |__/  |__/      |_______/     \\_/    \\_______/ \\______/ |__/| $/  ",
        "                                                                                |_/   ",
        " ",
        "                     /$$$$$$$                                   ",
        "                    | $$__  $$                                 ",
        "                    | $$  \\ $$ /$$    /$$ /$$$$$$$  /$$$$$$   ",
        "                    | $$  | $$|  $$  /$$//$$_____/ /$$__  $$   ",
        "                    | $$  | $$ \\  $$/$$/| $$      | $$  \\ $$ ",
        "                    | $$  | $$  \\  $$$/ | $$      | $$  | $$  ",
        "                    | $$$$$$$/   \\  $/  |  $$$$$$$|  $$$$$$/  ",
        "                    |_______/     \\_/    \\_______/ \\______/ ",
      }
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip" (plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs" (plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
          -- don't add a pair if the next character is %
              :with_pair(cond.not_after_regex "%%")
          -- don't add a pair if  the previous character is xxx
              :with_pair(
                cond.not_before_regex("xxx", 3)
              )
          -- don't move right when repeat character
              :with_move(cond.none())
          -- don't delete if the next character is xx
              :with_del(cond.not_after_regex "xx")
          -- disable adding a newline when you press <cr>
              :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}
