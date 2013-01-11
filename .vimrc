" vi との互換性OFF
set nocompatible

"tab補完
set wildmenu wildmode=list:full

"<status line>
set laststatus=2 " 常にステータスラインを表示
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).'\|'.&ff.']'}\ \ %l/%L\ (%P)%m%=%{strftime(\"%Y/%m/%d\ %H:%M\")} 

" ファイル形式の検出を無効にする
filetype off

""""""Vundle-Setting"""""
" Vundle を初期化して
" Vundle 自身も Vundle で管理
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'opsplorer'
Bundle 'unite.vim'
Bundle 'bufexplorer.zip'
Bundle 'neocomplcache'
" vim-scripts repos

" non github repos
""""""Vundle-Setting"""""

" <encoding>
set encoding=utf-8
set fileencodings=euc-jp,iso-2022-jp,sjis,utf-8

" <basic>
set backspace=indent,eol,start " バックスペースでなんでも消せるように
set hidden "編集中でも他のファイルを開けるようにする　
set autoread "他で書き換えられたら自動で読み直す

" <display>
set nu "行番号表示
set showcmd "入力中のコマンド表示
set showmatch "括弧の対応をハイライト
"set list "不可視文字表示

" <indent>
set shiftwidth=2  " 自動インデントの幅

" <search>
set ignorecase   " 大文字小文字無視
set smartcase    " 大文字ではじめたら大文字小文字無視しない
set hlsearch     " 検索文字をハイライト
set wrapscan     " 最後まで検索したら先頭へ戻る
set incsearch  " インクリメンタルサーチON
" <keymapping>
"Emacs Like tab
"inoremap <Tab> <C-o>==
"vpen vimrc
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR> 
"reload vimrc
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC<CR>
" insertモードから抜ける
inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j
inoremap <silent> kk <ESC>
inoremap <silent> <C-k> k
" buffer
nmap <silent> <C-n>      :update<CR>:bn<CR>
imap <silent> <C-n> <ESC>:update<CR>:bn<CR>
vmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
cmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
" nmap <silent> <C-w>      :update<CR>:bd<CR>
" imap <silent> <C-w> <ESC>:update<CR>:bd<CR>
" vmap <silent> <C-w> <ESC>:update<CR>:bd<CR>
" cmap <silent> <C-w> <ESC>:update<CR>:bd<CR>

" <plugins>
" neocomplcache
"Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
inoremap <expr><C-h> neocomplcache#smart_close_popup().”\<C-h>”
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" last setting for Bundle
filetype plugin indent on
syntax enable

set runtimepath+=~/.vim/
runtime! userautoload/*.vim

