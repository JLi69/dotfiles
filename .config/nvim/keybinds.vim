" Leader
let mapleader=" "

" Remap window switching keys to something more convenient
nnoremap <A-H> <C-W>h
nnoremap <A-J> <C-W>j
nnoremap <A-K> <C-W>k
nnoremap <A-L> <C-W>l

tnoremap <A-H> <C-\><C-N><C-w>h
tnoremap <A-J> <C-\><C-N><C-w>j
tnoremap <A-K> <C-\><C-N><C-w>k
tnoremap <A-L> <C-\><C-N><C-w>l

" Compile C program
nnoremap <A-c> :term cc %:t:r.c -o %:t:r && ./%:t:r<CR>
" Compile C++ program
nnoremap <A-+> :term c++ %:t:r.cpp -o %:t:r && ./%:t:r<CR>
" Compile Rust program
nnoremap <A-r> :term rustc %:t:r.rs -o %:t:r && ./%:t:r<CR>
" Run python script
nnoremap <A-p> :term python3 %:t:r.py<CR>

" Remap resizing to something more convenient
nnoremap <C-h> :vertical resize -2<CR>
nnoremap <C-l> :vertical resize +2<CR>
nmap <C-A-J> :res +1<CR>
nmap <C-A-K> :res -1<CR>

tnoremap <A-H> <C-\><C-N><C-w>h
tnoremap <A-J> <C-\><C-N><C-w>j
tnoremap <A-K> <C-\><C-N><C-w>k
tnoremap <A-L> <C-\><C-N><C-w>l

" Open terminal
map <C-X> :split<CR>:terminal<CR>

map <C-T> :tabnew<CR>
map <A-w> :bd<CR>
map <C-A> :bprev<CR>
map <C-D> :bnext<CR>
" CTRL + S to save file
map <C-S> :w<CR>

" CoC config

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
