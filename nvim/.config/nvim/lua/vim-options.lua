-- Revolve the line numbers around the current line
vim.cmd("set relativenumber")
vim.cmd("set number")

-- Show the line and column number of the cursor
vim.cmd("set ruler")

vim.cmd("syntax enable")

-- Use 2 spaces for tabs (expand tabs using spaces)
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Set mapleader & maplocalleader
vim.cmd("let mapleader=' '")

-- Clear highlighting
vim.cmd("nnoremap <leader>c :nohl<cr>")

-- Save buffer and quit neovim
vim.cmd("nnoremap <leader>w :w<cr>")
vim.cmd("nnoremap <leader>q :q<cr>")
vim.cmd("nnoremap <leader><leader>q :qa<cr>")

-- Map the Escape button to 'jK' and 'kj'
vim.cmd("inoremap jk <Esc>`^")
vim.cmd("inoremap kj <Esc>`^")

-- Remap the jump to line command to the enter button
-- (e.x. 123gg -> 123<ENTER>)
vim.cmd("noremap <cr> G")

-- Add colon command to print the current runtime paths
vim.cmd("command! Getrtp lua print(vim.inspect(vim.api.nvim_list_runtime_paths()))")

-- Hightlight the cursor line
vim.opt.cursorline = true

-- Change line number colors
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='orange', bold=false, italic=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=false, italic=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='lightblue', bold=false, italic=true })

