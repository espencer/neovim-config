local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

vim.opt.list = true
vim.opt.listchars = { space = '·',trail = '·', tab = '⇤–⇥' }
vim.opt.showbreak = '↪'
vim.opt.cursorline = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.colorcolumn = '80'

