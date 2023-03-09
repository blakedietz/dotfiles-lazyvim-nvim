return {
  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
                       __                                                      
             __       /\ \__                             __                    
     __  __ /\_\  _ __\ \ ,_\  __  __      ___   __  __ /\_\    ___ ___        
    /\ \/\ \\/\ \/\`'__\ \ \/ /\ \/\ \   /' _ `\/\ \/\ \\/\ \ /' __` __`\      
    \ \ \_/ |\ \ \ \ \/ \ \ \_\ \ \_\ \__/\ \/\ \ \ \_/ |\ \ \/\ \/\ \/\ \     
     \ \___/  \ \_\ \_\  \ \__\\ \____/\_\ \_\ \_\ \___/  \ \_\ \_\ \_\ \_\    
      \/__/    \/_/\/_/   \/__/ \/___/\/_/\/_/\/_/\/__/    \/_/\/_/\/_/\/_/    
       ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
        dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
        dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.footer.opts.hl = "Type"
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.opts.layout[1].val = 8
      return dashboard
    end,
  },
}
