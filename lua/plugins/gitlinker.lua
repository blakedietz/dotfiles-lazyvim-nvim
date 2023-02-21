return {
  {
    "ruifm/gitlinker.nvim",
    keys = {
      {
        "<leader>gb",
        '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
      },
    },
  },
}
