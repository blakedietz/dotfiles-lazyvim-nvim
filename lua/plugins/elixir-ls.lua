return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          init_options = {
            userLanguages = {
              elixir = "phoenix-heex",
              heex = "phoenix-heex",
            },
          },
          settings = {
            includeLanguages = {
              ["html-eex"] = "html",
              ["phoenix-heex"] = "html",
              heex = "html",
              eelixir = "html",
              elixir = "html",
            },
          },
        },
      },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    opts = function()
      -- Not actually running anything that modifies the snippet options, primarily just trying to configure
      -- snippets to be loaded
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { "/Users/blakedietz/projects/blakedietz/phoenix-liveview-snippets/liveview_snippets" },
      })
    end,
  },
}
