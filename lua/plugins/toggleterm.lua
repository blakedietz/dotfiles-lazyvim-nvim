return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        size = 20,
        direction = "horizontal",
      })
    end,
    keys = {
      {
        "<Leader>t",
        function()
          require("toggleterm").toggle(vim.v.count1)
        end,
      },
    },
    lazy = false,
  },
}
