if has("user_commands")
  let PathogenInstalled=0
  let pathogen_file=expand('~/.vim/autoload/pathogen.vim')
  if !filereadable(pathogen_file)
    echo "Installing Pathogen..."
    echo ""
    silent !mkdir -p ~/.vim/autoload ~/.vim/bundle
    silent !curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    echo "Adding plugins"
    let airline_installed=0
    if !filereadable('~/.vim/bundle/vim-airline')
      echo "vim-airline"
      silent !git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
      let airline_installed=1
    endif
    let colors_solarized=0
    if !filereadable('~/.vim/bundle/vim-colors-solarized')
      echo "vim-colors-solarized"
      silent !git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
      let colors_solarized=1
    endif
    " might want to add the other plugins that have been added
    " current list: 
    " * alchemist.vim
    " * asyncrun.vim
    " * editorconfig-vim
    " * neomake
    " * prettier
    " * vim-airline
    " * vim-colors-solarized
    " * vim-polyglot
    " * vim-vue
    " * ale
    " * deoplete.nvim
    " * emmet-vim
    " * nerdtree
    " * rust.vim
    " * vim-airline-themes
    " * vim-gitgutter
    " * vim-surround

    echo ""
    let PathgenInstalled=1
  endif
endif

