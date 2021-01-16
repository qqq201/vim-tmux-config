syntax on
filetype on
set backspace=indent,eol,start
set number
set relativenumber
set splitbelow splitright
set autoindent
set cindent

"set swap file directory
set directory^=$HOME/.vim/tmp//
set clipboard=unnamed
let mapleader = ","
nmap <leader>so :source $HOME\_vimrc<CR>

let g:C_UseTool_cmake    = 'yes'
let g:C_UseTool_doxygen  = 'yes'
let g:gruvbox_termcolors = 16
"highlight current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

"set buffer bar
nnoremap <C-V> :bnext<CR>
nnoremap <C-P> :bprev<CR>

"airline conf
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

"resize NERDTree
let g:NERDTreeWinSize=23
set encoding=UTF-8
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=DejaVuSansMono_NF:h11
    set linespace=4
    set guioptions-=m  "menu bar
    set guioptions-=T  "toolbar
    set guioptions-=r  "scrollbar
    set guioptions-=L  "remove left-hand scroll bar
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
  endif
endif
"press <F9> to compile python
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!py' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!py' shellescape(@%, 1)<CR>

"press <F8> to compile 2 c++ files
map <F8> :w <CR> :!g++ -std=c++11 % util.cpp -o %< && %< <CR>
"press <F7> to compile 1 file
map <F7> :w <CR> :!g++ -std=c++11 % -o %< && %< <CR>
"press <F5> to debug single file
map <F2> :w <CR> :!g++ -g -std=c++11 % -o %<<CR>
"press <F6> to debug multiple files
map <F6> :w <CR> :!g++ -g -std=c++11 % util.cpp -o %<<CR>
"change the split move
nnoremap <C-h> <C-w>h
let g:C_Ctrl_j = 'off'
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.git', 'node_modules', 'venv']
"auto-open NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"lua autocomplete
"let g:lua_define_completefunc = 1
"let g:lua_complete_omni = 1

inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "<C-k>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "<C-j>"

"spliting border
set fillchars+=vert:\ 
highlight VertSplit guibg=Black guibg=Gray

"airline theme
let g:airline_theme='violet'

"nerdtree icon double space
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" nerdtree arrows
let NERDTreeDirArrowExpandable = "\u2bc8"
let NERDTreeDirArrowCollapsible = "\u2bc6"

"nerdtree toggle 
nmap <C-t> :NERDTreeToggle<CR>

"nerdtree git status
let g:NERDTreeGitStatusWithFlags = 1
"nerdtree background
"function! s:DimInactiveWindows()
  "for i in range(1, tabpagewinnr(tabpagenr(), '$'))
    "let l:range = ""
    "if i != winnr()
      "if &wrap
        "let l:width=256 " max
      "else
        "let l:width=winwidth(i)
      "endif
      "let l:range = join(range(1, l:width), ',')
    "endif
    "call setwinvar(i, '&colorcolumn', l:range)
  "endfor
"endfunction
"augroup DimInactiveWindows
  "au!
  "au WinEnter * call s:DimInactiveWindows()
  "au WinLeave * hi ColorColumn guibg=#242526
"augroup END
"press // to comment
nmap // <plug>NERDCommenterToggle

call plug#begin('~/.vim/plugged')
"lightline icon
"let g:lightline = {
      "\ 'component_function': {
      "\   'filetype': 'MyFiletype',
      "\   'fileformat': 'MyFileformat',
      "\ }
      "\ }

"function! MyFiletype()
  "return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
"endfunction

"function! MyFileformat()
  "return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
"endfunction

"nerdtree file name syntax hightlighting
"let g:NERDTreeFileExtensionHighlightFullName = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_member_variable_highlight = 1
"let g:cpp_experimental_template_highlight = 1
let g:load_doxygen_syntax=1

"rainbow brackets
let g:rainbow_active = 1
"fix conflict vimdevicon with rainbow brackets
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ [ 'nerdtree', [] ],
    \]
"vimspector
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimpectorEval
nmap <leader>dw :VimpectorWatch
nmap <leader>do :VimspectorShowOutput
nmap <leader>db :call vimspector#ToggleBreakpoint()<CR>
nmap <leader>dc :call vimspector#ClearBreakpoints()<CR>
"syntastic
"set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"disable error detecting
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
"press Ctrl e to detect error
nnoremap <C-e> :SyntasticCheck<CR>

"set tap width
set tabstop=4
set shiftwidth=4

"tab indent line
set listchars=tab:\▏\ 
set list

"Ctags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"folding
set foldmethod=indent
set nofoldenable
"za-zc close fold, zo open a fold, zR open all folds
call plug#begin()
" color scheme
Plug 'sainnhe/edge'
"Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree' "{ 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"lightline
"Plug 'itchyny/lightline.vim'
"nerdtree git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" vim icon
Plug 'ryanoasis/vim-devicons'
"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"multiple cursors
Plug 'terryma/vim-multiple-cursors'

"autocomplete
Plug 'vim-scripts/AutoComplPop'

"lua autocomplete
Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'
"Plug 'lifepillar/vim-mucomplete'
"Plug 'cdelledonne/vim-cmake'
"C++ syntax
Plug 'octol/vim-cpp-enhanced-highlight'
"vimspector
Plug 'puremourning/vimspector'
"rainbow brackets
Plug 'frazrepo/vim-rainbow'
"Plug 'luochen1990/rainbow'
"commenter
Plug 'preservim/nerdcommenter'
"signify
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
call plug#end()

"set background=light
colorscheme edge 
"change numberline guibg=#dbd19e
highlight LineNr guifg=#4a4d55 guibg=#30323a
set nuw=5
