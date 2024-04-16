return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          { ";", ":", desc = "Command" },
          ["<C-h>"] = { "<C-w>h", desc = "Navigate to the left window" },
          ["<C-j>"] = { "<C-w>j", desc = "Navigate to the bottom window" },
          ["<C-k>"] = { "<C-w>k", desc = "Navigate to the top window" },
          ["<C-l>"] = { "<C-w>l", desc = "Navigate to the right window" },
          ["<leader>bn"] = { ":enew<CR>", desc = "New buffer", name = "Buffers" },
          ["<C-q>"] = { ":bd<CR>", silent = true, noremap = true, desc = "Close buffer" },
          ["<leader>b"] = { name = "Buffers" },
          ["<leader>s"] = { name = "Search & replace" },

          -- clipboard management
          ["<leader>Y"] = { [["+Y]], desc = "Copy to clipboard" },
          ["<leader>y"] = { [["+y]], desc = "Copy to clipboard" },
          ["<leader>dd"] = { [["+dd]], desc = "Cut line to clipboard" },
          ["<leader>pp"] = { [["+pp]], desc = "Paste line from clipboard" },

          -- quickfix
          ["<C-kk>"] = { "<cmd>cnext<CR>zz", desc = "Next quickfix item" },
          ["<C-jj>"] = { "<cmd>cprev<CR>zz", desc = "Previous quickfix item" },
          ["<leader>k"] = { "<cmd>lnext<CR>zz", desc = "Next location list item" },
          ["<leader>j"] = { "<cmd>lprev<CR>zz", desc = "Previous location list item" },

          ["<leader>sc"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Search and replace" },
          ["<leader>xe"] = { "<cmd>!chmod +x %<CR>", silent = true, desc = "Set file as executable" },
        },
        v = {
          ["<"] = { "<gv", desc = "Indent left" },
          [">"] = { ">gv", desc = "Indent right" },
          ["J"] = { ":m '>+1<CR>gv=gv", { noremap = true, silent = true }, { desc = "Move line down" } },
          ["K"] = { ":m '<-2<CR>gv=gv", { noremap = true, silent = true }, { desc = "Move line up" } },
          ["<leader>pp"] = { [["+pp]], desc = "Paste line from clipboard" },
          ["<leader>r"] = { [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Search and replace" },
          ["<leader>xe"] = { "<cmd>!chmod +x %<CR>", silent = true, desc = "Set file as executable" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },

    {
      "AstroNvim/astrolsp",
      ---@type AstroLSPOpts
      opts = {
        mappings = {
          n = {},
        },
      },
    },
  },
}
