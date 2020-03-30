set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('/usr/share/vim/addons/plugin')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"-------------------------------------------------
" asyncrun
Plugin 'skywind3000/asyncrun.vim'
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
" tagbar
" Plugin 'majutsushi/tagbar'

"-------------------------------------------------
" vim-airline
Plugin 'vim-airline/vim-airline'
" vim-airline-themes
Plugin 'vim-airline/vim-airline-themes'

"-------------------------------------------------
" Split window resize
Plugin 'simeji/winresizer'

"-------------------------------------------------
" Vim Calendar(Google Calendar and Google Task)
Plugin 'itchyny/calendar.vim'

"-------------------------------------------------
" NERDTree
Plugin 'scrooloose/nerdtree.git'

"-------------------------------------------------
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

"-------------------------------------------------
" VimWiki,some kinds of personal diary
Plugin 'vimwiki/vimwiki'
<<<<<<< HEAD
=======
let g:vimwiki_folding = 'expr'
" Define wiki options
let wiki_1 = {}
let wiki_1.path = '/home/liuyeqs/My_vimwiki/vimwiki/'
" let wiki_1.html_template = '~/public_html/template.tpl'
let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'r': 'R'}

let g:vimwiki_list = [wiki_1]
let g:automatic_nested_syntaxes = 1
>>>>>>> 5775aa9fd23ec9311391a85e0aedc63f1e9fd834

"-------------------------------------------------
" vim-rainbow
Plugin 'luochen1990/rainbow'

"-------------------------------------------------
" Vim with Markdown and Preview
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kannokanno/previm'
Plugin 'tyru/open-browser.vim'

<<<<<<< HEAD
=======
""" markdown {{{
  autocmd BUfRead,BufNewFile *.mkd set filetype=markdown
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  " Need: kannokanno/previm
  nnoremap <C-p> :PrevimOpen<CR> " Ctrl-p open previm
  " not fold up automatically
  let g:vim_markdown_folding_disable=1
  let g:previm_enable_realtime=1
" }}}

>>>>>>> 5775aa9fd23ec9311391a85e0aedc63f1e9fd834
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

" UTF-8 Support
set encoding=utf-8

syntax on
filetype plugin on
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


" Remap some KEY
"-------------------------------------------------
:let mapleader = "\<Space>"

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


" Highlight
"-------------------------------------------------
" let g:colors_name = expand('<sfile>:t:r')
hi x071_DarkSeaGreen4 ctermfg=71 guifg=#5faf5f "rgb=95,175,95
hi x214_Orange1 ctermfg=214 guifg=#ffaf00 "rgb=255,175,0
hi x040_Green3 ctermfg=40 guifg=#00d700 "rgb=0,215,0
hi x046_Green1 ctermfg=46 guifg=#00ff00 "rgb=0,255,0
hi x102_Grey53 ctermfg=102 guifg=#969696 "rgb=150,150,150
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight Visual ctermbg=102
set background=dark
":colorscheme torte
:colorscheme evening
highlight LineNr ctermfg=grey
highlight Comment ctermfg=71

" Highlight My Comment(beginning with liu>>>)
au! BufEnter *.py syn match specialComment /# liu>>>.*/  " Python files (*.py)
highlight specialComment ctermfg=214


"-------------------------------------------------
" change cursor shape with mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

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

" Setting for auto-complete of trentheses
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
" Show matching sets of parentheses
:set showmatch


" Plugin
"===============================================================================
" Syntax checking
"-------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=0
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0


" airline
"-------------------------------------------------
let g:airline_theme='fruit_punch'


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


" Vim Calendar(Google Calendar and Google Task)
"-------------------------------------------------
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
" Open calendar.vim clock
noremap <Leader>time :Calendar -view=clock<cr>


" NERDTree
"-------------------------------------------------
autocmd vimenter * NERDTree  " Load NERDTree automatically when vim starts up
autocmd bufenter * if (winnr("$")==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=20
" let g:NERDTreeShowHidden=1
" Remap open NERDTree
noremap <Leader>tree :NERDTree<cr>


" YCM
"-------------------------------------------------
let g:ycm_keep_logfiles=1
let g:ycm_log_level='debug'


" Vimwiki
"-------------------------------------------------
let g:vimwiki_folding = 'expr'
" Define wiki options
let wiki_1 = {}
let wiki_1.path = '/home/liuyeqs/My_vimwiki/vimwiki/'
" let wiki_1.html_template = '~/public_html/template.tpl'
let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'r': 'R'}

let g:vimwiki_list = [wiki_1]
let g:automatic_nested_syntaxes = 1


" vim-rainbow
"-------------------------------------------------
" au FileType c,cpp,objc,objcpp,python,r, call rainbow#load()
" enable this plugin globally
let g:rainbow_active=1
" :RainbowToggle  --toggle this plugin
" :RainbowLoad    --load/reload this plugin


" Markdown and Preview
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
