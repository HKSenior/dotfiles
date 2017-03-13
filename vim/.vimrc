"$(EXECUTABLE): vim: foldmethod=marker 

"{{{=> Pathogen Settings

    " Execute pathogen
    execute pathogen#infect()

    " Generate helptags
    call pathogen#helptags()

"}}}

"{{{=> General
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

"{{{=> Vim user interface
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

    " Tomorrow-Night-Bright
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

    "hi NonText ctermfg=7 guifg=blue
    "hi SpecialKey ctermfg=7 guifg=blue

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

    " Use multiple shiftwidth when 
    " indenting with '<' and '>'
    set shiftround

    " Copy previous indentation
    set copyindent

    " Wrap line
    set wrap
"}}}

"{{{=> Mappings

    " Split the window with .vimrc file
    nnoremap <leader>ev :split $MYVIMRC<cr>

    " Split window with .gvimrc file
    nnoremap <leader>eg :split ~/.gvimrc<cr>
 
    " Source the .vimrc file
    nnoremap <leader>sv :source $MYVIMRC<cr>:AirlineTheme jellybeans<cr>
 
    " Set <leader>c to clear highlighting after search
    nnoremap <leader>c :nohl<cr>

    " Set <leader>t to Reload Airline Theme
    nnoremap <leader>rat :AirlineTheme jellybeans<cr>
     
    " Map the Escape button to 'jK' and 'kj'
    inoremap jk <Esc>`^
    inoremap kj <Esc>`^
  
    " Remap the jump to line command to the enter button (e.x. 123gg -> 123<ENTER>)
    noremap <cr> G

    " Remap :LLPStartPreview's to <leader>lp
    nnoremap <leader>lp :LLPStartPreview<cr>

    " Move to the next tab
    nnoremap <leader>m gt<cr>

    " Move back one tab
    nnoremap <leader>n gT<cr>

    " Map <leader>s to show the full diagnostic text in YCM
    let g:ycm_key_detailed_diagnostics = '<leader>s'

    " Map <leader><leader>u to change the letters to UPPERCASE
    nnoremap <leader><leader>u vawU
    
    " Map <leader>u to change the letters to lowercase
    nnoremap <leader>u vawu

    " Map <leader>la and <leader>lb to add a new line after/before respectivly
    nnoremap <leader>a O<Esc>
    nnoremap <leader>b o<Esc>
 
    " Unmap all mappings starting with <leader> in insert mode
    autocmd VimEnter * iunmap <leader>ihn
    autocmd VimEnter * iunmap <leader>is
    autocmd VimEnter * iunmap <leader>ih

    " Indent an entire file whithout moving the cursor
    nnoremap <leader>i mmgg=G`m<CR>

    " Tell vim not to be fancy when pasting in code with its own indentation
    " * is vim's systems clipboard register
    " ] tells vim to paste the code in at the current level of indentation
    nnoremap <leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr> 

    " Execute the line that I am on
    nnoremap <leader>x :exec getline(".")<cr>

    " Set 0 to go to the first character in a lien
    nnoremap 0 ^

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

    "{{{=> Operator-pending
        
        " Change the name of a function
        onoremap fn :<c-u>execute "normal! [m^Wviw"<cr>

    "}}}

    "{{{=> Folding mappings

        " Set <leader>A to recursively open/close a group of folder lines
        nnoremap <leader>A zA

        " Set <leader>R to open all folds in a file
        nnoremap <leader>R zR

        " Set <leader>M to close folds
        nnoremap <leader>M zM

    "}}}"

"}}}

"{{{=> Autocommands

    augroup cpp_files
        autocmd!
        autocmd BufNewFile *.cpp :write
    augroup END

"}}}

"{{{=> NERDTree Settings

    " Open NERDTree automatically when vim starts
    " autocmd vimenter * NERDTree 
    
    " Open NERDTree if no file was specified with vim
    " autocmd StdinReadPre * let s:std_in=1
    " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    " Jump to the main window
     autocmd vimenter * wincmd p

    " Close vim if NERDTree is the only tab open
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    " Display the bookmarks table
    let g:NERDTreeShowBookmarks = 1

    " Show line numbers in NERDTree window
    let g:NERDTreeShowLineNumbers = 1

    " Toglle NerdTree with <leader>N
    map <leader>nt :NERDTreeToggle<CR>

"}}}

"{{{=> Airline Settings

    " Set airline theme
    let g:airline_theme = 'kolor'
    
    " Set airline to appear when one file is open
    set laststatus=2

    " Don't shift focus to preview window for YCM
    let g:airline_exclude_preview = 1

    " Enable fancy symbols 
    let g:airline_powerline_fonts = 1

    " Display all buffers when one tab is open
    let g:airline#extensions#tabline#enabled = 1

    " Display only the name of the file in the airline
    let g:airline#extensions#tabline#fnamemod = ':t'

    " Enable syntastic
    let g:airline#extensions#syntastic#enabled = 1

    " Enable branching
    let g:airline#extensions#branch#enabled = 1

    " Display index of the buffer
    let g:airline#extensions#tabline#buffer_idx_mode = 1
"}}}

"{{{=> YCM Settings

    " Set the path for the backup config file
    let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

    " Stop YCM from asking to load the .ycm_extra_conf.py file
    let g:ycm_confirm_extra_conf = 0

    " Allow YCM to add a preview string to Vim's completeopt option 
    let g:ycm_add_preview_to_competeopt = 1

    " Tell YCM to auto close the preview window
    let g:ycm_autoclose_preview_window_after_completion = 1

    " Set the symbol for warnings 
    let g:ycm_error_symbol = '✗'

    " Set the symbol for errors
    let g:ycm_warning_symbol = '☞'

    " Turn off YCM's diagnostic display features
    " (Stop it from removing Syntastic's checkers for c, cpp, objc & objcpp)
    let g:ycm_show_diagnostics_ui = 0

    " Set the path to the python interpreter
    let g:ycm_path_to_python_interpreter = "/usr/bin/python"

"}}}

"{{{=> indentLine Settings

    " Enable indentLine
    let g:indentLine_enabled = 0

    " Set character color (Vim)
    "let g:indentLine_color_term = 239

    " Set character color (GVim)
    let g:indentLine_color_gui = '#A4E57E'
    
    " Set the conceal level
    "let g:indentLine_conceallevel = 0

    " Set indent character
    let g:indentLine_char = '▶'
"}}}

"{{{=> Syntastic Settings

    " Statusline Flags
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    " Set the error and warning symbols
    let g:syntastic_error_symbol = "✗"
    let g:syntastic_warning_symbol = "⚠"

    " Put any detected errors in the location-list
    let g:syntastic_always_populate_loc_list = 1

    " Tell Syntastic to check the file when it opens
    let g:syntastic_check_on_open = 1

    " Tell Syntastic to not check the file when closing Vim
    let g:syntastic_check_on_wq = 0

    " Force Syntastic to check header files 
    let g:syntastic_cpp_check_header = 1

    " Set the cpp checker
    let g:syntastic_cpp_checkers = ['clang_check']

    " Give clang_check my prefered arguments
    let g:syntastic_cpp_clang_check_args = "-std=c++0x -Wall -O3"

"}}}

"{{{=> Closetag Settings
    
    " Use close tags in markup files
    let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.htm"

"}}}

"{{{=> Tagbar Settings

    " Set Key to toggle Tagbar
    nmap <F8> :TagbarToggle<CR>

    "
    let g:tagbar_autoclose=0
"}}}
