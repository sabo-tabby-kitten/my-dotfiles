:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()
 
Plug 'https://github.com/vim-airline/vim-airline' "statusbar
" Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'liuchengxu/space-vim-dark' "nvim theme
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'neoclide/coc.nvim', {'branch': 'release'} "audocomplete
Plug 'https://github.com/nikolvs/vim-sunbather' "pink color	
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'https://github.com/lewis6991/gitsigns.nvim' 
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/max397574/startup.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

let mapleader = " "
nnoremap ; :
nnoremap <leader>w :w<CR>  " Save with <Space>w

" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>



" theme background
:colorscheme sunbather



nmap <leader>p :TagbarToggle<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


"----languges for autocomplete-----
"run the folowing cmands for instaling the languges
":CocInstall coc-jedi						<-python
":CocInstall coc-clangd
":CocInstall coc-sh				<-bash
":CocInstall coc-sumneko-lua
":CocInstall coc-json
":CocInstall coc-html
":CocInstall coc-css
":CocInstall coc-rust-analyzer

"bar theme

let g:airline_theme='bubblegum'


" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_section_error = ''
let g:airline_section_warning = ''

"telescope
nnoremap <leader>t <cmd>Telescope find_files<CR>
