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
  call dein#add('haya14busa/dein-command.vim')
  call dein#add('JamshedVesuna/vim-markdown-preview')
  call dein#add('alvan/vim-closetag')
  call dein#add('bling/vim-airline')
  call dein#add('chase/vim-ansible-yaml')
  call dein#add('chriskempson/base16-vim')
  call dein#add('dgryski/vim-godef')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('fatih/molokai')
  call dein#add('fatih/vim-go')
  call dein#add('godlygeek/tabular')
  call dein#add('jgdavey/tslime.vim')
  call dein#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' })
  call dein#add('junegunn/fzf.vim')
  call dein#add('junegunn/gv.vim')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('kshenoy/vim-signature')
  call dein#add('majutsushi/tagbar')
  call dein#add('mhinz/vim-signify')
  call dein#add('mhinz/vim-startify')
  call dein#add('mileszs/ack.vim')
  call dein#add('mxw/vim-jsx')
  call dein#add('ngmy/vim-rubocop')
  call dein#add('pangloss/vim-javascript')
  call dein#add('scrooloose/nerdtree', { 'on': [] })
  call dein#add('sjl/gundo.vim')
  call dein#add('slim-template/vim-slim')
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-rails')
  call dein#add('tpope/vim-surround')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('vim-scripts/BufOnly.vim')
  call dein#add('vim-scripts/mru.vim')
  call dein#add('zchee/deoplete-go', { 'do': 'make'})
  call dein#add('kshenoy/vim-signature')
  call dein#add('AndrewRadev/sideways.vim')
  call dein#add('scrooloose/vim-slumlord')
  call dein#add('w0rp/ale')
  call dein#add('othree/html5.vim')
  call dein#add('roxma/nvim-completion-manager')
  call dein#add('elzr/vim-json')

  call dein#add('907th/vim-auto-save')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })


  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('honza/vim-snippets')
  call dein#add('joonty/vim-phpqa')

  " call dein#local('~/GitHub', {},['operator-next'])
  call dein#add('chemzqm/denite-git')
  call dein#add('sjl/vitality.vim')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  if dein#check_install()
    call dein#install()
    let pluginsExist=1
  endif

  call dein#end()

let vim_markdown_preview_github=1
let g:python3_host_skip_check=1
set termguicolors
colorscheme base16-tomorrow-night
syntax on
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
set clipboard=unnamed
set nu
set laststatus=2
set ts=2
set sw=2
set expandtab
set undofile
set undolevels=1000
set undoreload=10000
set undodir=$HOME/.VIM_UNDO_FILES
let mapleader = ","
set noswapfile
nnoremap ; :
vnoremap ; :
nmap ,nf :NERDTreeFind<CR>
map <silent> - :NERDTreeToggle<CR>
nmap <leader>t :TagbarToggle<CR>
vmap < <gv
vmap > >gv
set mouse=r
vnoremap <c-/> :TComment<cr>
set colorcolumn=80
nmap s <Plug>(easymotion-overwin-f2)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
let g:ruby_path = system('echo $HOME/.rbenv/shims')
let g:sneak#streak = 1

let g:go_fmt_command = "goimports"
set diffopt+=vertical
autocmd CompleteDone * pclose
let g:jsx_ext_required = 0

set wildignorecase
set wildmode=longest,full

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:ale_lint_on_enter = 0

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Enable mouse if possible
if has('mouse')
  set mouse=a
endif

let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert

augroup lazy_load_plugins
  autocmd!
  autocmd InsertEnter * call dein#add('vim-easymotion')
                     \| autocmd! lazy_load_plugins
augroup END
let g:startify_change_to_dir = 0

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

nnoremap <silent> <leader>f :Files<cr>

set cursorline
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
nnoremap <Leader>< :SidewaysLeft<CR>
nnoremap <Leader>> :SidewaysRight<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

let g:deoplete#enable_at_startup = 1

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
