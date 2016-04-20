colors default
syntax enable
set background=dark
set nocompatible
set nobackup
set noswapfile
set fileencodings=utf-8
set encoding=utf-8
set showmatch
set autoindent
set smartindent
set backspace=2
set foldmethod=syntax
set foldlevel=8
set mouse=a
set incsearch
set hlsearch
setlocal spell spelllang=en_us,de_de

map <F2> :NERDTreeToggle<CR>
map <F5> :w<CR> :make<CR><CR>

nnoremap / /\v
cnoremap %s/ %s/\v

" remove trailing whitespace (except for markdown)
autocmd BufWritePre * if &ft != 'markdown' | :%s/\s\+$//e

autocmd Filetype xml map  :%w !xmllint --noout --valid -<CR>

autocmd Filetype xml map  :% !xmllint --format --valid -<CR>

autocmd Filetype xsd map  :%w !xmllint --noout -<CR>

autocmd Filetype c set shiftwidth=8 tabstop=8 noexpandtab nospell

autocmd Filetype xhtml,html,json,javascript,css,sass,stylus,coffee,haml,ruby,eruby,cucumber,yaml set shiftwidth=2 tabstop=2 expandtab nospell

autocmd Filetype config,diff,elixir set nospell

autocmd Filetype python set shiftwidth=4 tabstop=4 expandtab nospell

autocmd Filetype java set shiftwidth=4 tabstop=4 noexpandtab nospell

autocmd Filetype joxa,clojure,lisp,scheme set shiftwidth=2 tabstop=2 expandtab nospell

autocmd Filetype sh set shiftwidth=4 tabstop=4 expandtab nospell

autocmd Filetype erlang set shiftwidth=4 tabstop=4 expandtab nospell

autocmd Filetype tex set shiftwidth=4 tabstop=4 expandtab nospell

execute pathogen#infect()
