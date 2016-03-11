set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'  " git helper tool for vim
Plugin 'tpope/vim-surround'  " 加強引號處理
Plugin 'tpope/vim-rails'  " 開發 Rails 時可以快速切換檔案
Plugin 'vim-ruby/vim-ruby'  " Ruby syntax highlight
Plugin 'kien/ctrlp.vim'  " 找檔案
Plugin 'rking/ag.vim'  " 強大程式碼搜尋工具，可以搜尋整個專案
Plugin 'scrooloose/nerdtree' " 專案目錄結構
Plugin 'scrooloose/nerdcommenter'  " 可以快速註解程式碼
Plugin 'Townk/vim-autoclose'  " 提供括號自動成對和游標自動進入括號
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'Shougo/neocomplcache'  " 自動補齊文字和提供選項
Plugin 'crusoexia/vim-monokai'  " 用於 HTML, CSS, JS 的 colorscheme
Plugin 'pangloss/vim-javascript'  " 強化 JS syntax highlight
Plugin 'kchmck/vim-coffee-script'  " coffeescript syntax highlight

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




" 不支援相容 vi 某些不必要的功能
" set nocompatible
" 避免關於 modelines 的一的一些安全性問題
"http://lists.alioth.debian.org/pipermail/pkg-vim-maintainers/2007-June/004020.html
set modelines=0





" the width of a tab character (\t)
set tabstop=2
" normal mode, the indentation command
set shiftwidth=2
" insert mode, the number of space backspace key will delete and
" the tab key will generate
set softtabstop=2
" always uses spaces instead of tab characters
set expandtab
" set smarttab



set encoding=utf-8
" 游標上下移動時，游標與視窗頂部或底部之間至少保持數行，請直接移動游標看效果
set scrolloff=3
" 本行從第 5 個自元字元開始寫，按下 enter 後下一行也會從第 5 個字元開始，依此類推
set autoindent
" 在狀態列顯示現在模式是 insert or visual ，只有這兩個會顯示
set showmode
" 目前編輯的檔案有變動尚未儲存，這時用 :e 開啟新檔案，會把未儲存變動放在 buffer 
" 而不是關閉檔案，使用 :ls 可以列出 buffer
" 使用 :bn [x] 或 :b[x] 來跳到某個 buffer 的檔案
" 這裡 [x] 表示 buffer 編號
set hidden
" the following two settings are used for command line completion
set wildmenu
set wildmode=list:longest
" 高亮游標所在行
set cursorline
" 顯示游標所在座標
set ruler
" 總是顯示狀態列，好處是可以看到現在模式, 檔名, 檔案狀態, etc
set laststatus=2
" 顯示與游標所在行的相對行數，而不是絕對行數，方便下數量指令
set relativenumber
" 當你在編輯檔案時 vim 會創造一個 <FILENAME>.un~ 的檔案
" 裡頭包含 undo 資訊，所以即使關閉檔案又重新打開後，還可以 undo 之前的動作
set undofile





" 重新對應 leader key 為 (,) ，比較好打
let mapleader = ","
" 用 NERDCommenter 打註解時註解符號跟 code 之間多一個空白
let NERDSpaceDelims=1
"let g:NERDCustomDelimiters = {
  "\ 'ruby': { 'left': '# ' },
  "\ 'coffee': { 'left': '# ' },
  "\ 'vimperator': { 'left': '" ' },
  "\ 'javascript': { 'left': '// ', 'leftAlt': '/*', 'rightAlt': '*/' }
  "\ }





" 意義不明
set showcmd
set visualbell
set ttyfast
set backspace=indent,eol,start




" 搜尋功能相關 search function
" 關閉 vim 預設 regex 字元，搜尋檔案內容時使用一般 regex 
nnoremap / /\v
vnoremap / /\v
" 如果搜尋內容全小寫，就大小寫不敏感，如果有大寫字母在，就大小寫敏感
set ignorecase
set smartcase
" 取代內容是採取全局取代, e.g., typing :%s/foo/bar/ means :%s/foo/bar/g
set gdefault
" highlight search results
set incsearch
set showmatch
set hlsearch
" get rid of highlight of search results
nnoremap <leader><space> :noh<cr>





set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

" 用特殊符號顯示 tab 字元和 eol
set list
set listchars=tab:▸\ ,eol:¬





" 鎖定方向鍵，在插入模式和一般模式下都無法使用
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" 手誤按到 <F1> 時不會跳出 help ，而是進入一般模式
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" 按 tab 跳到該行下一個成對括號
noremap <tab> %
vnoremap <tab> %

" 方便下指令，不用再 shift + <;> 來得到 <:>
nnoremap ; :

" 當你切換到別的應用程式視窗時自動幫你儲存檔案
" au FocusLost * :wa

" 連按兩下 j 就從插入模式進入一般模式
inoremap jj <ESC>

" 開啟垂直分割並進入
nnoremap <leader>w <C-w>v<C-w>l
" 垂直分割之間切換快捷鍵
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 切換 NERDTree
map <C-n> :NERDTreeToggle<CR>




set gfn=Monaco:h18

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd BufEnter *                                colorscheme railscasts
autocmd BufEnter *.rb                             colorscheme railscasts
autocmd BufEnter *.js,*.html,*scss,*.css,*.coffee colorscheme monokai






" 游標不要閃爍
set guicursor+=a:blinkon0
" 游標進入插入模式、退出插入模式的顏色設定
au InsertLeave * hi Cursor guifg=black guibg=yellow
au InsertEnter * hi Cursor guifg=black guibg=yellow
highlight Cursor guifg=black guibg=yellow
highlight iCursor guifg=black guibg=yellow




" neocomplete.vim settings
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
