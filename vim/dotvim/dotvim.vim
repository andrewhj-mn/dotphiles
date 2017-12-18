if has("user_commands")
  let PathogenInstalled=0
  let pathogen_file=expand('~/.vim/autoload/pathogen.vim')
  if !filereadable(pathogen_file)
    echo "Installing Pathogen..."
    echo ""
    silent !mkdir -p ~/.vim/autoload ~/.vim/bundle
    silent !curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    let PathgenInstalled=1
  endif
endif

