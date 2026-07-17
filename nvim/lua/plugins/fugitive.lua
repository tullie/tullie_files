return {
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gdiffsplit", "Gvdiffsplit", "Gclog", "Gblame" },
    keys = {
      { "<leader>gs", "<cmd>Git<CR>", desc = "Git status" },
      { "<leader>gd", "<cmd>Gdiffsplit<CR>", desc = "Git diff" },
    },
  },
}
