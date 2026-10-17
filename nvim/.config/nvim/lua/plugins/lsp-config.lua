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
          --'tsserver',
          'harper_ls',
        },
      })
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function ()
      vim.lsp.config('lua_ls', {})
      vim.lsp.config('clangd', {})
      -- lspconfig.ts_ls.setup({})
      vim.lsp.config('harper_ls', {
        settings = {
          ["harper-ls"] = {
            sentence_capitalization = false,
          }
        }
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end,
  },
}

