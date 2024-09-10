return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require("neo-tree").setup({
      close_if_last_window = true, 
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,       
      sort_case_insensitive = true,
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        }
      }
    })
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
  end,
}

