call plug#begin('~/.nvim/plugged')

  "Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  "Plug 'octol/vim-cpp-enhanced-highlight'
  "Plug 'previm/previm'
  "Plug 'python-mode/python-mode', { 'branch': 'develop' }
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'Chiel92/vim-autoformat'
  Plug 'Raimondi/delimitMate'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/neosnippet.vim'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
  Plug 'albertomontesg/lightline-asyncrun'
  Plug 'altercation/vim-colors-solarized'
  Plug 'amix/vim-zenroom2'
  Plug 'arakashic/chromatica.nvim'
  Plug 'benmills/vimux'
  Plug 'bkad/CamelCaseMotion'
  Plug 'derekwyatt/vim-fswitch'
  Plug 'dhruvasagar/vim-zoom'
  Plug 'dpelle/vim-LanguageTool'
  Plug 'easymotion/vim-easymotion'
  Plug 'edkolev/tmuxline.vim'
  Plug 'farmergreg/vim-lastplace'
  Plug 'fidian/hexmode'
  Plug 'freitass/todo.txt-vim'
  Plug 'gregsexton/gitv'
  Plug 'haya14busa/incsearch.vim'
  Plug 'hecal3/vim-leader-guide'
  Plug 'honza/vim-snippets'
  Plug 'huawenyu/neogdb.vim'
  Plug 'iamcco/markdown-preview.vim'
  Plug 'inside/vim-search-pulse'
  Plug 'itchyny/calendar.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'itchyny/vim-cursorword'
  Plug 'joshdick/onedark.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/vader.vim'
  Plug 'junegunn/vim-peekaboo'
  Plug 'kshenoy/vim-signature'
  Plug 'lambdalisue/vim-gista'
  Plug 'lambdalisue/vim-unified-diff'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'lyuts/vim-rtags'
  Plug 'm42e/vim-gcov-marker'
  Plug 'machakann/vim-highlightedyank'
  Plug 'majutsushi/tagbar'
  Plug 'matze/vim-move'
  Plug 'mh21/errormarker.vim'
  Plug 'mhinz/vim-startify'
  Plug 'mileszs/ack.vim'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'plasticboy/vim-markdown'
  Plug 'rafi/vim-sidemenu'
  Plug 'romainl/vim-qf'
  Plug 'roman/golden-ratio'
  Plug 'rykka/riv.vim'
  Plug 'rzaluska/deoplete-rtags'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'sjl/gundo.vim'
  Plug 'skywind3000/asyncrun.vim'
  Plug 'terryma/vim-expand-region'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tmux-plugins/vim-tmux'
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'tommcdo/vim-exchange'
  Plug 'tpope/vim-dadbod'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-surround'
  Plug 'vifm/vifm.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-scripts/DoxygenToolkit.vim'
  Plug 'vim-scripts/DrawIt'
  Plug 'vim-scripts/Wombat'
  Plug 'vim-scripts/ZoomWin'
  Plug 'vim-vdebug/vdebug'
  Plug 'w0rp/ale'
  Plug 'wellle/tmux-complete.vim'
  Plug 'wesQ3/vim-windowswap'
  Plug 'will133/vim-dirdiff'

call plug#end()

filetype plugin on
runtime! ftplugin/man.vim

set background=dark
set backupdir=$HOME/.nvim/backup/
set directory=$HOME/.nvim/swap/
set encoding=utf-8
set expandtab
set foldmethod=syntax
set gdefault
set hidden
set iskeyword-=/
set lazyredraw
set nocompatible
set noendofline
set nofixendofline
set nofoldenable
set number
set spelllang=en_gb
set splitbelow
set splitright
set sw=2
set ts=2

silent! colorscheme onedark

let mapleader = "\<Space>"

" search

let g:qf_mapping_ack_style = 1
let g:qf_nowrap = 0
let g:ack_default_options = " -s -H --nocolor --nogroup --column --smart-case --follow"
let g:ackprg = "ag --vimgrep"
noremap <Leader>a :Ack <cword><cr>

nmap n nzz
nmap N Nzz
nmap * *Nzz
nmap # #nzz

noremap <Leader>fb :Buffers<CR>
noremap <Leader>fc :Commits<CR>
noremap <Leader>ff :Files<CR>
noremap <Leader>fg :GFiles<CR>
noremap <Leader>fh :History<CR>
noremap <Leader>fl :Lines<CR>
noremap <Leader>ft :Tags<CR>

noremap q: :History:<CR>
noremap q/ :History/<CR>

noremap <Leader>sc :BCommits<CR>
noremap <Leader>sl :BLines<CR>
noremap <Leader>st :BTags<CR>

let g:AutoClosePumvisible = {"ENTER": "", "ESC": ""}
let g:vim_search_pulse_mode = 'cursor_line'

inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

nnoremap <silent> <Leader>hl :nohlsearch<CR>

" navigation

noremap L $

let g:deoplete#enable_at_startup = 1
let g:rtagsUseLocationList = 0

noremap <Leader>ld :lclose<CR>
noremap <Leader>ln :lnext<CR>
noremap <Leader>lo :lopen<CR>
noremap <Leader>lp :lprev<CR>

noremap <Leader>qd :cclose<CR>
noremap <Leader>qf :cfirst<CR>
noremap <Leader>ql :clast<CR>
noremap <Leader>qn :cnext<CR>
noremap <Leader>qo :copen<CR>
noremap <Leader>qp :cprev<CR>

noremap <Leader>ov :e $MYVIMRC<CR>

noremap <silent> <Leader><Tab> :NERDTreeToggle<CR>

nmap <Leader>w <Plug>(easymotion-overwin-w)
omap <Leader>w <Plug>(easymotion-bd-w)
xmap <Leader>w <Plug>(easymotion-bd-w)

map <silent>b <Plug>CamelCaseMotion_b
map <silent>e <Plug>CamelCaseMotion_e
map <silent>ge <Plug>CamelCaseMotion_ge
map <silent>w <Plug>CamelCaseMotion_w
sunmap b
sunmap e
sunmap ge
sunmap w
imap <silent> <S-Left> <C-o><Plug>CamelCaseMotion_b
imap <silent> <S-Right> <C-o><Plug>CamelCaseMotion_w

map <Leader>m <Plug>ToggleMarkbar

nmap <silent> <Leader>oH :FSSplitLeft<cr>
nmap <silent> <Leader>oJ :FSSplitBelow<cr>
nmap <silent> <Leader>oK :FSSplitAbove<cr>
nmap <silent> <Leader>oL :FSSplitRight<cr>
nmap <silent> <Leader>oh :FSLeft<cr>
nmap <silent> <Leader>oj :FSBelow<cr>
nmap <silent> <Leader>ok :FSAbove<cr>
nmap <silent> <Leader>ol :FSRight<cr>

nnoremap <silent> <Leader>k :Man<CR>
nnoremap <silent> <Leader>v :vertical Man<CR>
vnoremap <silent> <Leader>k y:Man <C-r>"<CR>
vnoremap <silent> <Leader>v y:vertical Man <C-r>"<CR>

" style

highlight Comment cterm=italic
highlight Normal guibg=NONE ctermbg=NONE

let g:chromatica#highlight_feature_level=0
let g:limelight_conceal_ctermfg = 'gray'
let g:pymode_options_colorcolumn = 0

" view

let g:golden_ratio_exclude_nonmodifiable = 1
let g:golden_ratio_filetypes_blacklist = ["nerdtree", "unite"]

noremap <silent> <Leader>b :TagbarToggle<CR>
nmap <Leader>l <Plug>(sidemenu)
xmap <Leader>l <Plug>(sidemenu-visual)

nmap <Leader>wo <C-W>o
nnoremap <Leader>wH <C-W>H
nnoremap <Leader>wJ <C-W>J
nnoremap <Leader>wK <C-W>K
nnoremap <Leader>wL <C-W>L
nnoremap <Leader>wd <C-W>q
nnoremap <Leader>wh <C-W><C-H>
nnoremap <Leader>wj <C-W><C-J>
nnoremap <Leader>wk <C-W><C-K>
nnoremap <Leader>wl <C-W><C-L>
nnoremap <Leader>wr <C-W>R

nmap <C-Down> <C-W>-<C-W>-
nmap <C-Left> <C-W><<C-W><
nmap <C-Right> <C-W>><C-W>>
nmap <C-Up> <C-W>+<C-W>+

let g:onedark_terminal_italics = 1

let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
\ 'left' : '',
\ 'left_alt': '>',
\ 'right' : '',
\ 'right_alt' : '<',
\ 'space' : ' '}

let g:tmuxline_preset = {
\'a'    : '#S',
\'b'    : '#W',
\'c'    : '#H',
\'win'  : '#I #W',
\'cwin' : '#I #W',
\'x'    : '%a',
\'y'    : '#W %R',
\'z'    : '#H'}


let g:lightline = {
\ 'colorscheme': 'onedark',
\ 'component_function': {
\   'gitbranch': 'fugitive#head'
\ },
\ 'component_expand': {
\   'asyncrun_status': 'lightline#asyncrun#status'
\ },
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
\   'right': [
\     ['percent', 'lineinfo'],
\     ['fileformat', 'fileencoding', 'filetype'],
\     ['asyncrun_status']
\   ],
\ },
\ }

let g:asyncrun_status = "stopped"
augroup QuickfixStatus
  au! BufWinEnter quickfix setlocal
    \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END

" editing

let g:NERDSpaceDelims = 1
let g:move_key_modifier = 'A'
let g:tmuxcomplete#trigger = 'omnifunc'
let g:ycm_add_preview_to_completeopt = 1

let g:exchange_no_mappings=1
nmap cx <Plug>(Exchange)
vmap X <Plug>(Exchange)
nmap cxc <Plug>(ExchangeClear)
nmap cxx <Plug>(ExchangeLine)

map <leader>pp :setlocal paste!<cr>

nnoremap Q @q
nnoremap g. :normal! `[v`]<cr><left>
nnoremap Y y$

xnoremap <  <gv
xnoremap >  >gv

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a\| :Tabularize /\|<CR>
  vmap <Leader>a\| :Tabularize /\|<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

vnoremap  <Leader>y  "+y
nnoremap  <Leader>Y  "+yg_
nnoremap  <Leader>y  "+y
nnoremap  <Leader>yy  "+yy

nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger = "<C-k>"
let g:UltiSnipsJumpBackwardTrigger = "<C-p>"
let g:UltiSnipsJumpForwardTrigger = "<C-n>"

let g:ycm_semantic_triggers = {
\   'cpp': [ 're!.' ],
\   'c++': [ 're!.' ]
\ }

" checks

silent! set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
noremap <Leader>ss :set list!<CR>

set errorformat=
" clang {
    set errorformat+=%f:%l:%c:\ error:\ %m
    set errorformat+=%f:%l:%c:\ note:\ %m
" }

" catch {
    set errorformat+=%f:%l:\ FAILED:\ %m
" }

" catch+ctest {
    set errorformat+=%*[0123456789^]:\ %f:%l:\ FAILED:\ %m
" }

" cmake {
    set errorformat+=\ CMake\ Error\ at\ %f:%l\ %m
" }
" msvc {
    set errorformat+=%f(%l):%c:\ error:\ %m
" }

match ErrorMsg '\%>80v.\+'

highlight TabsAndTrailingSpaces ctermbg=red guibg=red
match TabsAndTrailingSpaces /\t\| \+$/

"nmap <silent> <Leader>ss :set spell!<CR>

let g:formatdef_cmake_formatter = '"cmake-format - -o -"'
let g:formatters_cmake = ['cmake_formatter']
let g:formatdef_cpp_formatter = '"astyle"'
let g:formatters_cpp = ['cpp_formatter']

" tools

  " VCS
  nnoremap <Leader>ga :Git add %:p<CR><CR>
  nnoremap <Leader>gb :Git branch<Space>
  nnoremap <Leader>gc :Gcommit -v -q<CR>
  nnoremap <Leader>gd :Gdiff<CR>
  nnoremap <Leader>ge :Gedit<CR>
  nnoremap <Leader>gg :Ggrep<Space>
  nnoremap <Leader>gl :Dispatch! git pull<CR>
  nnoremap <Leader>gm :Gmove<Space>
  nnoremap <Leader>go :Git checkout<Space>
  nnoremap <Leader>gp :Dispatch! git push<CR>
  nnoremap <Leader>gr :Gread<CR>
  nnoremap <Leader>gs :Gstatus<CR>
  nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
  nnoremap <Leader>gw :Gwrite<CR><CR>
  
  nmap <leader>gv :Gitv --all<cr>
  nmap <leader>gV :Gitv! --all<cr>
  vmap <leader>gV :Gitv! --all<cr>

  " debugger
  let g:neobugger_leader = ';'
  let g:gdb_require_enter_after_toggling_breakpoint = 0
  vnoremap <Leader>;p :GdbEvalRange<CR>
  nnoremap <Leader>;p :GdbEvalWord<CR>

  " gcov
  let g:gcov_marker_auto_lopen = 0
  let g:gcov_marker_covered    = '✓'
  let g:gcov_marker_path = '_coverage'
  let g:gcov_marker_uncovered  = 'X'

  " dirdiff
  let g:DirDiffAddArgs = "-w"

  " preview
  let vim_markdown_preview_github=1

  " doxygen
  let g:DoxygenToolkit_commentType = "C++"
  nnoremap <Leader>cd :Dox<CR>

  " copy location
  nnoremap <Leader>yl :let @+=expand("%:h") . '/' . expand("%:t") . ':' . line(".")<CR>

  " tmux
  map <Leader>vi :VimuxInspectRunner<CR>
  map <Leader>vl :VimuxRunLastCommand<CR>
  map <Leader>vp :VimuxPromptCommand<CR>
  map <Leader>vq :VimuxCloseRunner<CR>
  map <Leader>vx :VimuxInterruptRunner<CR>
  map <Leader>vz :call VimuxZoomRunner()<CR>
