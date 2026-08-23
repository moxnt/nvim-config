return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      close_command = function(bufnum)
        require("mini.bufremove").delete(bufnum, false)
      end,
      right_mouse_command = "vertical sbuffer %d",
      middle_mouse_command = "buffer %d\nBufferLineTogglePin",
      indicator = {
        style = "none",
      },
      separator_style = "slope",
      themable = false,
    },
  },
}
