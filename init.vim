source $HOME/.config/nvim/vim-plug/plugins.vim

let g:ale_java_eclipse_executable = '/path/to/eclipse.jdt.ls/server'
let g:ale_java_eclipse_options = '-Declipse.application=org.eclipse.jdt.ls.core.id1 -Dosgi.bundles.defaultStartLevel=4 -Declipse.product=org.eclipse.jdt.ls.core.product -Dlog.level=ALL -noverify -Xmx1G -jar /path/to/eclipse.jdt.ls/server/plugins/org.eclipse.equinox.launcher_1.6.300.v20210813-1054.jar -configuration /path/to/eclipse.jdt.ls/server/config_linux -data /path/to/workspace'
let g:ale_linters = {'java': ['eclipse']}


" ALE AUTO COMPLETE 
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
