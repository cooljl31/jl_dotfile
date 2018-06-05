""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Must Have
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme atom-dark
syntax on
syntax enable
let g:solarized_termtrans = 1
call togglebg#map("<F5>")
"if has('gui_running')
"set background=light
"else
"set background=dark
"endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" snippets setup
Plugin 'scrooloose/vim-slumlord'
Plugin 'fatih/vim-go'
Plugin 'aklt/plantuml-syntax'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" trailing whitwspace
Plugin 'StripWhiteSpaces'
" auto save and highlights
Plugin 'cooljl31/vim-auto-save'
Plugin 'cooljl31/vim-polyglot'
" comment
Plugin 'cooljl31/nerdcommenter'
" Tools
" remember to install pip install Pillow
"Plugin 'ashisha/image.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'L9'
Plugin 'vim-scripts/surround.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'FuzzyFinder'
Plugin 'dkprice/vim-easygrep'
Plugin 'mileszs/ack.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jiangmiao/auto-pairs'
" git show
Plugin 'mhinz/vim-signify'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'mru'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'rking/ag.vim'
"Plugin 'msanders/snipmate.vim'
"Plugin 'tpope/vim-vinegar'
"Plugin 'tpope/vim-fugitive'
"Plugin 'slashmili/alchemist.vim'"
"Plugin 'tpope/vim-sensible'
Plugin 'Shougo/neocomplete'
"Plugin 'trayo/vim-ruby-collapse'
"Plugin 'justinmk/vim-sneak'
"Plugin 'airblade/vim-gitgutter'
" visual undo list
"Plugin 'sjl/gundo.vim'
" Plugin 'majutsushi/tagbar'
" markdown preview: opens browser with live reload when vim opens .md
Plugin 'JamshedVesuna/vim-markdown-preview'
" language tools
"Plugin 'scrooloose/syntastic'
"Plugin 'millermedeiros/vim-esformatter'
"Plugin 'digitaltoad/vim-pug'
" Plugin 'elzr/vim-json'
" Plugin 'SirVer/ultisnips'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'node.js'
"Plugin 'SuperTab'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on " Filetype auto-detection
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set UTF-8 encoding
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif
"set enc=utf-8
"set fenc=utf-8
"set termencoding=utf-8
set history=10000 " How many lines of history to remember
set cf " enable error files and error jumping
" set clipboard+=unnamed " turns out I do like sharing windows clipboard
set ffs=unix,dos,mac " support all three, in this order
set viminfo+=! " make sure it can save viminfo
set isk+=_,$,@,%,# " none of these should be word dividers, so make them not be
set nosol " leave my cursor where it was

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backup " make backup file
set backupdir=~/.vim/backup " where to put backup files
set directory=~/.vim/temp " directory for temp files
set makeef=error.err " When using make, where should it dump the file
set sessionoptions+=globals " What should be saved during sessions being saved
set sessionoptions+=localoptions " What should be saved during sessions being saved
set sessionoptions+=resize " What should be saved during sessions being saved
set sessionoptions+=winpos " What should be saved during sessions being saved

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set lsp=0 " space it out a little more (easier to read)
set wildmenu " turn on wild menu
set wildmode=list:longest " turn on wild menu in special format (long format)
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.swp,*.jpg,*.gif,*.png " ignore formats
set ruler " Always show current positions along the bottom
set cmdheight=1 " the command bar is 1 high
set number " turn on line numbers
set lz " do not redraw while running macros (much faster) (LazyRedraw)
set hid " you can change buffer without saving
set backspace=2 " make backspace work normal
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
set mouse=a " use mouse everywhere
set shortmess=atI " shortens messages to avoid 'press a key' prompt
set report=0 " tell us when anything is changed via :...
set noerrorbells " don't make noise
set list " we do what to show tabs, to ensure we get them out of my files
set listchars=tab:>-,trail:- " show tabs and trailing whitespace

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch " show matching brackets
set mat=5 " how many tenths of a second to blink matching brackets for
set nohlsearch " do not highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase
set so=5 " Keep 5 lines (top/bottom) for scope
set novisualbell " don't blink
" statusline example: ~\myfile[+] [FORMAT=format] [TYPE=type] [ASCII=000] [HEX=00] [POS=0000,0000][00%] [LEN=000]
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2 " always show the status line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ai " autoindent (filetype indenting instead)
set nosi " smartindent (filetype indenting instead)
set cindent " do c-style indenting
set softtabstop=2 " unify
set shiftwidth=2 " unify
set tabstop=2 " real tabs should be 4, but they will show with set list on
set copyindent " but above all -- follow the conventions laid before us
" wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
set textwidth=120
"filetype plugin indent on " load filetype plugins and indent settings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fo=tcrq " See Help (complex)
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set expandtab " no real tabs!
set nowrap " do not wrap line
set preserveindent " but above all -- follow the conventions laid before us
set ignorecase " case insensitive by default
set smartcase " if there are caps, go case-sensitive
set completeopt=menu,longest,preview " improve the way autocomplete works
set cursorcolumn " show the current column
set cursorline
hi CursorLine term=underline ctermbg=008 guibg=#493a35
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"    Enable folding, but by default make it act like folding is
"    off, because folding is annoying in anything but a few rare
"    cases
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " Turn on folding
set foldmarker={,} " Fold C style code
set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't open folds when you undo stuff

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let Tlist_Ctags_Cmd = 'ctags' " Location of ctags
"let Tlist_Sort_Type = "name" " order by
"let Tlist_Use_Right_Window = 1 " split to the right side of the screen
"let Tlist_Compact_Format = 1 " show small meny
"let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
"let Tlist_File_Fold_Auto_Close = 0 " Do not close tags for other files
"let Tlist_Enable_Fold_Column = 1 " Do show folding tree
"let Tlist_WinWidth = 50 " 50 cols wide, so I can (almost always) read my functions

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matchit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_ignorecase = 1
let vim_markdown_preview_github=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Perl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let perl_extended_vars=1 " highlight advanced perl vars inside strings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Select range, then hit :SuperRetab($width) - by p0g and FallingCow
function! SuperRetab(width) range
    silent! exe a:firstline . ',' . a:lastline . 's/\v%(^ *)@<= {'. a:width .'}/\t/g'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "map <up> <ESC>:bp<RETURN> " left arrow (normal mode) switches buffers
 "map <down> <ESC>:bn<RETURN> " right arrow (normal mode) switches buffers
 "map <right> <ESC>:Tlist<RETURN> " show taglist
" map <left> <ESC>:NERDTreeToggle<RETURN>  " moves left fa split
" map <F2> <ESC>ggVG:call SuperRetab()<left>
" map <F12> ggVGg? " apply rot13 for people snooping over shoulder, good fun
"map ,n <plug>NERDTreeTabsToggle<CR>
"nmap <C-H> <C-W><C-H>
map <F7> mzgg=G
"nmap <C-L> <C-W><C-L>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful abbrevs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.zcml set filetype=xml
au BufRead,BufNewFile *.rb,*.rhtml set tabstop=2
au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2
au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2
au BufRead,BufNewFile *.otl set syntax=blockhl
au BufRead,BufNewFile *.json set syntax=javascript
au FileType python set omnifunc=pythoncomplete#Complete
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
au FileType c set omnifunc=ccomplete#Complete
"autocmd vimenter * NERDTree
"autocmd vimenter * silent :!/bin/rm .git/hooks/*
"autocmd vimenter * silent :!git ctags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change paging overlap ount from 2 to 5 (+3)
" if you swapped C-y and C-e, and set them to 2, it would
" remove any overlap between pages
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-f> <C-f>3<C-y> "  Make overlap 3 extra on control-f
nnoremap <C-b> <C-b>3<C-e> "  Make overlap 3 extra on control-b

" Yank text to the OS X clipboard
" Which register to use for yanked text.
" unnamed - use the operating system clipboard.
set clipboard=unnamed
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" esformatter
" type \es to format
nnoremap <silent> <leader>es :Esformatter<CR>
vnoremap <silent> <leader>es :EsformatterVisual<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
" set runtimepath set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%#warningmsg#
set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_eslint_checker = 1
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_pug_checkers = ['jade']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#streak = 1
let g:sneak#label = 1
"colorscheme OceanicNext
set background=dark
let g:OceanicNext_italic = 1

"let g:airline_theme='bubblegum'
"let g:auto_save = 1  " enable AutoSave on Vim startup
"let g:AutoPairsFlyMode = 1
let mapleader= ','
set timeout timeoutlen=1500
let g:strip_trailing_lines = 1
let g:rubycomplete_rails = 1
let ruby_spellcheck_strings = 1
"let g:ruby_indent_block_style = 'do'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Practice
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r
set guioptions-=e
set t_CO=256
set guifont=SourceCodePro+Powerline+Awesome\ regular:h15
set splitright
set complete=.,w,b,u
"nmap <c-R> :CtrlPBufTag<cr>
nmap <c-e> :CtrlPMRUFiles<cr>
"map <C-H> <C-w>h<C-w>\|
"map <C-L> <C-w>l<C-w>\|
let g:ctrlp_match_window = 'top,order:ttb,max:30,results:30'
map <Leader>b :CtrlPBuffer<CR>
map <Leader>e :CtrlPBufTag<CR>
nmap ,ev :tabedit $MYVIMRC<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nmap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert

"" Fix command typos (stolen from Adam Katz)
nmap ; :

"" Highlight lines over 80 characters long by pressing leader H
nnoremap <Leader>H :call<SID>LongLineHLToggle()<cr>
hi OverLength ctermbg=none cterm=none
match OverLength /\%>80v/
fun! s:LongLineHLToggle()
  if !exists('w:longlinehl')
    let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
    echo "Long lines highlighted"
  else
    call matchdelete(w:longlinehl)
    unl w:longlinehl
    echo "Long lines unhighlighted"
  endif
endfunction
"" End of highlighting lines

"" ----------------------------------------------------------------------------
""  Random other items
"" ----------------------------------------------------------------------------
" Custom ignore for ctrl-p
  "let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|tmp)|(\.(txt|swp|ico|git|svn))$'
  " Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp\|dist$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Ignore html in syntastic since it doesn't handle handlebars
"let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" Don't require saving a buffer before switching buffers
set hidden

" Set notes directory for vim notes
let g:notes_directories = ['~/Dropbox/Notes']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nmap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap ,fd :FufDir<CR>
nmap ,ff :FufFile<CR>
nmap ,ft :FufBufferTag<CR>
nmap ,nf :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>
nmap s <Plug>(easymotion-s)
" Bidirectional & within line 't' motion
"omap t <Plug>(easymotion-bd-tl)
" Use uppercase target labels and type as a lower case
"let g:EasyMotion_use_upper = 1
 " type `l` and match `l`&`L`
"let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
"let g:neocomplete#enable_at_startup = 1
"let g:EasyMotion_use_smartsign_us = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neocomplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType ruby setlocal omnifunc=rubycomplete#CompleteTags
let g:neocomplete#force_overwrite_completefunc = 1
" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
  "let g:neocomplete#sources#omni#input_patterns = {}
"endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
set omnifunc=syntaxcomplete#Complete
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
        \if &omnifunc == "" |
        \setlocal omnifunc=syntaxcomplete#Complete |
        \endif
endif
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/snippets'
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
"let g:ackprg = 'ag --vimgrep'
