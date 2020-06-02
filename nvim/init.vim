call plug#begin()
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'aurieh/discord.nvim'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

syntax enable

" Snippets
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'my_snippets']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Latex file type as default for plaintex
let g:tex_flavor = "latex"

set number relativenumber
set mouse=a
set listchars=tab:\|\ \,trail:~,extends:>,precedes:<
set list

" Turn off relative line numbers display
set nornu

let g:vimtex_view_method = 'zathura'
let g:livepreview_previewer = 'zathura'

" Set tab sizes
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" Set color schemes
colorscheme gruvbox
let g:airline_theme="tomorrow"

autocmd vimenter * NERDTree

nnoremap <C-p> :Files<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :LspDocumentDiagnostics<CR>
nnoremap <F2> :LLPStartPreview<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

highlight link LspErrorText GruvboxRedSign

" vim-go configuration
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

au filetype go inoremap <buffer> . .<C-x><C-o>
au FileType go nmap <F9> :GoCoverageToggle -short<cr>
