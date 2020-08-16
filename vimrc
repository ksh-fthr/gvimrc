set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set nu
set columns=180
set lines=50
set noundofile
set nobackup
set noundofile
set ts=4 sw=4 tw=0 expandtab
set nowrap
set cmdheight=2
set cursorline
"set cursorcolumn
set ruler
set showcmd
set wildmenu
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("(B neocomplcache                           $B("(B 
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<TAB>"
  else
    if pumvisible()
      return "\<C-N>"
    else
      return "\<C-N>\<C-P>"
    end
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

"[$BHFMQE*$JJd40$r9T$&(B]
" $BJd40$rM-8z$K$9$k(B
let g:neocomplete#enable_at_startup = 1

" $BJd40$K;~4V$,$+$+$C$F$b%9%-%C%W$7$J$$(B
let g:neocomplete#skip_auto_completion_time = ""

"[$B9bEY$J%3!<%IJd40$r9T$&(B]
" $BHsF14|$G$O$J$/$FF14|=hM}$GJd40$9$k(B
let g:marching_backend = "sync_clang_command"

" $B%*%W%7%g%s$N@_Dj(B
" $B$3$l$O(B clang $B$N%3%^%s%I$KEO$5$l$k(B
let g:marching_clang_command_option="-std=c++1y"

" neocomplete.vim $B$HJ;MQ$7$F;HMQ$9$k>l9g(B
" neocomplete.vim $B$r;HMQ$9$l$P<+F0Jd40$K$J$k(B
let g:marching_enable_neocomplete = 1

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#force_omni_input_patterns.cpp =
    \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("(Bneosnippet                               $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("@^$j$?$?$_(B                               $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
set foldmethod=syntax
let perl_fold=1
set foldlevel=100

" $B2~9T;~$N%3%a%s%H$rL58z$K$9$k(B
autocmd FileType * setlocal formatoptions-=ro

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("%U%!%s%/%7%g%s%-!<$N3dEv$F(B               $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
" F2$B$G1&$K%U%!%$%i2hLL$rI=<($7$?$jJD$8$?$j$9$k(B
nnoremap <F2> :NERDTreeToggle<CR>
" $B%P%C%U%!0lMw$rI=<($9$k(B
noremap <F12> :BufExplorer<CR>

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("(Bvim-hybrid $B$NE,MQ(B                        $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
let g:hybrid_use_Xresources = 1

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("(Bnetrw$B$N@_Dj(B                              $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
" netrw$B$O>o$K(Btree view
let g:netrw_liststyle = 3
" CVS$B$H(B.$B$G;O$^$k%U%!%$%k$OI=<($7$J$$(B
let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
" 'v'$B$G%U%!%$%k$r3+$/$H$-$O1&B&$K3+$/!#(B($B%G%U%)%k%H$,:8B&$J$N$GF~$lBX$((B)
let g:netrw_altv = 1
" 'o'$B$G%U%!%$%k$r3+$/$H$-$O2<B&$K3+$/!#(B($B%G%U%)%k%H$,>eB&$J$N$GF~$lBX$((B)
let g:netrw_alto = 1

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("(BNERDTree $B$N@_Dj(B                          $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
""$B:G8e$K;D$C$?%&%#%s%I%&$,(BNERDTREE$B$N$_$N$H$-$O(Bvim$B$rJD$8$k(B
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeDirArrows=0
let g:NERDTreeMouseMode=0

" $B0z?t$J$7$G<B9T$7$?$H$-!"(BNERDTree$B$r<B9T$9$k(B
let file_name = expand("%:p")
if has('vim_starting') &&  file_name == ""
    autocmd VimEnter * call ExecuteNERDTree()
endif

" $B%+!<%=%k$,30$l$F$$$k$H$-$O<+F0E*$K(Bnerdtree$B$r1#$9(B
function! ExecuteNERDTree()
    "b:nerdstatus = 1 : NERDTree $BI=<(Cf(B
    "b:nerdstatus = 2 : NERDTree $BHsI=<(Cf(B

    if !exists('g:nerdstatus')
        "execute 'NERDTree ~/'
        let g:windowWidth = winwidth(winnr())
        let g:nerdtreebuf = bufnr('')
        let g:nerdstatus = 1

    elseif g:nerdstatus == 1
        execute 'wincmd t'
        execute 'vertical resize' 0
        execute 'wincmd p'
        let g:nerdstatus = 2
    elseif g:nerdstatus == 2
        execute 'wincmd t'
        execute 'vertical resize' g:windowWidth
        let g:nerdstatus = 1

    endif
endfunction
noremap <c-e> :<c-u>:call ExecuteNERDTree()<cr>

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("3g8L$N<+F0Jd40(B                           $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
" () $B$N<+F0Jd40(B
inoremap ( ()<ESC>i
inoremap <expr> ) ClosePair(')')

" {} $B$N<+F0Jd40(B
inoremap { {}<ESC>i
inoremap <expr> } ClosePair('}')

" [] $B$N<+F0Jd40(B
inoremap [ []<ESC>i
inoremap <expr> ] ClosePair(']')

" <> $B$N<+F0Jd40(B
inoremap < <><ESC>i
inoremap <expr> > ClosePair('>')

" pair close checker.
" from othree vimrc ( http://github.com/othree/rc/blob/master/osx/.vimrc )

" ClosePair$B$O5/F0;~$N$_<B9T$9$k$h$&$K$9$k(B
if has('vim_starting')
    function ClosePair(char)
        if getline('.')[col('.') - 1] == a:char
            return "\<Right>"
        else
            return a:char
        endif
    endf
endif

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("(Bminibufexpl.vim                          $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
"$B%?%V%(%G%#%?Iw$K%P%C%U%!4IM}%&%#%s%I%&$rI=<((B
:let g:miniBufExplMapWindowNavVim = 1
:let g:miniBufExplMapWindowNavArrows = 1
:let g:miniBufExplMapCTabSwitchBuffs = 1

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("%U%!%$%kJ]B8(B                             $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
"$B%U%!%$%kJ]B8;~$K%G%#%l%/%H%j$,L5$1$l$P<+F0:n@.$9$k(B
augroup vimrc-auto-mkdir  " {{{
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'))
  function! s:auto_mkdir(dir)  " {{{
    if !isdirectory(a:dir)
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction  " }}}
augroup END  " }}}

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("(Bfor Vue.js                               $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
" syntax
autocmd FileType vue syntax sync fromstart

" comment
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("(Bfor NeoBundle                            $B("(B
"$B("(Bhttps://github.com/Shougo/neobundle.vim  $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'posva/vim-vue'

" Explorer
NeoBundle 'scrooloose/nerdtree'

" like tab editor
NeoBundle 'fholgado/minibufexpl.vim'

" for neosnippet
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"$B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
"$B("(Bfor vim-plug                             $B("(B
"$B("(Bhttps://github.com/junegunn/vim-plugvim  $B("(B
"$B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" vim-list
" https://github.com/mattn/vim-lsp-settings
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'lighttiger2505/deoplete-vim-lsp'

" Initialize plugin system
call plug#end()

