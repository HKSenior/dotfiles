return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      -- A list of installed parsers
      ensure_installed = {
        "c",
        "lua",
        "kotlin",
        "bash",
        "go",
        "java",
        "javascript",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        "html",
        "css",
      },

      -- Install parser synchronously (only applies to ensure_installed)
      sync_install = false,

      highlight = { enable = true },
      indent = { enable = true },  
    })
  end,
}

