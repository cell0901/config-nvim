return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/nvim-cmp"
    },

    config = function()
      -- Setup mason first
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "ts_ls",         -- ts/js
          "rust_analyzer", -- rust
          "prismals",      -- prisma
          "jsonls"         -- JSON
        },
      })

      -- Get capabilities (if using nvim-cmp)
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Configure servers using the new vim.lsp.config API
      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      -- Server-specific settings
      vim.lsp.config.rust_analyzer = {
        capabilities = capabilities,
        settings = {
          ["rust-analyzer"] = {
            check = {
              command = "clippy",
            },
          },
        },
      }

      -- Enable the configured servers
      vim.lsp.enable({
        "lua_ls",
        "pyright",
        "ts_ls",
        "rust_analyzer",
        "prismals",
      })

      -- Keymaps
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = '[E]xpand diagnostic message' })
        end,
      })
    end,
  },
}
