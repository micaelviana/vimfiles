local ok, db = pcall(require, "dashboard")

if (not ok) then return end

db.setup({
  theme = 'doom',
  config = {
    header = {
        "",
        "",
        " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
        " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
        " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
        " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
        " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
        " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
        "",
        "",
    }, --your header
    center = {
      {
        icon = '  ',
        desc = 'New File',
        key = 'n',
        keymap = ':enew',
        action = 'enew'
      },
      {
        icon = ' 󰁯 ',
        desc = 'Recent Files',
        key = 'r',
        keymap = 'Ctrl r',
        action = 'FzfLua oldfiles'
      },
      {
        icon = '  ',
        desc = 'Find Files',
        key = 'f',
        keymap = 'Ctrl p',
        action = 'FzfLua files'
      },
      {
        icon = '  ',
        desc = 'Configuration',
        key = 'c',
        keymap = ':e $MYVIMRC',
        action = 'edit ~/.config/nvim/init.vim'
      },
      {
        icon = ' 󰜎 ',
        desc = 'Quit neovim',
        key = 'q',
        keymap = ':quit',
        action = 'quit'
      }
    },
    footer = {}  --your footer
  }
})
