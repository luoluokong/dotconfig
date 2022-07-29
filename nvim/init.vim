"
"
" ROOT 
"
"===========> basic
syntax on
let mapleader=" "
filetype plugin indent on
set history=500
set wildmenu
set autoindent
set autochdir
set notimeout

" =========> editor behavior
set mouse=a "unavaible in ssh
set number
set relativenumber
set cursorline
set list
set scrolloff=5
" set listchars=tab:\|\,trail:

" ========> tab
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"==========> search
set ignorecase
set smartcase
set incsearch
map <leader><CR> :nohls<CR>

""""
"""" Keys Mapping
""""

" =========> windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" =========> move
nnoremap J 5j
nnoremap K 5k
nnoremap H 0
nnoremap L $

" =========> esc
inoremap jk <ESC>
vnoremap jk <ESC>


" =========> fast command
map ; :
map s <nop>
map S <nop>
map R :source ~/.config/nvim/init.vim<CR>
map <leader>e :e! ~/.config/nvim/init.vim<CR>
map <C-s> :w<CR>

" ========> tabs
map <leader>tb :tabnew<CR>
map <leader>n :tabnext<CR>

" =========> latex
map <leader>ll \ll

""""
"""" Plugins
""""
call plug#begin()

Plug 'connorholyday/vim-snazzy'
Plug 'dracula/vim'

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-surround'

Plug 'gcmt/wildfire.vim'

Plug 'preservim/nerdtree'

Plug 'ryanoasis/vim-devicons'

Plug 'pacha/vem-tabline'

Plug 'lervag/vimtex'

Plug 'SirVer/ultisnips'

Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

""""
"""" Settings for plugins
""""
nnoremap ff :NERDTreeToggle<CR>

" vem-tabline
let g:vem_tabline_show=2
map <C-x> :bwipeout<CR>

" when have markdonw plugins
" source ~/.config/scripts/nvim/markdown.vim
"


" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let g:UltiSnipsSnippetDirectories=['~/.local/share/nvim/snippets']


" Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


inoremap <silent><expr> <TAB>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ?
  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


""""
"""" Exec
""""
" colorscheme dracula
colorscheme snazzy
exec "nohls"
