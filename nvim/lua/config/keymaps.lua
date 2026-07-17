local map = vim.keymap.set

-- Make Y consistent with C and D
map("n", "Y", "y$")

-- Make 0 go to first non-blank character; ^ goes to true start of line
map("n", "0", "^")
map("n", "^", "0")

-- Go to last edit location
map("n", ",.", "'.")

-- Jump past an auto-closed quote while still in insert mode: 'foo<C-a>'
map("i", "<C-a>", "<Esc>wa")

-- Quickfix window
map("n", ",qc", ":cclose<CR>", { silent = true })
map("n", ",qo", ":copen<CR>", { silent = true })

-- Clear search highlight
map("n", "//", ":nohlsearch<CR>", { silent = true })

-- Cycle buffers
map("n", ",z", ":bp<CR>", { silent = true })
map("n", ",x", ":bn<CR>", { silent = true })

-- Create the file under the cursor if it doesn't exist
map("n", "gf", ":e <cfile><CR>")
map("n", "<C-w>f", ":sp +e <cfile><CR>")
map("n", "<C-w>gf", ":tabe <cfile><CR>")

-- Faster window splits
map("n", "vv", "<C-w>v", { silent = true })
map("n", "ss", "<C-w>s", { silent = true })

-- Toggle search highlighting
map("n", ",hl", ":set hlsearch! hlsearch?<CR>")

-- Swap ' and ` marks (column-aware jump is more useful on the easy key)
map("n", "'", "`")
map("n", "`", "'")

-- Strip trailing whitespace
map("n", ",w", function()
  local view = vim.fn.winsaveview()
  vim.cmd([[keeppatterns %s/\s\+$//e]])
  vim.fn.winrestview(view)
end, { desc = "Strip trailing whitespace" })
