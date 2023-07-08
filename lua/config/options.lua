-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Show all whitespace
vim.o.list = true
vim.o.lcs = "tab:> ,trail:·,eol:¬,nbsp:_"

if vim.g.neovide then
  vim.o.guifont = "BerkeleyMono Nerd Font:h16"
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
