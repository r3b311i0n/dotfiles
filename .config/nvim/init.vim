call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'reasonml-editor/vim-reason-plus'
" Plug 'scrooloose/syntastic'
Plug 'junegunn/vim-github-dashboard'
Plug 'scrooloose/nerdtree'
" Plug 'dracula/vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'ap/vim-css-color'
" Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'sbdchd/neoformat'

" deoplete stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fszymanski/deoplete-emoji'
Plug 'Shougo/neopairs.vim'
Plug 'racer-rust/vim-racer'
Plug 'wokalski/autocomplete-flow'
Plug 'fishbullet/deoplete-ruby'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'zchee/deoplete-jedi'
Plug 'mhartington/nvim-typescript'
Plug 'HerringtonDarkholme/yats.vim'
" ternjs
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

call plug#end()


" NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Vim-JavaScript
" Syntax highlighting JSDoc
let g:javascript_plugin_jsdoc = 1
" Syntax highlighting for NGDocs
let g:javascript_plugin_ngdoc = 1


" deoplete
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
" deoplete ternjs
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue'
                \ ]


" " syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers = ['pylint']
" let g:syntastic_scss_checkers = ['sassc']
" let g:syntastic_sass_checkers = ['sassc']
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_ruby_checkers = ['rubocop']

" supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" vim-github-dashboard
let g:github_dashboard = { 'username': 'r3b311i0n', 'password': '2ff40fb3abed9c6bd0b52b0af9041671a68445dd' }

" The NERD tree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'

" ale
let g:airline#extensions#ale#enabled = 1

" molokai theme original bg colour
let g:molokai_original = 0

" " gruvbox
" let g:gruvbox_italic=1
" set background=dark

syntax on
set ignorecase
set smartcase
set incsearch
set hlsearch
set termguicolors
set hidden
color molokai

