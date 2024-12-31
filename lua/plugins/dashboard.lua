return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      config = {
        -- header:  -- type is table def
        week_header = {
          enable = true, --boolean use a week header
          -- concat  --concat string after time string line
          -- append  --table append after time string line
        },
        -- disable_move  -- boolean default is false disable move key
      },
      hide = {
        statusline = false, -- hide statusline default is true
        tabline = true, -- hide the tabline
        winbar = false, -- hide winbar
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
--[=====[ 
return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.startify'

    dashboard.section.header.val = {
      [[                                                    ]],
      [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
      [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
      [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
      [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
      [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
      [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
      [[                                                    ]],
    }

    alpha.setup(dashboard.opts)
  end,
}
--]=====]
--
