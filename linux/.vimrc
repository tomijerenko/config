" General config
syntax enable
filetype plugin indent on
set incsearch
set ignorecase
set smartcase
set number 
noremap <Space> <NOP>
let mapleader = "\<Space>"

" Ctrl-PgUp and Ctrl-PgDn switch buffer
noremap <ESC>[5;5~ :bn<CR>
noremap <ESC>[6;5~ :bp<CR>

" Remap arrow keys
noremap <ESC>[1;5A 5k
noremap <ESC>[1;5B 5j
noremap <ESC>[1;5D b
noremap <ESC>[1;5C e
inoremap <ESC>[1;5A <C-o>5k
inoremap <ESC>[1;5B <C-o>5j
inoremap <ESC>[1;5D <C-o>b
inoremap <ESC>[1;5C <C-o>e

" Cmd-D for forward delete in insert mode
inoremap <ESC>D <C-o>dw

" Copy/paste to/from system clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p
noremap <Leader>w :w<CR>

" disable syntax when using vimdiff
if &diff
  hi DiffAdd     ctermbg=236
  hi DiffDelete  ctermbg=236 ctermfg=231
  hi DiffChange  ctermbg=236
  hi DiffText    ctermbg=244
endif

" Download and install plugins
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'dense-analysis/ale'
Plug 'codercooke/vim-chatgpt'
call plug#end()

" Plugin Configurations
" FZF
nnoremap <C-P> :FZF<CR>

" Chatgpt config
let g:chat_gpt_max_tokens=2000
let g:chat_gpt_model='gpt-4'
let g:chat_gpt_session_mode=0
let g:chat_gpt_temperature = 0.7
let g:chat_gpt_split_direction = 'vertical'
