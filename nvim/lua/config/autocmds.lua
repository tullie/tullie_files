-- Briefly highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("tullie-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

-- Remove trailing whitespace display / listchars noise in special buffers
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("tullie-ftplugin", { clear = true }),
  pattern = { "help", "lspinfo", "man", "checkhealth" },
  callback = function(ev)
    vim.bo[ev.buf].buflisted = false
  end,
})
