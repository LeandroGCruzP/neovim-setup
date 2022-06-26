set number																						" Mostrar o numero de linha
set relativenumber																		" Os numeros de linha acima e abaixo da linha atual sao relativos a linha atual
set mouse=a																						" Mouse fica ativo no vim
set numberwidth=1																			" asd
set clipboard=unnamed																	" asd
syntax enable																					" asd
set showcmd																						" asd
set ruler																							" asd
set cursorline																				" asd
set encoding=utf-8																		" asd
set showmatch																					" asd
set sw=2																							" asd
set laststatus=2																			" asd
set noshowmode																				" asd
set inccommand=split 																	" Preview de modificação de palavras com :%s/word/new-word/g

call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'											" asd
Plug 'scrooloose/nerdtree'														" Sidebar
Plug 'christoomey/vim-tmux-navigator'									" asd
Plug 'terryma/vim-multiple-cursors'										" Multiplos cursor ao selecionar com ctrl + n
Plug 'sheerun/vim-polyglot'														" Suporte a hightlight de linguagens
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }		" Instalacao de buscador por arquivo
Plug 'junegunn/fzf.vim'																" Buscar por arquivo
Plug 'jiangmiao/auto-pairs'														" Autocompleta () {} [] ''
Plug 'epmatsw/ag.vim'

" Status Bar
Plug 'maximbaz/lightline-ale'													" Tema de Status bar
Plug 'itchyny/lightline.vim'													" Barra de tarefas

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <c-p> :GFiles<cr>
nnoremap <c-f> :Ag<space>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>x :x<CR>
nmap <Leader>wq :wq<CR>



