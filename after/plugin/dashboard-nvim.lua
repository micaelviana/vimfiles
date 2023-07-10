local status, db = pcall(require, "dashboard")
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
        action = 'Telescope oldfiles'
      },
      {
        icon = '  ',
        desc = 'Find Files',
        key = 'f',
        keymap = 'Ctrl p',
        action = 'Telescope find_files'
      },
      {
        icon = ' 󰜎 ',
        desc = 'Quit neovim',
        key = 'q',
        keymap = ':quit',
        action = 'quit'
      }
    },
    footer = {"blah blah blah"}  --your footer
  }
})
