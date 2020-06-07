call plug#begin()
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'hugolgst/vimsence'
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
set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Set color schemes
colorscheme gruvbox
let g:airline_theme="tomorrow"

" Inkscape
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

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

au FileType go nmap <F9> :GoCoverageToggle -short<cr>

let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Project: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'

au BufRead,BufNewFile *.ex,*.exs set filetype=elixir

" Auto completing quotes etc..
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
