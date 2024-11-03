return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      always_show_bufferline = true,
      groups = {
        items = {
          require("bufferline.groups").builtin.pinned:with({ icon = "󰐃 " }),
        },
      },

      offsets = {
        {
          filetype = "neo-tree",
          text = "󰙅 NeoTree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
}
