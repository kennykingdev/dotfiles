return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "denols",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilites = capabilities,
      })
      lspconfig.denols.setup({
        capabilites = capabilities,
        on_attach = on_attach,
        root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
      })
      lspconfig.ts_ls.setup({
        on_attach = on_attach,
        root_dir = lspconfig.util.root_pattern("package.json"),
        single_file_support = false,
        capabilites = capabilities,
      })

      -- Run this stuff when an LSP attaches
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          -- LSP related keymappings
          local map = vim.keymap.set

          map("n", "K", vim.lsp.buf.hover, { desc = "Show Hover" })
          map("n", "gd", vim.lsp.buf.definition, { desc = "[G]o to [D]efinition" })
          map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })
          map("n", "<leader>bf", function()
            vim.lsp.buf.format({ async = true })
          end, { desc = "[B]uffer [F]ormat " })

          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then
            return
          end

          -- Format the current buffer on save
          ---@diagnostic disable-next-line: missing-parameter
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end,
            })
          end
        end,
      })
    end,
  },
  -- {
  --   "nvimtools/none-ls.nvim",
  --   dependencies = {
  --     "nvimtools/none-ls-extras.nvim",
  --   },
  --   config = function()
  --     local null_ls = require("null-ls")
  --
  --     null_ls.setup({
  --       sources = {
  --         null_ls.builtins.formatting.stylua,
  --         null_ls.builtins.formatting.prettierd,
  --         require("none-ls.diagnostics.eslint_d"),
  --         null_ls.builtins.formatting.black,
  --         null_ls.builtins.formatting.isort,
  --       },
  --     })
  --   end,
  -- },
}
