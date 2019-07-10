"      |  | |  | |   \/   |    |  \ |  | \   \  /   / |  | |   \/   |
"      |  | |  | |  \  /  |    |   \|  |  \   \/   /  |  | |  \  /  |
".--.  |  | |  | |  |\/|  |    |  . `  |   \      /   |  | |  |\/|  |
"|  `--'  | |  | |  |  |  |    |  |\   |    \    /    |  | |  |  |  |
" \______/  |__| |__|  |__|    |__| \__|     \__/     |__| |__|  |__|
"
" Author: Jim Lesperance
"
"

" Setup dein  ---------------------------------------------------------------{{{
  if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
    call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
    call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
  endif

  set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
  call dein#begin(expand('~/.config/nvim'))
  call dein#add('Shougo/dein.vim')
  call dein#add('rhysd/nyaovim-popup-tooltip')
  call dein#add('haya14busa/dein-command.vim')
  call dein#add('alvan/vim-closetag')
  call dein#add('metakirby5/codi.vim')
  call dein#add('bling/vim-airline')
  call dein#add('junegunn/goyo.vim')
  call dein#add('junegunn/limelight.vim')
  call dein#add('Quramy/tsuquyomi')
  call dein#add('chase/vim-ansible-yaml')
  call dein#add('chriskempson/base16-vim')
  call dein#add('dgryski/vim-godef')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('fatih/molokai')
  call dein#add('fatih/vim-go')
  call dein#add('deoplete-plugins/deoplete-go', {'build': 'make'})
  call dein#add('godlygeek/tabular')
  call dein#add('jgdavey/tslime.vim')
  call dein#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' })
  call dein#add('junegunn/fzf.vim')
  call dein#add('junegunn/gv.vim')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('kshenoy/vim-signature')
  call dein#add('sebdah/vim-delve')
  call dein#add('mhinz/vim-signify')
  call dein#add('mhinz/vim-startify')
  call dein#add('mileszs/ack.vim')
  call dein#add('mxw/vim-jsx')
  call dein#add('isRuslan/vim-es6')
  call dein#add('ngmy/vim-rubocop')
  call dein#add('pangloss/vim-javascript')
  call dein#add('scrooloose/nerdtree', { 'on': [] })
  call dein#add('sjl/gundo.vim')
  call dein#add('slim-template/vim-slim')
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-rails')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('vim-scripts/BufOnly.vim')
  call dein#add('vim-scripts/mru.vim')
  call dein#add('kshenoy/vim-signature')
  call dein#add('AndrewRadev/sideways.vim')
  call dein#add('scrooloose/vim-slumlord')
  call dein#add('w0rp/ale')
  call dein#add('othree/html5.vim')
  " call dein#add('roxma/nvim-completion-manager')
  call dein#add('elzr/vim-json')

  call dein#add('rust-lang/rust.vim')
  call dein#add('racer-rust/vim-racer')
  call dein#add('roxma/nvim-cm-racer')
  call dein#add('google/vim-searchindex')

  call dein#add('tomtom/tcomment_vim')
  call dein#add('Yggdroot/indentLine')
  call dein#add('sbdchd/neoformat')
  call dein#add('tpope/vim-surround')
  call dein#add('mhartington/oceanic-next')

  call dein#add('neovim/node-host')
  " call dein#add('vimlab/mdown.vim', { 'do': 'npm install' })

  call dein#add('vim-ruby/vim-ruby')
  call dein#add('tpope/vim-rails')
  call dein#add('tpope/vim-rake')
  call dein#add('tpope/vim-projectionist')
  call dein#add('thoughtbot/vim-rspec')
  call dein#add('ecomba/vim-ruby-refactoring')
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('honza/vim-snippets')
  call dein#add('joonty/vim-phpqa')
  call dein#add('vim-scripts/StripWhiteSpaces')
  call dein#add('terryma/vim-multiple-cursors')


  " Typescript
  call dein#add('mhartington/nvim-typescript')

  call dein#local('~/GitHub', {},['nvim-typescript'])
  call deoplete#enable_logging('DEBUG', system('echo $HOME/.dotfiles/log/deoplete.log') )

  " call dein#local('~/GitHub', {},['operator-next'])
  call dein#add('Shougo/denite.nvim')
  call dein#add('chemzqm/denite-git')
  call dein#add('sjl/vitality.vim')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
  call dein#add('fszymanski/deoplete-emoji')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  if dein#check_install()
    call dein#install()
    let pluginsExist=1
  endif

  call dein#end()
  " }}}

" Themes, Commands, etc  ----------------------------------------------------{{{
  syntax on
  colorscheme OceanicNext
  set background=dark
  let g:OceanicNext_italic = 1
"}}}

" System conf  ----------------------------------------------------------{{{
  set termguicolors
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/
  set hidden
  set clipboard=unnamed
  set nu
  set laststatus=2
  set ts=2
  set sw=2
  set expandtab
  let mapleader = ","
  set noswapfile
  set mouse=r
  set colorcolumn=150
  set diffopt+=vertical
  set wildignorecase
  set wildmode=longest,full
  set cursorline
  set colorcolumn=80
  set diffopt+=vertical
  set wildignorecase
  set wildmode=longest,full
  set spell
  set noshowmode
  set relativenumber
  set numberwidth=1
  set tabstop=2 shiftwidth=2 expandtab
  set conceallevel=0
  set virtualedit=
  set wildmenu
  set laststatus=2
  set wrap linebreak nolist
  set autoread
  set undofile
  set undolevels=10000
  set undoreload=10000
  set undodir=$HOME/.VIM_UNDO_FILES
" }}}

" System mappings  ----------------------------------------------------------{{{
  nmap <c-s> :w<CR>
  inoremap <c-s> <Esc>:w<CR>
  nnoremap ; :
  vnoremap ; :
  nmap ,nf :NERDTreeFind<CR>
  map <silent> - :NERDTreeToggle<CR>
  nmap <leader>t :TagbarToggle<CR>
  vmap < <gv
  vmap > >gv
  nmap s <Plug>(easymotion-overwin-f2)
  vnoremap <c-/> :TComment<cr>
  nnoremap <silent> <esc> :noh<cr>
  nnoremap <Leader>q :bdelete<CR>
  nnoremap <leader>ev :vsp $MYVIMRC<CR>
  nnoremap <leader>ez :vsp ~/.zshrc<CR>
  nnoremap <leader>sv :source $MYVIMRC<CR>
  inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
  inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
  map  <Leader>w <Plug>(easymotion-bd-w)
  nmap <Leader>w <Plug>(easymotion-overwin-w)
  nnoremap <Leader>< :SidewaysLeft<CR>
  nnoremap <Leader>> :SidewaysRight<CR>
  " Move between buffers with Shift + arrow key...
  nnoremap <S-Left> :bprevious<cr>
  nnoremap <S-Right> :bnext<cr>
  tmap <leader>, <C-\><C-n>:bnext<cr>
  tmap <leader>. <C-\><C-n>:bprevious<CR>
  nnoremap <Leader>m :<C-u>MiniBrowser <C-r><C-p><CR>

  noremap <silent> <c-s-up> :call <SID>swap_up()<CR>
  noremap <silent> <c-s-down> :call <SID>swap_down()<CR>
  map <leader>z :Goyo<CR>
  nmap <Leader>l <Plug>(Limelight)
  xmap <Leader>l <Plug>(Limelight)
"}}}"

" Let -----------------------------------------------------------{{{
  " let g:delve_backend = "native"
  let g:go_fmt_command = "goimports"
  " let g:python3_host_skip_check=1
  let g:jsx_ext_required = 0
  let g:sneak#streak = 1
  let g:miniBufExplMapWindowNavVim = 1
  let g:miniBufExplMapWindowNavArrows = 1
  let g:miniBufExplMapCTabSwitchBufs = 1
  let g:miniBufExplModSelTarget = 1
  let g:ale_lint_on_enter = 0
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:startify_change_to_dir = 0
  let g:netrw_banner = 0
  let g:netrw_liststyle = 3
  let g:netrw_browse_split = 4
  let g:netrw_altv = 1
  let g:netrw_winsize = 25
  let g:miniBufExplMapWindowNavVim = 1
  let g:miniBufExplMapWindowNavArrows = 1
  let g:miniBufExplMapCTabSwitchBufs = 1
  let g:miniBufExplModSelTarget = 1
  let g:ruby_path = system('echo $HOME/.rbenv/shims')
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#enable_debug = 1
  let g:deoplete#enable_profile = 1
  let g:deoplete#enable_refresh_always = 1
  let g:indentLine_char = '|'
  let g:strip_trailing_lines = 1
  let g:multi_cursor_next_key='<C-n>'
  let g:multi_cursor_prev_key='<C-p>'
  let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'
  let g:tsuquyomi_completion_detail = 1
  let g:tsuquyomi_shortest_import_path = 1
  let s:basedir = expand('<sfile>:p:h').'/../'
  let g:tsuquyomi_use_dev_node_module = 1
  let g:typescript_compiler_binary = 'tsc'
  let g:typescript_compiler_options = ''
" }}}

" Javascript ----------------------------------------------------------------{{{

  " let g:neoformat_enabled_javascript = ['prettier']
  let g:neomake_javascript_enabled_makers = ['eslint']

  let g:jsx_ext_required = 1
  let g:jsdoc_allow_input_prompt = 1
  let g:jsdoc_input_description = 1
  let g:vim_json_syntax_conceal = 0
  let g:tern#command = ['tern']
  let g:tern#arguments = ['--persistent']

  " let g:nvim_typescript#signature_complete=1
  " let g:nvim_typescript#type_info_on_hold=1
  " let g:nvim_typescript#max_completion_detail=100
  "
  let g:neomake_typescript_tsc_maker = {
            \ 'append_file': 0,
            \ 'args': ['--project', getcwd() . '/tsconfig.json', '--noEmit'],
            \ 'errorformat':
            \   '%E%f %#(%l\,%c): error %m,' .
            \   '%E%f %#(%l\,%c): %m,' .
            \   '%Eerror %m,' .
            \   '%C%\s%\+%m'
            \}

  let g:neomake_typescript_enabled_makers = ['tsc']
  map <silent> <leader>gd :TSDoc <cr>
  map <silent> <leader>gt :TSType <cr>
  map <silent> <leader>@ :Denite -buffer-name=TSDocumentSymbol TSDocumentSymbol <cr>
  " autocmd FileType typescript setl omnifunc=TSComplete
  let g:nvim_typescript#kind_symbols = {
      \ 'keyword': 'keyword',
      \ 'class': '',
      \ 'interface': 'interface',
      \ 'script': 'script',
      \ 'module': '',
      \ 'local class': 'local class',
      \ 'type': 'type',
      \ 'enum': '',
      \ 'enum member': '',
      \ 'alias': '',
      \ 'type parameter': 'type param',
      \ 'primitive type': 'primitive type',
      \ 'var': '',
      \ 'local var': '',
      \ 'property': '',
      \ 'let': '',
      \ 'const': '',
      \ 'label': 'label',
      \ 'parameter': 'param',
      \ 'index': 'index',
      \ 'function': '',
      \ 'local function': 'local function',
      \ 'method': '',
      \ 'getter': '',
      \ 'setter': '',
      \ 'call': 'call',
      \ 'constructor': '',
      \}
" }}}

  autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

  autocmd CompleteDone * pclose
  augroup lazy_load_plugins
    autocmd!
    autocmd InsertEnter * call dein#add('vim-scripts/vim-easymotion')
                       \| autocmd! lazy_load_plugins
  augroup END
  autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

  augroup lazy_load_plugins
    autocmd!
    autocmd InsertEnter * call dein#add('vim-scripts/vim-easymotion')
                       \| autocmd! lazy_load_plugins
  augroup END
  autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!
" Code formatting -----------------------------------------------------------{{{

  ",f to format code, requires formatters: read the docs
  noremap <silent> <leader>f :Neoformat<CR>

" }}}

" Fold, gets it's own section  ----------------------------------------------{{{

  function! MyFoldText() " {{{
      let line = getline(v:foldstart)
      let nucolwidth = &fdc + &number * &numberwidth
      let windowwidth = winwidth(0) - nucolwidth - 3
      let foldedlinecount = v:foldend - v:foldstart

      " expand tabs into spaces
      let onetab = strpart('          ', 0, &tabstop)
      let line = substitute(line, '\t', onetab, 'g')

      let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines   ')
      let fillcharcount = windowwidth - len(line)
      " return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines'
      return line . '…' . repeat(" ",fillcharcount)
  endfunction " }}}

  set foldtext=MyFoldText()

  autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
  autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

  autocmd FileType vim setlocal fdc=1
  set foldlevel=99

  " Space to toggle folds.
  nnoremap <Space> za
  vnoremap <Space> za
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0

  autocmd FileType javascript,html,css,scss setlocal foldlevel=99

  autocmd FileType css,scss,json setlocal foldmethod=marker
  autocmd FileType css,scss,json setlocal foldmarker={,}

  autocmd FileType coffee setl foldmethod=indent
  let g:xml_syntax_folding = 1
  autocmd FileType xml setl foldmethod=syntax

  autocmd FileType html setl foldmethod=expr
  autocmd FileType html setl foldexpr=HTMLFolds()

  autocmd FileType javascript,json setl foldmethod=syntax

" }}}

" Snipppets -----------------------------------------------------------------{{{

" Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1
  let g:neosnippet#expand_word_boundary = 1
  imap <C-s>     <Plug>(neosnippet_expand_or_jump)
  smap <C-s>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-s>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
  imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"
  let g:neosnippet#snippets_directory='~/.vim/snippets'

"}}}

" Denite --------------------------------------------------------------------{{{

  let g:webdevicons_enable_denite = 0
  let s:menus = {}

  call denite#custom#option('_', {
        \ 'prompt': '❯',
        \ 'winheight': 10,
        \ 'reversed': 1,
        \ 'highlight_matched_char': 'Underlined',
        \ 'highlight_mode_normal': 'CursorLine',
        \ 'updatetime': 1,
        \ 'auto_resize': 1,
        \})
  call denite#custom#option('TSDocumentSymbol', {
        \ 'prompt': ' @' ,
        \ 'reversed': 0,
        \})
  call denite#custom#var('file_rec', 'command',['rg', '--threads', '2', '--files', '--glob', '!.git'])
  " call denite#custom#source('file_rec', 'vars', {
  "       \ 'command': [
  "       \ 'ag', '--follow','--nogroup','--hidden', '--column', '-g', '', '--ignore', '.git', '--ignore', '*.png'
  "       \] })
  call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
  call denite#custom#source('grep', 'matchers', ['matcher_regexp'])
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'default_opts',['--vimgrep'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])

  nnoremap <silent> <c-p> :Denite file_rec<CR>
  nnoremap <silent> <leader>h :Denite  help<CR>
  nnoremap <silent> <leader>c :Denite colorscheme<CR>
nnoremap <silent> <leader>b :Denite buffer<CR>
nnoremap <silent> <leader>a :Denite grep:::!<CR>
nnoremap <silent> <leader>u :call dein#update()<CR>
call denite#custom#map('insert','<Down>','<denite:move_to_next_line>','noremap')
call denite#custom#map('insert','<Up>','<denite:move_to_previous_line>','noremap')
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
  \ [ '.git/', '.ropeproject/', '__pycache__/',
  \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
call denite#custom#var('menu', 'menus', s:menus)
call deoplete#custom#source('emoji', 'filetypes', ['rst','golang','ruby'])

"}}}

" Go ------------------------------------------------------------------------{{{
let g:tagbar_type_go = {
  \ 'ctagstype' : 'go',
  \ 'kinds'     : [  'p:package', 'i:imports:1', 'c:constants', 'v:variables',
      \ 't:types',  'n:interfaces', 'w:fields', 'e:embedded', 'm:methods',
      \ 'r:constructor', 'f:functions' ],
  \ 'sro' : '.',
  \ 'kind2scope' : { 't' : 'ctype', 'n' : 'ntype' },
  \ 'scope2kind' : { 'ctype' : 't', 'ntype' : 'n' },
  \ 'ctagsbin'  : 'gotags',
  \ 'ctagsargs' : '-sort -silent'
  \ }

 au FileType go set noexpandtab
 au FileType go set shiftwidth=4
 au FileType go set softtabstop=4
 au FileType go set tabstop=4

" Mappings
au FileType go nmap <F9> :GoCoverageToggle -short<cr>
au FileType go nmap <F10> :GoTest -short<cr>
au FileType go nmap <F12> <Plug>(go-def)
au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
au FileType go nmap <leader>gt :GoDeclsDir<cr>
au FileType go nmap <leader>gc <Plug>(go-coverage-toggle)
au FileType go nmap <leader>gd <Plug>(go-def)
au FileType go nmap <leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <leader>gdh <Plug>(go-def-horizontal)
au FileType go nmap <leader>gD <Plug>(go-doc)
au FileType go nmap <leader>gDv <Plug>(go-doc-vertical)

" Run goimports when running gofmt
let g:go_fmt_command = "goimports"

" Set neosnippet as snippet engine
let g:go_snippet_engine = "neosnippet"

" Enable syntax highlighting per default
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1

" Show the progress when running :GoCoverage
let g:go_echo_command_info = 1

" Show type information
let g:go_auto_type_info = 1

" Highlight variable uses
let g:go_auto_sameids = 1

" Fix for location list when vim-go is used together with Syntastic
let g:go_list_type = "quickfix"

" gometalinter configuration
let g:go_metalinter_command = ""
let g:go_metalinter_deadline = "5s"
let g:go_metalinter_enabled = [
    \ 'deadcode',
    \ 'errcheck',
    \ 'gas',
    \ 'goconst',
    \ 'gocyclo',
    \ 'golint',
    \ 'gosimple',
    \ 'ineffassign',
    \ 'vet',
    \ 'vetshadow'
\]


let g:python3_host_prog  = '/usr/local/bin/python3'
" Set whether the JSON tags should be snakecase or camelcase.
let g:go_addtags_transform = "snakecase"

" neomake configuration for Go.
let g:neomake_go_enabled_makers = [ 'go', 'gometalinter' ]
let g:neomake_go_gometalinter_maker = {
  \ 'args': [
  \   '--tests',
  \   '--enable-gc',
  \   '--concurrency=3',
  \   '--fast',
  \   '-D', 'aligncheck',
  \   '-D', 'dupl',
  \   '-D', 'gocyclo',
  \   '-D', 'gotype',
  \   '-E', 'errcheck',
  \   '-E', 'misspell',
  \   '-E', 'unused',
  \   '%:p:h',
  \ ],
  \ 'append_file': 0,
  \ 'errorformat':
  \   '%E%f:%l:%c:%trror: %m,' .
  \   '%W%f:%l:%c:%tarning: %m,' .
  \   '%E%f:%l::%trror: %m,' .
  \   '%W%f:%l::%tarning: %m'
  \ }

  let g:neoformat_run_all_formatters = 1
"}}}

" Configure signs. ----------------------------------------------{{{
  let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
  let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeWarningSign'}
  let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
  let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}
"}}}

" Enable mouse if possible
if has('mouse')
  set mouse=a
endif
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Disable deoplete when in multi cursor mode
function! Multiple_cursors_before()
  let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
  let b:deoplete_disable_auto_complete = 0
endfunction


function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction
