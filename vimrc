# Configure indentation settings.
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set smartindent

# Wrap cursor at end of line.
set whichwrap+=<,>,h,l,[,]

# Press F5 to run Python file in new tab.
noremap <F5> :w<CR>:tab term python3 %<CR>

# Configure python stuff.
augroup Py
    au!

    au BufWritePre *.py execute ':Black'
    
    # Disable jedi preview.
    autocmd FileType python setlocal completeopt-=preview
augroup END

# Add jedi auto completion
packadd jedi-vim
