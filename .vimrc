set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

set hidden
set autoindent
set cindent
execute pathogen#infect()
syntax enable 
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>
nmap <Esc>[5D :bp<CR>
nmap <Esc>Od  :bp<CR>
nmap <Esc>OD  :bp<CR>
nmap <Esc>[5C :bn<CR>
nmap <Esc>Oc  :bn<CR>
nmap <Esc>OC  :bn<CR>
nmap <Esc>[3~ :bd<CR>
nmap ZZ :bd<CR>
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
nnoremap   <Up>     <NOP>
nnoremap   <Down>   <NOP>
nnoremap   <Left>   <NOP>
nnoremap   <Right>  <NOP>
map <C-o> :NERDTreeToggle %<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set number

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
