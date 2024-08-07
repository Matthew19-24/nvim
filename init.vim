source $HOME/.config/nvim/vim-plug/plugins.vim


let NERDTreeShowHidden=1
" ---------------- ALE Configurations ----------------
let g:ale_linters = {
    \ 'go': ['gopls'],
    \ }

let g:ale_fixers = {
    \ 'go': ['gopls'],
    \ }


" ALE AUTO COMPLETE 
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
