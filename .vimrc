" Colors {{{
    colorscheme badwolf
    syntax enable
" }}}
" Space & Tabs {{{
    set tabstop=4
    set softtabstop=4
    set expandtab
" }}}
" UI Config {{{
    set number
    set showcmd
    set cursorline
    filetype indent on
    set wildmenu
    set lazyredraw
    set showmatch
    set modeline
    set modelines=1
" }}}
" Searching {{{
    set incsearch
    set hlsearch
    nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
    set foldenable
    set foldlevelstart=10
    set foldnestmax=10
    nnoremap z za
    set foldmethod=indent
" }}}
" Movement {{{
    nnoremap j gj
    nnoremap k gk
    nnoremap B ^
    nnoremap E $
    nnoremap $ <nop>
    nnoremap ^ <nop>
    nnoremap gV `[v`]
    nnoremap rt :tabr<CR>
    nnoremap lt :tabl<CR>
    nnoremap pt :tabp<CR>
    nnoremap nt :tabn<CR>
" }}}
" Leader Shortcuts {{{
    let mapleader=","
    inoremap jk <esc>
    nnoremap <leader>u :GundoToggle<CR>
    nnoremap <leader>s :mksession<CR>
" }}}
" Autogroups {{{
augroup configgroup
	autocmd!
	autocmd VimEnter * highlight clear SignColumn
	autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md \:call <SID>StripTrailingWhitespaces()
	autocmd FileType java setlocal noexpandtab
	autocmd FileType java setlocal list
	autocmd FileType java setlocal listchars=tab:+\ ,eol:-
	autocmd FileType java setlocal formatprg=par\ -w80\ -T4
	autocmd FileType php setlocal expandtab
	autocmd FileType php setlocal list
	autocmd FileType php setlocal listchars=tab:+\ ,eol:-
	autocmd FileType php setlocal formatprg=par\ -w80\ -T4
	autocmd FileType python setlocal commentstring=#\ %s
	autocmd BufEnter Makefile setlocal noexpandtab
	autocmd BufEnter *.sh setlocal tabstop=2
	autocmd BufEnter *.sh setlocal shiftwidth=2
	autocmd BufEnter *.sh setlocal softtabstop=2
augroup END
" }}}
" Custom Functions {{{
function! <SID>StripTrailingWhitespaces()
	let _s=@/
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	let @/=_s
	call cursor(l,c)
endfunction
" }}}

" vim:foldmethod=marker:foldlevel=0
