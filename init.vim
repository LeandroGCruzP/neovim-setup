"---- Global Sets  -----
syntax on               " Syntax for diverses languages
set number              " Set number of lines 
set tabstop=2           " Show existing tab with 2 spaces width
set softtabstop=2       " Show existing tab with 2 spaces width
set shiftwidth=2        " When indenting with '>', use 2 spaces width
set expandtab           " On pressing tab, insert 2 spaces
set smarttab            " insert tabs on the start of a line according to shiftwidth
set smartindent         " Automatically inserts one extra level of indentation in some cases
set hidden              " Hides the current buffer when a new file is openned
set incsearch           " Incremental search
set ignorecase          " Ingore case in search
set smartcase           " Consider case if there is a upper case character
set scrolloff=10        " Minimum number of lines to keep above and below the cursor
set signcolumn=yes      " Add a column on the left. Useful for linting
set cmdheight=2         " Give more space for displaying messages
set updatetime=100      " Time in miliseconds to consider the changes
set encoding=utf-8      " The encoding should be utf-8 to activate the font icons
set nobackup            " No backup files
set nowritebackup       " No backup files
set splitright          " Create the vertical splits to the right
set splitbelow          " Create the horizontal splits below
set autoread            " Update vim after file update from outside
filetype on             " Detect and set the filetype option and trigger the FileType Event
filetype plugin on      " Load the plugin file for the file type, if any
filetype indent on      " Load the indent file for the file type, if any
set relativenumber	    " Relative number of line from current line
set numberwidth=1
set clipboard=unnamed
set showcmd					
set ruler					
set cursorline	
set showmatch	
set laststatus=2
set noshowmode
set inccommand=split    " Preview de modificação de palavras com :%s/word/new-word/g

" ----- Pluggins -----
call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" IDE
Plug 'editorconfig/editorconfig-vim'  " Vim using configuration of .editorconfig
Plug 'sheerun/vim-polyglot'           " Hightlight languages
Plug 'mhinz/vim-signify'              " Show - or + if add or remove lines
Plug 'Yggdroot/indentLine'            " Show ident lines

" Searching
Plug 'easymotion/vim-easymotion'      " Find words by two characters
Plug 'terryma/vim-multiple-cursors'   " Seleciona todas as ocurrencias da palavra atual com multiplos cursores (<c-n>)
Plug 'junegunn/fzf'                   " Instalacao de buscador de arquivo
Plug 'junegunn/fzf.vim'               " <Leader>p - Buscar arquivos por nome
Plug 'epmatsw/ag.vim'                 " <Leander>f - Busca qualquer palavra em todos os arquivos do projeto

" Sidebar
Plug 'scrooloose/nerdtree'            " Open Sidebar (<Leader>nt)P

" Moviment
Plug 'christoomey/vim-tmux-navigator' " <crtl>[tecla de movimento] - Habilidade de se mecher entre diferentes paineis

" Status Bar
Plug 'maximbaz/lightline-ale'         " Tema de Status bar
Plug 'itchyny/lightline.vim'          " Barra de tarefas

" Typing
Plug 'jiangmiao/auto-pairs'           " Autocompleta () {} [] ''
Plug 'alvan/vim-closetag'             " Autocompleta as tag HTML e React
Plug 'tpope/vim-surround'	            " Seleciona a palavra e envolve ela com chaves

" LSP
Plug 'neovim/nvim-lspconfig'          " Autocomplete on react

call plug#end()

" ----- Remaps -----
" Declaring map Leader
let mapleader=" "
" Search variable by two characters
nmap <Leader>s <Plug>(easymotion-s2) 
" Open menubar on current file
nmap <Leader>e :NERDTreeFind<cr>
" Open and close menubar
nmap <Leader>n :NERDTreeToggle<cr>
" Search files on project
nmap <Leader>p :GFiles<cr>
" Search words on project
nnoremap <Leader>f :Ag<space>
" Navigate on buffers
map <Leader>b :Buffers<cr>

" Save document
nmap <Leader>w :w<CR>
" Quit document
nmap <Leader>q :q<CR>
" Quit not saving
nmap <Leader>Q :q!<CR>
" Save and quit document
nmap <Leader>x :x<CR>
" Save and quit document
nmap <Leader>wq :wq<CR>
" Select all document
nnoremap <c-a> <esc>ggVG<cr> 
" Move cursor 10 lines to below 
nnoremap <Leader>j 10<c-e>
" Move cursor 10 lines to above
nnoremap <Leader>k 10<c-y>

" ----- Remaps -----

colorscheme challenger_deep           " Selecting color schema of theme
let NERDTreeQuitOnOpen=1              " NERDTree quit on navigate to the file 
let NERDTreeWinPos='right'            " Position of NERDTree

" Working plugin vim-closetag with .jsx and .tsx 
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
let g:closetag_filetypes = 'html,js'
let g:closetag_xhtml_filetype = 'xhtml,jsx,tsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion',
  \ }
let g:closetag_shortcut = '>'

" LSP configuration

" Aditional configuration
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"Transparent background. Only for nvim
if (has("nvim"))     
highlight Normal guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
endif
