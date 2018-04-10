" Author Zhang Zhang


"""""""""""""""""""""""""""""""""""""""
" General Setting
"""""""""""""""""""""""""""""""""""""""
" detect file type and load plugin accordingly
filetype on 
filetype plugin on
filetype indent on
" mute vim when error occurs
set noerrorbells
" deal with compatibility between VI and VIM
set nocompatible
" allow use mouse in buffer
set mouse=a
set selection=exclusive
set selectmode=mouse,key


" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line

"""""""""""""""""""""""""""""""""""""""
" Plugin  Setting
"""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'
Plugin 'chxuan/change-colorscheme'
Plugin 'Yggdroot/indentLine'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'wsdjeg/FlyGrep.vim'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'rkulla/pydiction'
Plugin 'Valloric/MatchTagAlways'
Plugin 'Valloric/YouCompleteMe'
Plugin 'docunext/closetag.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-endwise'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'vim-scripts/txt.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'will133/vim-dirdiff'
Plugin 'mhinz/vim-startify'
Plugin 'junegunn/vim-slash'

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

"""""""""""""""""""""""""""""""""""""""
" Color  Setting
"""""""""""""""""""""""""""""""""""""""
syntax on
let g:rehash251=1
colorscheme molokai
"""""""""""""""""""""""""""""""""""""""
" Display Setting 
"""""""""""""""""""""""""""""""""""""""
set autoindent  " auto indent
set tabstop=4 " indent distance of TAB
" ignore case and highlight while searching
set ignorecase
set hlsearch
set incsearch

"""""""""""""""""""""""""""""""""""""""
" cmd line and status line Setting
"""""""""""""""""""""""""""""""""""""""
set laststatus=2
autocmd InsertEnter * hi StatusLine guifg=#393939 guibg=Grey gui=none
set cmdheight=3 " statues lien height 
set columns=160
set lines=50
set tw=80 " textwidth 

"""""""""""""""""""""""""""""""""""""""
" Plugin  Setting
"""""""""""""""""""""""""""""""""""""""
"
"""""""""""""""""""""""""""""""""""""""
" Nerdtree Setting
"""""""""""""""""""""""""""""""""""""""
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeDirArrowExpandable='▸'
let g:NERDTreeDirArrowCollapsible='▾'
" close Nerdtree when close vim window
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
"""""""""""""""""""""""""""""""""""""""
" YCM  Setting
"""""""""""""""""""""""""""""""""""""""
"let g:ycm_path_to_python_interpreter = '/Users/double/anaconda3/bin/python3.6m'
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='>*'
let g:ycm_seed_identifiers_with_syntax=1 
let g:ycm_complete_in_comments=1 
let g:ycm_complete_in_strings=1

"""""""""""""""""""""""""""""""""""""""
" Indentline  Setting
"""""""""""""""""""""""""""""""""""""""
set expandtab
set tabstop=2
set shiftwidth=2
let g:indentLine_conceallevel=1
set conceallevel=1
let g:indentLine_char = '¦'  "can be one of ¦, ┆, │, ⎸, or ▏
let g:indentLine_enabled = 1
let g:indentLine_color_term = 200
























