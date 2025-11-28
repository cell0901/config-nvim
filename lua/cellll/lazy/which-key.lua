return {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup({
      preset = "classic", -- or "modern" or "helix"
      notify = false,
      triggers = {
        { "<leader>", mode = { "n", "v" } },
      },
    })
  end,
}
