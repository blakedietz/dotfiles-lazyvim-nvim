if vim.g.vscode then
  return {
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "",
      },
    },
  }
else
  return {
    {
      "folke/tokyonight.nvim",
      opts = {
        dim_inactive = true,
        on_highlights = function(hl, c)
          -- Make borders slightly more legible VertSplit didn't seem to do anything
          hl.WinSeparator = {
            fg = c.cyan,
          }
        end,
      },
    },
  }
end
