set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
call plug#begin()
Plug 'tyru/open-browser.vim' " opens url in browser
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
Plug 'christoomey/vim-tmux-navigator'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
call plug#end()
set nuw=6
syntax enable
filetype plugin indent on
nmap <F6> :NERDTreeToggle<CR>
imap jj <Esc>
imap hh <End>
nnoremap <silent> K :call <SID>show_documentation()<CR>
highlight LineNr ctermfg=grey ctermbg=white
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
            else 
                call CocAction('doHover')
            endif 
                endfunction
