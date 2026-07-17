local parsers = {
  "lua", "vim", "vimdoc", "query",
  "bash", "python", "javascript", "typescript", "tsx",
  "json", "yaml", "toml", "markdown", "markdown_inline",
  "go", "rust", "html", "css",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter").install(parsers)

      -- Start highlighting for any filetype with an installed parser;
      -- no-ops quietly if there isn't one.
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
    end,
  },
}
