source $HOME/.config/nvim/vim-plug/plugins.vim



" ---------------- ALE Configurations ----------------
let g:ale_linters = {
    \ 'go': ['gopls'],
    \ }

let g:ale_fixers = {
    \ 'go': ['gopls'],
    \ }


" ---------------- AUTO COMPLETE FEATURES -------------
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


