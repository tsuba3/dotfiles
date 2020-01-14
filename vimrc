call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'

call plug#end()

" メニューを英語にする
language en_US
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" クリップボードを使う
set clipboard+=unnamed

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
" set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 行頭、行末への移動をしやすくする
nnoremap <C-a> ^
nnoremap <C-e> $
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" 入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
" jjでエスケープ
inoremap <silent> jj <ESC>
" シンタックスハイライトの有効化
syntax enable
colorscheme molokai
set t_Co=256
" ESC を2回押したとき検索のハイライトを消す
nnoremap <ESC><ESC> :nohl<CR>

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch

" Molokai でコメントの色を少し明るくする
hi Comment ctermfg=247

" 行末のスペースをハイライト
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

" 全角スペースをハイライト
augroup HighlightFullWidthSpaces
  autocmd!
  autocmd VimEnter,Colorscheme * highlight FullWidthSpace cterm=underline
  autocmd VimEnter * match FullWidthSpace /　/
augroup END

