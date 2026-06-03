return {
  "saghen/blink.cmp",
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      commit = "e2b7972",
      build = "make install_jsregexp",
    },
    "windwp/nvim-autopairs",
  },
  version = "*", -- use latest release (has pre-built Rust binaries)
  opts = {
    keymap = {
      preset = "default",
      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
      ["<C-e>"] = { "cancel", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
    },
    snippets = {
      preset = "luasnip", -- keeps your LuaSnip setup
    },
    sources = {
      default = { "lsp", "snippets", "buffer", "path" },
    },
    completion = {
      accept = {
        auto_brackets = { enabled = true }, -- replaces nvim-autopairs cmp integration
      },
      documentation = {                     -- to show small doc buffer window while auto suggestion. of the function descrition
        auto_show = true,
        auto_show_delay_ms = 200,
      }
    },
  },
}

--
-- return {
--   "hrsh7th/nvim-cmp",
--   dependencies = {
--     "hrsh7th/cmp-nvim-lsp", -- LSP completions
--     "hrsh7th/cmp-buffer",   -- Buffer completions
--     "hrsh7th/cmp-path",     -- Path completions
--     {
--       "L3MON4D3/LuaSnip",
--       commit = "e2b7972",
--       -- no version pin at all
--       build = "make install_jsregexp",
--     },                          -- Snippet engine (required!)
--     "saadparwaiz1/cmp_luasnip", -- Snippet completions
--     "windwp/nvim-autopairs",
--   },
--   config = function()
--     local cmp = require("cmp")
--     local luasnip = require("luasnip")
--     cmp.setup({
--       snippet = {
--         expand = function(args)
--           luasnip.lsp_expand(args.body)
--         end,
--       },
--       mapping = cmp.mapping.preset.insert({
--         ["<C-b>"] = cmp.mapping.scroll_docs(-4),
--         ["<C-f>"] = cmp.mapping.scroll_docs(4),
--         ["<C-e>"] = cmp.mapping.abort(),
--         ["<CR>"] = cmp.mapping.confirm({ select = true }),
--
--         ["<Tab>"] = cmp.mapping(function(fallback)
--           if cmp.visible() then
--             cmp.select_next_item()
--           else
--             fallback()
--           end
--         end, { "i", "s" }),
--       }),
--
--       sources = cmp.config.sources({
--         { name = "nvim_lsp" },
--         { name = "luasnip" },
--       }, {
--         { name = "buffer" },
--         { name = "path" },
--       }),
--     })
--   end,
--
-- }
