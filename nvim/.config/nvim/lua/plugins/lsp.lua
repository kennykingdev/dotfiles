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
				"tsserver",
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
        capabilites = capabilities
      })
			lspconfig.tsserver.setup({
        capabilites = capabilities
      })

			local map = vim.keymap.set

			map("n", "K", vim.lsp.buf.hover, { desc = "Show Hover" })
			map("n", "gd", vim.lsp.buf.definition, { desc = "[G]o to [D]efinition" })
			map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })
			map("n", "<leader>f", function()
				vim.lsp.buf.format({ async = true })
			end, { desc = "[F]ormat Buffer" })
		end,
	},
}
