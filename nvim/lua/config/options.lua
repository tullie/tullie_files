local opt = vim.opt

-- General
opt.number = true
opt.showmode = true
opt.mouse = "a"
opt.encoding = "utf-8"
opt.updatetime = 300
opt.shortmess:append("c")
opt.signcolumn = "yes"
opt.hidden = true
opt.termguicolors = true

-- Swap / backup / undo
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- Indentation
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2
opt.expandtab = true

-- Whitespace display
opt.list = true
opt.listchars = { tab = "  ", trail = "·" }

opt.wrap = false
opt.linebreak = true

-- Folds
opt.foldmethod = "indent"
opt.foldnestmax = 3
opt.foldenable = false

-- Completion
opt.wildmode = "list:longest"
opt.wildignore:append({
  "*.o", "*.obj", "*~",
  "*/.git/*", "*/node_modules/*", "*/vendor/*",
  "*.DS_Store", "*.png", "*.jpg", "*.gif",
})

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 15
opt.sidescroll = 1

-- Search
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.background = "dark"
