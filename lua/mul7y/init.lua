require("mul7y.remap")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.guifont = { "jetbrains mono nerd font", ":h14" }
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
vim.opt.list = true


-- Visible Whitespace
vim.opt.listchars:append("tab:>-")
vim.opt.listchars:append("space:⋅")

-- Sync with system clipboard
vim.opt.clipboard = "unnamedplus"
