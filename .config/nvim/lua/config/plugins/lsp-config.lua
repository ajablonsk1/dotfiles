return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "gopls", "bashls", "azure_pipelines_ls", "jsonls", "ruff", "yamlls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      -- go
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })

      -- bash
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })

      -- azure pipelines
      lspconfig.azure_pipelines_ls.setup({
        capabilities = capabilities,
        settings = {
          yaml = {
            schemas = {
              ["https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json"] = {
                ".azure-pipeline/*",
              },
            },
          },
        },
      })

      -- json
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })

      -- python
      lspconfig.ruff.setup({
        capabilities = capabilities,
      })

      -- yaml
      lspconfig.yamlls.setup({
        capabilities = capabilities,
      })

      -- keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
      vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, {})
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
