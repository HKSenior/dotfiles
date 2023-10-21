"$(EXECUTABLE): vim: foldmethod=marker
"
" $$\    $$\ $$\                      $$$$$$\                       $$$$$$\  
" $$ |   $$ |\__|                    $$  __$$\                     $$  __$$\ 
" $$ |   $$ |$$\ $$$$$$\$$$$\        $$ /  \__| $$$$$$\  $$$$$$$\  $$ /  \__|
" \$$\  $$  |$$ |$$  _$$  _$$\       $$ |      $$  __$$\ $$  __$$\ $$$$\     
"  \$$\$$  / $$ |$$ / $$ / $$ |      $$ |      $$ /  $$ |$$ |  $$ |$$  _|    
"   \$$$  /  $$ |$$ | $$ | $$ |      $$ |  $$\ $$ |  $$ |$$ |  $$ |$$ |      
"    \$  /   $$ |$$ | $$ | $$ |      \$$$$$$  |\$$$$$$  |$$ |  $$ |$$ |      
"     \_/    \__|\__| \__| \__|       \______/  \______/ \__|  \__|\__|      
"
" A customized .vimrc for vim 

"{{{=> Plugins

call plug#begin()
    Plug 'junegunn/vim-easy-align'
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-vividchalk'
    Plug 'nanotech/jellybeans.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'xavierd/clang_complete'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-fugitive'
call plug#end()

"}}}

"{{{=> General

    " Controll where vim looks to complete completions
    set complete+=kspell

    " Settings for the completeion popup menu 
    set completeopt=menuone,longest

    " Hide menu messages while using completions
    set shortmess+=c

    " Disable visual bell
    set t_vb=

    " Cursor settings
    " 
    " Reference chat of values
    "   Ps = 0  -> blinking block
    "   Ps = 1  -> blinling block (default)
    "   Ps = 2  -> steady block
    "   Ps = 3  -> blinking underline
    "   Ps = 4  -> steady underline
    "   Ps = 5  -> blinking bar (xtrem)
    "   Ps = 6  -> steady bar (xterm)
    " * SI is for insert mode
    " * EI is for everything else apart from insert mode
    let &t_SI = "\e[6 q"
    let &t_EI = "\e[2 q"

    " Use modelines
    set modeline
    set modelines=1

    " Sets how many lines of history to remember
    set history=1000

    " Enable file type plugins
    filetype plugin on
    filetype indent on

    " Show file changes when a file is edited
    set autoread

    " Set mapleader & maplocalleader
    let mapleader = " "
    let maplocalleader = "."

    " Fast saving and saving
    map <leader>w :w!<cr>
    map <leader>q :q<cr>

    " Don't beep
    set visualbell
    set noerrorbells

    " Turn backup files off
    set nobackup
    set noswapfile
    set nowb

    " Set the clipboard setting
    set clipboard=unnamed

    " Fix a known bug conflicting autoclose (plugin) & abbreviations
    let g:AutoCloseExpandSpace = 0

"}}}

"{{{=> Vim user interfacu
"
    "Stop using the arrows
    nnoremap <up> <nop>
    nnoremap <down> <nop>
    nnoremap <right> <nop>
    nnoremap <left> <nop>
    inoremap <up> <nop>
    inoremap <down> <nop>
    inoremap <right> <nop>
    inoremap <left> <nop>
    nnoremap j gj
    nnoremap k gk
 
    " Set 5 lines - when moving vertically with j/k
    set so=5

    " Turn on the wildmenu
    set wildmenu

    " Always show current position
    set ruler

    " Height of the cmd bar
    set cmdheight=1

    " Configure backspace 
    set backspace=indent,eol,start

    " Ignore case when searching
    set ignorecase

    " Try to be smart about cases
    set smartcase

    " Highlight search results
    set hlsearch

    " Make the search act like the way it does in 
    " modern browsers
    set incsearch

    " Don't redraw while executing macros
    set lazyredraw

    " Turn magic on for regular expressions
    set magic

    " Show matching braces
    set showmatch 

    " Set fold method to indent
    set foldmethod=syntax
    
    " Set fold column to 2
    set foldcolumn=2

    " Tell vim to close all folds when opening a file
    set foldlevel=0

    " Disable mouse functions in macvim
    set mouse=

    " Set the amount of time vim waits for the next keystroke
    set timeoutlen=325

"}}}

"{{{=> Colors and Fonts

    " Enable syntax highlighting
    syntax enable

    " Use the dark theme
    set background=dark

    " Set colorscheme
    colorscheme jellybeans

    " Use hybrid custom terminal colors
    let g:hybrid_custom_term_colors = 1

    " Set the color of the number line
    hi LineNr ctermfg = lightblue

    " Set term colors to 256
    let g:solarized_termcolors = 256

    " Set utf8 as standard encoding and en_US as the standard language
    set encoding=utf-8

    " Use unix as standard file type
    set ffs=unix,dos,mac

    " Create ruler at column 80
    " httpsv//vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim
    set colorcolumn=80
    highlight ColorColumn ctermbg=52 guibg=DarkRed

"}}}

"{{{=> Text, tab and indent

    " Use spaces instead of tabs
    set expandtab

    " Be smart when using tabs
    set smarttab

    " Show the line number
    set number
    set relativenumber

    " Set the gutter column width
    set numberwidth=2

    " Indentaing config
    set autoindent
    set smartindent
    set tabstop=4
    set shiftwidth=4
    set smarttab

    " Use multiple shiftwidth when indenting with '<' and '>'
    set shiftround

    " Copy previous indentation
    set copyindent

    " Wrap line
    set wrap

"}}}

"{{{=> Mappings

    " Cancel completions using the left arrow instead of CTRL+e
    inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

    " Move up and down the complete menu using the up and down arrows
    " keys instead of CTRL+n and CTRL+p
    inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
    inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

    " Select complete menu item with <Right> or ENTER instead of CTRL+y
    inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
    " inoremap <expr> <CR> pumvisible() ? "<C-p>" : "<CR>"

    " Split the window with .vimrc file
    nnoremap <leader>ev :split $MYVIMRC<cr>

    " Source/reload the .vimrc file
    nnoremap <leader>rv :source $MYVIMRC<cr>:AirlineTheme jellybeans<cr>

    " Set <leader>c to clear highlighting after search
    nnoremap <leader>c :nohl<cr>

    " Set <leader>t to Reload Airline Theme
    nnoremap <leader>rat :AirlineTheme jellybeans<cr>

    " Map the Escape button to 'jK' and 'kj'
    inoremap jk <Esc>`^
    inoremap kj <Esc>`^

    " Remap the jump to line command to the enter button (e.x. 123gg -> 123<ENTER>)
    noremap <cr> G

    " Move to the next tab
    nnoremap <leader>m gt<cr>

    " Move back one tab
    nnoremap <leader>n gT<cr>

    " Map <leader><leader>u to change the letters to UPPERCASE
    nnoremap <leader><leader>u vawU

    " Map <leader>u to change the letters to lowercase
    nnoremap <leader>u vawu

    " Map <leader>a and <leader>b to add a new line after/before respectivly
    nnoremap <leader>a O<Esc>
    nnoremap <leader>b o<Esc>

    " Unmap all mappings starting with <leader> in insert mode
    " autocmd VimEnter * iunmap <leader>ihn
    " autocmd VimEnter * iunmap <leader>is
    " autocmd VimEnter * iunmap <leader>ih

    " Indent an entire file whithout moving the cursor
    nnoremap <leader>i mmgg=G`m<CR>

    " Tell vim not to be fancy when pasting in code with its own indentation
    " * is vim's systems clipboard register
    " ] tells vim to paste the code in at the current level of indentation
    " nnoremap <leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>

    " Clear the _ register and paste the previous content
    vnoremap <leader>p "_dP 

    " Execute the line that I am on
    nnoremap <leader>x :exec getline(".")<cr>

    " Set 0 to go to the first character in a line
    " nnoremap 0 ^

    " Move to the last character on the line
    nnoremap <leader>l g_

    " Increase the size of a split
    nnoremap <silent> <leader>= :execute "resize " . (winheight(0) + 10)<cr>

    " Decrease the size of a split
    nnoremap <silent> <leader>- :execute "resize " . (winheight(0) - 10)<cr>

    " Add a semicolon at the end of the line
    nnoremap as :<c-u>execute "normal! mqg_a;\<lt>esc>`q"<cr>

    " Remove a semicolon at the end of the line
    nnoremap rs :<c-u>execute "normal! mqg_x\<lt>esc>`q"<cr>

    " Add curly braces '{}' to a loop
    nnoremap ab :<c-u>execute "normal! g_a {<cr>\<lt>exc>jddkP"<cr>

    " Mapping for using grep
    nnoremap <leader>g :silent execute "grep! " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

    " Move to the next fold
    nnoremap <C-i> zj

    " Move to the previous fold
    nnoremap <BS> zk

    "{{{=> Operator-pending

        " Change the name of a function
        onoremap fn :<c-u>execute "normal! [m^Wviw"<cr>

    "}}}

"}}}

"{{{=> Plugin Settings

    "{{{=> clang_complete

        " Path to clang library directory
        let g:clang_library_path='/opt/homebrew/opt/llvm/lib/libclang.dylib'

    "}}}

    "{{{=> coc.vim

        " Use tab for trigger completion with characters ahead and navigate.
        " NOTE: There's always complete item selected by default, you may want to
        " enable no select by `"suggest.noselect": true` in your configuration
        " file.
        " NOTE: Use command ':verbose imap <tab>' to make sure tab is not
        " mapped by
        " " other plugin before putting this into your config

        function! CheckBackspace() abort
            let col = col('.') - 1
            return !col || getline('.')[col - 1]  =~# '\s'
        endfunction

        inoremap <silent><expr> <Tab>
                    \ coc#pum#visible() ? coc#pum#next(1) :
                    \ CheckBackspace() ? "\<Tab>" :
                    \ coc#refresh()

        inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

        " Use <c-space> to trigger completion
        if has('nvim')
            inoremap <silent><expr> <c-space> coc#refresh()
        else
            inoremap <silent><expr> <c-space> coc#refresh()
        endif

        " Use `[g` and `]g` to navigate diagnostics
        " Use `:CocDiagnostics` to get all diagnostics of current buffer in
        " location list
        nmap <silent> [g <Plug>(coc-diagnostic-prev)
        nmap <silent> ]g <Plug>(coc-diagnostic-next)

        " GoTo code navigation
        nmap <silent> gd <Plug>(coc-definition)
        nmap <silent> gy <Plug>(coc-type-definition)
        nmap <silent> gi <Plug>(coc-implementation)
        nmap <silent> gr <Plug>(coc-references)

    "}}}

"}}}

