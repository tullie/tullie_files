-- Per-server settings, consumed via Neovim's native vim.lsp.config/vim.lsp.enable
-- (0.11+) rather than the deprecated lspconfig[name].setup() indexing.
-- nvim-lspconfig just supplies the default per-server configs on runtimepath.
-- mason-lspconfig's automatic_installation means the server binary is fetched
-- the first time a matching filetype is opened, not eagerly at startup.
local servers = {
  lua_ls = {
    settings = {
      Lua = { diagnostics = { globals = { "vim" } } },
    },
  },
  bashls = {},
  pyright = {},
  ts_ls = {},
  gopls = {},
  rust_analyzer = {},
}

return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
    opts = {
      ensure_installed = { "lua_ls" },
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason-org/mason-lspconfig.nvim", "saghen/blink.cmp" },
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
          local map = vim.keymap.set
          local opts = { buffer = ev.buf }
          map("n", "gd", vim.lsp.buf.definition, opts)
          map("n", "gD", vim.lsp.buf.declaration, opts)
          map("n", "gr", vim.lsp.buf.references, opts)
          map("n", "K", vim.lsp.buf.hover, opts)
          map("n", "<leader>rn", vim.lsp.buf.rename, opts)
          map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          map("n", "[d", vim.diagnostic.goto_prev, opts)
          map("n", "]d", vim.diagnostic.goto_next, opts)
          map("n", "<leader>e", vim.diagnostic.open_float, opts)
        end,
      })

      for name, opts in pairs(servers) do
        opts.capabilities = capabilities
        vim.lsp.config(name, opts)
      end
      vim.lsp.enable(vim.tbl_keys(servers))
    end,
  },
}
