call plug#begin('~/.local/share/nvim/plugged')


" NERD Commenter
Plug 'scrooloose/nerdcommenter'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" Vim-JavaScript
Plug 'pangloss/vim-javascript'

" Syntax highlighting JSDoc
let g:javascript_plugin_jsdoc = 1

" Syntax highlighting for NGDocs
let g:javascript_plugin_ngdoc = 1


" Vim-JSX
Plug 'mxw/vim-jsx'


" TypeScript-Vim
Plug 'leafgarland/typescript-vim'

" vim-github-dashboard
Plug 'junegunn/vim-github-dashboard'
let g:github_dashboard = { 'username': 'r3b311i0n', 'password': 'secret' }

call plug#end()
