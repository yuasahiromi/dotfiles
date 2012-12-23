"<status line>
set laststatus=2 " 常にステータスラインを表示
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).'\|'.&ff.']'}\ \ %l/%L\ (%P)%m%=%{strftime(\"%Y/%m/%d\ %H:%M\")} 
" vi との互換性OFF
set nocompatible

" ファイル形式の検出を無効にする
filetype off

" Vundle を初期化して
" Vundle 自身も Vundle で管理
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'opsplorer'
Bundle 'unite.vim'
Bundle 'bufexplorer.zip'
" vim-scripts repos

" non github repos

" <status line>

" <encoding>
set encoding=utf-8
set fileencodings=euc-jp,iso-2022-jp,sjis,utf-8

" <basic>
set backspace=indent,eol,start " バックスペースでなんでも消せるように

"Emacs Like tab
inoremap <Tab> <C-o>==

" <display>
set nu
" <indent>
set shiftwidth=4  " 自動インデントの幅
" <search>
set ignorecase   " 大文字小文字無視
set smartcase    " 大文字ではじめたら大文字小文字無視しない
set hlsearch     " 検索文字をハイライト
set wrapscan     " 最後まで検索したら先頭へ戻る
set incsearch  " インクリメンタルサーチON
" <keymapping>
"vpen vimrc
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR> 
"reload vimrc
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC<CR>
" insertモードから抜ける
inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j
inoremap <silent> kk <ESC>
inoremap <silent> <C-k> k
"
" " 行頭・行末移動方向をキーの相対位置にあわせる
" nnoremap 0 $ 
" nnoremap 1 0 
"
" " 挿入モードでのカーソル移動
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-h> <Left>
" inoremap <C-l> <Right>
"
" " カーソル前の文字削除
" inoremap <silent> <C-h> <C-g>u<C-h>
" " カーソル後の文字削除
" inoremap <silent> <C-d> <Del>
" " カーソルから行頭まで削除
" inoremap <silent> <C-d>e <Esc>lc^
" " カーソルから行末まで削除
" inoremap <silent> <C-d>0 <Esc>lc$
" " カーソルから行頭までヤンク
" inoremap <silent> <C-y>e <Esc>ly0<Insert>
" " カーソルから行末までヤンク
" inoremap <silent> <C-y>0 <Esc>ly$<Insert>
"
" " 引用符, 括弧の設定
" inoremap { {}<Left>
" inoremap [ []<Left>
" inoremap ( ()<Left>
" inoremap " ""<Left>
" inoremap ' ''<Left>
" inoremap <> <><Left>
"----------------------------------------------------
"" 挿入モードでのカーソル移動
"----------------------------------------------------
" 下に移動
inoremap <C-j> <Down>
" 上に移動
inoremap <C-k> <Up>
" 左に移動
inoremap <C-h> <Left>
" 右に移動
inoremap <C-l> <Right>
"<completion>

" <autocommand>

" <plugins>

" last setting for Bundle
filetype plugin indent on
syntax enable

"lisp
"cclで現在のファイルを読み込んでREPL
set nocindent
set lisp
set showmatch
let lisp_rainbow = 1
