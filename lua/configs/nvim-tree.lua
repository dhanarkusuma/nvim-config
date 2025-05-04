local nvimtree = require "nvim-tree"

nvimtree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    debounce_delay = 50,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },

  git = {
    enable = true,
    ignore = false,
    show_on_dirs = true,
    timeout = 500,
  },

  view = {
    width = 30,
    side = "left",
    preserve_window_proportions = true,
    relativenumber = true,
  },

  filters = {
    dotfiles = false,
    custom = { ".DS_Store", "node_modules" },
  },

  renderer = {
    root_folder_label = false,
    highlight_git = true,
    highlight_opened_files = "all",
    indent_markers = {
      enable = true,
    },
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
        },
      },
    },
  },

  actions = {
    open_file = {
      quit_on_open = true,
      resize_window = true,
    },
  },

  update_focused_file = {
    enable = true,
    update_root = true,
  },
}
