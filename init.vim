set number																						" Mostrar o numero de linha
set relativenumber																		" Os numeros de linha acima e abaixo da linha atual sao relativos a linha atual
set mouse=a																						" Mouse fica ativo no vim
set numberwidth=1																			" 
set clipboard=unnamed																	" 
syntax enable																					" 
set showcmd																						" 
set ruler																							" 
set cursorline																				" 
set encoding=utf-8																		" 
set showmatch																					" 
set sw=2																							" 
set laststatus=2																			" 
set noshowmode																				" 
set inccommand=split 																	" Preview de modificação de palavras com :%s/word/new-word/g

call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" IDE
Plug 'editorconfig/editorconfig-vim'									" Faz que o vim respeite a configuração do .editorconfig
Plug 'sheerun/vim-polyglot'														" Suporte a hightlight de linguagens
Plug 'mhinz/vim-signify'															" Mostra com - ou + se voce adicionou ou tirou alguma fila
Plug 'Yggdroot/indentLine'														" Mostra linha de edentação

" Searching
Plug 'easymotion/vim-easymotion'											" <Leader>s - Busca palavras por dois caracteres e logo leva o cursor onde selecionar
Plug 'terryma/vim-multiple-cursors'										" <crtl>n - Seleciona todas as ocurrencias da palavra atual com multiplos cursores
Plug 'junegunn/fzf'																		" Instalacao de buscador de arquivo
Plug 'junegunn/fzf.vim'																" <Leader>p - Buscar arquivos por nome
Plug 'epmatsw/ag.vim'																	" <Leander>f - Busca qualquer palavra em todos os arquivos do projeto

" Sidebar
Plug 'scrooloose/nerdtree'														" <Leader>nt - Abre o Sidebar

" Moviment
Plug 'christoomey/vim-tmux-navigator'									" <crtl>[tecla de movimento] - Habilidade de se mecher entre diferentes paineis

" Status Bar
Plug 'maximbaz/lightline-ale'													" Tema de Status bar
Plug 'itchyny/lightline.vim'													" Barra de tarefas

" Typing
Plug 'jiangmiao/auto-pairs'														" Autocompleta () {} [] ''
Plug 'alvan/vim-closetag'															" Autocompleta as tag HTML e React
Plug 'tpope/vim-surround'															" Seleciona a palavra e envolve ela com chaves

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<cr>
nmap <Leader>p :GFiles<cr>
nnoremap <Leader>f :Ag<space>
map <Leader>b :Buffers<cr>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>x :x<CR>
nmap <Leader>wq :wq<CR>

