set smartcase

" use system clipoard
set clipboard=unnamedplus

set expandtab
set softtabstop=2
set shiftwidth=2

set nohlsearch

if exists('g:vscode')
  " VSCode extension
else
  set number

  nmap <C-,> :e ~/.config/nvim/init.vim

  call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'rakr/vim-one'
  Plug 'Yggdroot/indentLine'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'airblade/vim-gitgutter'
  call plug#end()

  let g:airline_theme='one'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 2
  let g:ctrlp_custom_ignore='node_modules'
  let g:coc_global_extensions = [
        \ 'coc-snippets',
        \ 'coc-pairs',
        \ 'coc-tsserver',
        \ 'coc-prettier',
        \ 'coc-json',
  \ ]

  nmap <C-n> :NERDTreeToggle<CR>

  nmap <silent> gd <Plug>(coc-definition)

  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  if (has("termguicolors"))
    set termguicolors
  endif

  syntax on
  colorscheme one

  set updatetime=100
endif
