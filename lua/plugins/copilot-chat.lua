return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {},
    keys = {
      {
        "<leader>cc",
        ":CopilotChatToggle<CR>",
        desc = "Copilot: Toggle Chat",
        { noremap = true, silent = true },
      },
      { "<leader>cr", ":CopilotChatReset<CR>",        desc = "Copilot: Reset Chat" },
      { "<leader>ce", ":CopilotChatExplain<CR>",      desc = "Copilot: Explain" },
      { "<leader>ct", ":CopilotChatTests<CR>",        desc = "Copilot: Generate test" },
      { "<leader>cd", ":CopilotChatDocs<CR>",         desc = "Copilot: Write docs" },
      { "<leader>co", ":CopilotChatCommitStaged<CR>", desc = "Copilot: Commit message for staged files" },
    },
  },
}
