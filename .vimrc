" === Basic Vim Configuration ===
set number               " Show line numbers
set relativenumber       " Show relative line numbers
set tabstop=4            " Number of spaces per Tab (Python standard)
set shiftwidth=4         " Indentation size (Python standard)
set expandtab            " Use spaces instead of tabs
set autoindent           " Automatically indent new lines
set smartindent          " Smarter indentation for Python
set wrap                 " Wrap long lines
set scrolloff=8          " Keep 8 lines visible around the cursor
set cursorline           " Highlight the current line
syntax on                " Enable syntax highlighting
set background=light     " Light background for readability
set showmatch            " Highlight matching parentheses and braces

" === Folding Configuration ===
set foldmethod=syntax    " Use syntax-based folding
set foldlevelstart=99    " Open all folds by default (for easy editing)
set foldenable           " Enable folding by default

" === Python Specific Settings ===
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 smarttab " Python indentation settings
autocmd FileType python setlocal commentstring=#\ %s " Python comment format

" === Key Mappings ===
nnoremap <C-s> :w<CR>        " Save file with Ctrl+s
inoremap <C-s> <Esc>:w<CR>a  " Save file with Ctrl+s in insert mode
nnoremap <space> za           " Toggle fold using space in normal mode
vnoremap <space> za           " Toggle fold using space in visual mode

" === Quality of Life Enhancements ===
set incsearch            " Incremental search
set hlsearch             " Highlight search results
set ignorecase           " Case-insensitive search
set smartcase            " Case-sensitive if uppercase used
set clipboard=unnamedplus " Use system clipboard
set showcmd              " Show incomplete commands in the status line
set laststatus=2          " Always display the status line

