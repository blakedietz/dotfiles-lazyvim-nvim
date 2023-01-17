return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({})
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
