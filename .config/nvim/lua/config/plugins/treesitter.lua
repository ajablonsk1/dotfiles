return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
      
    configs.setup({
        ensure_installed = { "bash", "go", "helm", "html", "json", "lua", "make", "python", "rust", "sql", "terraform", "tmux", "toml", "yaml" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
  end
}
