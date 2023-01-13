return {
  {
    "pwntester/octo.nvim",
    cmd = { "Octo" },
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
    config = function()
      require("octo").setup()
    end,
  },
}
