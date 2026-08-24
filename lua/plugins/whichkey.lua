return { -- Which-key is useful for seeing all the things that snacks.picker offers
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = function(ctx)
      return ctx.plugin and 0 or 500 -- Default config with increased delay
    end,
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show { global = false }
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
