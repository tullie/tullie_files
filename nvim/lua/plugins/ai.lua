-- Chat/inline-edit with Claude, straight from Neovim.
-- Requires ANTHROPIC_API_KEY to be set in the environment (see README).
return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
    cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionActions" },
    keys = {
      { "<leader>aa", "<cmd>CodeCompanionActions<CR>", desc = "AI actions" },
      { "<leader>ac", "<cmd>CodeCompanionChat Toggle<CR>", desc = "AI chat" },
      { "<leader>ac", ":CodeCompanionChat Add<CR>", mode = "v", desc = "Add selection to AI chat" },
    },
    opts = {
      strategies = {
        chat = { adapter = "anthropic" },
        inline = { adapter = "anthropic" },
      },
    },
  },
}
