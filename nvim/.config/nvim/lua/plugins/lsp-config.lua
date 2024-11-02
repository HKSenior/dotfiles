return {
  {
    'williamboman/mason.nvim',
    config = function ()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function ()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'lua_ls',
          'clangd',
          'tsserver',
          'harper_ls',
        },
      })
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function ()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.harper_ls.setup {
        settings = {
          ["harper-ls"] = {
            sentence_capitalization = false,
          }
        }
      }
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end,
  },
}

