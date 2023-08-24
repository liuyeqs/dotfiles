set nocompatible              " be iMproved, required
filetype off                  " required

"===============================================================================
" set the runtime path to include Vundle and initialize
" set shellslash
set rtp+=c:/D/Vim/~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('/usr/share/vim/addons/plugin')

"-------------------------------------------------
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

"-------------------------------------------------
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

"-------------------------------------------------
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.

"-------------------------------------------------
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

"-------------------------------------------------
" plugin SimpylFold
Plugin 'tmhedberg/SimpylFold'

"-------------------------------------------------
" asyncrun
" Plugin 'skywind3000/asyncrun.vim'
  "enable to run shell commands in background and read output in the quickfix
  "window in realtime

"-------------------------------------------------
" Syntax checking
Plugin 'vim-syntastic/syntastic.git'

"-------------------------------------------------
" nvie/vim-flake8
Plugin 'nvie/vim-flake8'
" <F7> syntax check

"-------------------------------------------------
" NERDTree
Plugin 'scrooloose/nerdtree'

"-------------------------------------------------
" YCM
" Plugin 'Valloric/YouCompleteMe'

"-------------------------------------------------
" vim-LSP(Language Server Protocao)
Plugin 'prabirshrestha/vim-lsp'
" aoto configuration for Language Servers for vim-lsp
Plugin 'mattn/vim-lsp-settings'

" auto-completion"
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'keremc/asyncomplete-racer.vim'

" rust.vim
Plugin 'rust-lang/rust.vim'

"-------------------------------------------------
" vim-auto-popmenu
Plugin 'skywind3000/vim-auto-popmenu'

"-------------------------------------------------
" tagbar
Plugin 'majutsushi/tagbar'

"-------------------------------------------------
" Split window resize
Plugin 'simeji/winresizer'

"-------------------------------------------------
" Vim Calendar(Google Calendar and Google Task)
" Plugin 'itchyny/calendar.vim'

"-------------------------------------------------
" VimWiki, some kinds of personal diary
Plugin 'vimwiki/vimwiki'

"-------------------------------------------------
" Vim with Markdown and Preview
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kannokanno/previm'
Plugin 'tyru/open-browser.vim'

"-------------------------------------------------
" airline
Plugin 'vim-airline/vim-airline'
" airline-themes
Plugin 'vim-airline/vim-airline-themes'

"-------------------------------------------------
" color scheme: Nord-vim
Plugin 'arcticicestudio/nord-vim'

" color scheme: challenger-deep
Plugin 'challenger-deep-theme/vim'

"-------------------------------------------------
" vim-rainbow
Plugin 'luochen1990/rainbow'

"-------------------------------------------------
" English dictionary in vim
Plugin 'phongvcao/vim-stardict'

" All of your Plugins must be added before the following line
"===============================================================================
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


" The following will be basic settings for vim
"===============================================================================

"-------------------------------------------------
" UTF-8 Support
set encoding=utf-8

syntax on
filetype plugin on
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set relativenumber
set t_Co=256
set hlsearch
set ruler
set splitbelow
set splitright
set list listchars=tab:»·,trail:·,nbsp:·  " Display extra whitespace
set textwidth=100  " Make it obvious where 100 characters is
set noundofile  " Stop creating the undofile-backup files
set backupdir=c:/D/Vim/~/backup//,.
" color scheme
:colorscheme challenger_deep


" Mapping
"-------------------------------------------------
:let mapleader = "\<Space>"

"Fast reloading of the .vimrl
map  <Space>rl :source c:/Basics/Vim/.vimrc<cr>
"Fast editing of .vimrc
map  <Space>ee :e d:/WLB/Vim/vim_toolbox/dotfiles/config/.vimrc<cr>

" New tab
noremap <Leader>tn :tabnew<cr>

" remap for split shifting
noremap <C-H> <C-W><C-H>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>

" remap print
noremap <Leader>print :hardcopy<cr>
set printoptions=number:y

" remap save
noremap <Leader>s :w<cr>

" count number of words and digits
noremap <Leader>cnt :%s/[\u4EOO-\u9FCC0-9]/&/g<cr>


" Indententaion
"-------------------------------------------------
" au BUfNewFile, BufRead *.py
"   \ set tabstop=4
"   \ set softtabstop=4
"   \ set shiftwidth=4
"   \ set textwidth=79
"   \ set expandtab
"   \ set autoindent
"   \ set fileformat=unix
"
" au BufNewFile, BufRead *.js, *.html, *.css
"   \ set tabstop=2
"   \ set softtabstop=2
"   \ set shiftwidth=2


" Highlight
"-------------------------------------------------
" let g:colors_name = expand('<sfile>:t:r')
" hi x071_DarkSeaGreen4 ctermfg=71 guifg=#5faf5f "rgb=95,175,95
" hi x214_Orange1 ctermfg=214 guifg=#ffaf00 "rgb=255,175,0
" hi x040_Green3 ctermfg=40 guifg=#00d700 "rgb=0,215,0
" hi x046_Green1 ctermfg=46 guifg=#00ff00 "rgb=0,255,0
" hi x102_Grey53 ctermfg=102 guifg=#969696 "rgb=150,150,150
" autocmd ColorScheme * highlight Normal ctermbg=none
" autocmd ColorScheme * highlight Visual ctermbg=102
" set background=dark
" ":colorscheme torte
" :colorscheme evening
highlight LineNr ctermfg=grey
highlight Comment ctermfg=71

" Highlight My Comment(beginning with liu>>>)
au! BufEnter *.py syn match specialComment /# liu>>>.*/  " Python files (*.py)
highlight specialComment ctermfg=214

" Special color for FAIL
au! BufEnter *.wiki syn match specialComment1 /FAIL/  "Vimwiki files (*.wiki)
highlight specialComment1 guifg=#ff0000 guibg=#ffff00

" Special color for PRIORITY
au! BufEnter *.wiki syn match specialComment2 /PRIO/  "Vimwiki files (*.wiki)
highlight specialComment2 guifg=#144ca6 guibg=#d786ee

" syntax highlight for python self
:syn keyword pythonBuiltin self

" Search highlight
highlight Search term=bold,reverse ctermfg=0 ctermbg=14 gui=bold guifg=Black guibg=Magenta


"-------------------------------------------------
" change cursor shape with mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END


"-------------------------------------------------
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" Display all matching files when tab complete
set wildmenu
" Configure the 'make' command to run RSpec
set makeprg=bundle\ exec\ respec\ -f\ QuickfixFormatter
  " Now WE CAN:
  " - Run :make to run RSpec
  " - :cl to list errors
  " - :cc# to jump to error by number
  " - :cn and :cp to navigate forward and back


"-------------------------------------------------
" Setting for auto-complete of trentheses
inoremap ` ``<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
" inoremap { {<cr>}<ESC>ko<tab>
inoremap <> <><ESC>i
" Show matching sets of parentheses
:set showmatch

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding/unfolding with the spacebar instead of <za>
nnoremap <Leader> za


"-------------------------------------------------
" Setting for Rust
autocmd FileType rust inoremap /* /*<cr><ESC>xxi*/<ESC>


"-------------------------------------------------
" Setting for Python
autocmd BufNewFile *.py exec ":call SetTitle()"
func SetTitle()
  if &filetype == "python"
     call setline(1, "#!/usr/bin/env python")
     call setline(2, "# -* - coding: UTF-8 -* -")
     call setline(3, "#Filename:")
  endif
endfunc

let g:python_highlight_all = 1


" Plugin
"===============================================================================
" SimpplFold
"-------------------------------------------------
let g:SimpylFold_docstring_preview=1


" Syntax checking
"-------------------------------------------------
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list=0
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_python_checkers=['flake8']


" NERDTree
"-------------------------------------------------
autocmd vimenter * NERDTree    " Load NERDTree automatically when vim starts up
autocmd bufenter * if (winnr("$")==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let g:NERDTreeShowHidden=1
let g:NERDTreeShowBookmarks = 1
" Open NERDTRee
noremap <Leader>tree :NERDTree<cr>


" YCM
"-------------------------------------------------
" let g:ycm_keep_logfiles=1
" let g:ycm_log_level='debug'


" tagbar
"-------------------------------------------------
" let g:tagbar_ctags_bin = 'C:\Users\liuye\vimfiles\ctags-2019-07-25_1a94658c-x64.debug\ctags.exe'
" let g:tagbar_ctags_bin = 'C:\Basics\Vim\vimfiles\plugin\ctags58\ctags.exe'
let g:tagbar_ctags_bin = 'C:\Basics\Vim\vimfiles\plugin\ctags-2022-07-25_p5_x64\ctags.exe'
noremap <F8> :TagbarToggle<CR>

" for RUST
let g:rust_use_custom_ctags_defs = 1  " if using rust.vim
let g:tagbar_type_rust = {
  \ 'ctagsbin' : 'C:\Basics\Vim\vimfiles\plugin\ctags-2022-07-25_p5_x64\ctags.exe',
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
      \ 'n:modules',
      \ 's:structures:1',
      \ 'i:interfaces',
      \ 'c:implementations',
      \ 'f:functions:1',
      \ 'g:enumerations:1',
      \ 't:type aliases:1:0',
      \ 'v:constants:1:0',
      \ 'M:macros:1',
      \ 'm:fields:1:0',
      \ 'e:enum variants:1:0',
      \ 'P:methods:1',
  \ ],
  \ 'sro': '::',
  \ 'kind2scope' : {
      \ 'n': 'module',
      \ 's': 'struct',
      \ 'i': 'interface',
      \ 'c': 'implementation',
      \ 'f': 'function',
      \ 'g': 'enum',
      \ 't': 'typedef',
      \ 'v': 'variable',
      \ 'M': 'macro',
      \ 'm': 'field',
      \ 'e': 'enumerator',
      \ 'P': 'method',
  \ },
\ }


" Split window resize
"-------------------------------------------------
" The key used to start winresizer
let g:winresizer_start_key='<C-a>'  " <C-a>: original function to get number ++
" Finish with <Esc> if this value is 1
let g:winresizer_finish_with_escape=1
" The width to add or subtract when the 'left' or 'right' key is pressed
let g:winresizer_vert_resize=1
" The height to add or subtract when the 'up' or 'down' key is pressed
let g:winresizer_horiz_resize=1


" colorscheme
"-------------------------------------------------
" leg g:challenger_deep_termcolors


" airline
"-------------------------------------------------
" let g:airline_theme='fruit_punch'
" let g:airline_theme='challenger_deep'


" Vim Calendar(Google Calendar and Google Task)
"-------------------------------------------------
" View and edit calendar on Google Calendar, or task on Google Task
" let g:calendar_google_calendar = 1
" let g:calendar_google_task = 1
" " so c:\Users\liuye\.cache\calendar.vim\credentials.vim
" " Open calendar.vim clock
" noremap <Leader>time :Calendar -view=clock<cr>


" VimWiki, a sort of personal diary
"-------------------------------------------------
" open/write today's dairy
" <Leader>w<Leader>w
" generate dairy index
" <Leader>w<Leader>i
let g:vimwiki_folding = 'expr'

" Define wiki options
let wiki_1 = {}
let wiki_1.name = 'My_Wiki'
let wiki_1.path = 'D:/WLB/Vim/vim_toolbox/My_vimwiki/vimwiki'
" let wiki_1.html_template = '~/public_html/template.tpl'
let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'r': 'R', 'rust': 'rs'}
let wiki_1.auto_toc = 1
let wiki_1.auto_diary_index = 1

let wiki_2 = {}
let wiki_2.name = 'My_PD'
let wiki_2.path = 'D:/WLB/Vim/vim_toolbox/My_vimwiki/PersonalDev'
let wiki_2.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'r': 'R', 'rust': 'rs'}
let wiki_2.auto_toc = 1

let g:vimwiki_list = [wiki_1, wiki_2]
let automatic_nested_syntaxes = 1
let g:vimwiki_toc_link_format = 1
let g:vimwiki_list_ignore_newline = 0

" restrict Vimwiki's operation to only those paths listed in g:vimwiki_list.
" other text files wouldn't be treated as wiki pages.
let g:vimwiki_global_ext = 0


" vim-rainbow
"-------------------------------------------------
" au FileType c,cpp,objc,objcpp,python,r, call rainbow#load()
" enable this plugin globally
let g:rainbow_active=1
" :RainbowToggle  --toggle this plugin
" :RainbowLoad    --load/reload this plugin


" Vim with Markdown and Preview
"-------------------------------------------------
" markdown {{{
  autocmd BUfRead,BufNewFile *.mkd set filetype=markdown
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  " Need: kannokanno/previm
  nnoremap <C-p> :PrevimOpen<CR> " Ctrl-p open previm
  " not fold up automatically
  let g:vim_markdown_folding_disable=1
  let g:previm_enable_realtime=1
" }}}


" LSP
"-------------------------------------------------
" :LspInstallServer
" LSP server download directory [%LOCALAPPDATA%\vim-lsp-settings\servers]
" Auto-complete
" Automatically show the autocomplete popup menu
let g:asyncomplete_auto_popup = 1  " disable auto popup: 0
" Minimum consecutive chars to trigger auto-popup.
let g:asyncomplete_min_chars = 2

" Tab completion(firstly, make auto popup disable)
" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
" endfunction
"
" inoremap <silent><expr> <TAB>
"   \ pumvisible() ? '\<C-n>' :
"   \ <SID>check_back_space() ? '\<TAB>' :
"   \ asyncomplete#force_refresh()
" inoremap <expr><S-TAB> pumvisible() ? '\<C-p>' : '\<C-h>'

" Preview Window
" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 1
set completeopt=menuone,noinsert,noselect,preview
" auto close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" show diagnostics message within status line
let g:lsp_diagnostics_enabled = 0
let g:lsp_diagnostics_echo_cursor = 0

" Python language server
if executable('pyls')
    "pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif


" English dictionary
"-------------------------------------------------
" Make vim-stardict split open in a :split (default value)
let g:stardict_split_horizontal=1
" Set vim-stardict split width (or height) to 20 based on whether
" vim-stardict split is a :vsplit (or :split)
let g:stardict_split_size=20
" Map vim-stardict's commands
" Ready for typing the word in
nnoremap <Leader>dict :silent! StarDict<Space>
" Lookup the word under cursor
nnoremap <Leader>w :silent! StarDictCursor<CR>
" OPTIONAL: You can change the colors of output of vim-stardict inside Vim as follow
" highlight link stardictResult Special                        " Default value
" highlight link stardictWord PreProc                          " Default value
" highlight link stardictWordType Statement                    " Default value
" highlight link stardictWordMeaning Identifier                " Default value
" highlight link stardictWordExample Type                      " Default value
" highlight link stardictDictName Underlined                   " Default value
