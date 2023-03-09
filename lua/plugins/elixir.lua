return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        elixirls = {
          filetypes = { "elixir", "eelixir", "heex" },
        },
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
  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default config, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "eex",
        "elixir",
        "erlang",
        "heex",
        "html",
        "json",
        "javascript",
        "tsx",
        "typescript",
      })
    end,
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
