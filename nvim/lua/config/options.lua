-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- HACK: Override local leader from "\\" to " "
vim.g.maplocalleader = " "

-- INFO: Disable some WARNINGS in 'checkhealth'
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- INFO: Recommended by 'checkhealth'
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
