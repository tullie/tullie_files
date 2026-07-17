return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<C-\\>", "<cmd>NvimTreeFindFileToggle<CR>", desc = "Toggle file tree" },
    },
    opts = {
      view = { width = 30 },
      renderer = { group_empty = true },
      filters = { dotfiles = false },
    },
  },
}
