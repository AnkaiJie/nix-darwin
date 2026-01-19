{ ... }: {
  programs.vim = {
    enable = true;
    defaultEditor = true;

    settings = {
      # Line numbers
      number = true;

      # Indentation
      expandtab = true;
      tabstop = 2;
      shiftwidth = 2;

      # Search
      ignorecase = true;
      smartcase = true;

      # Visual
      background = "dark";
    };

    extraConfig = ''
      " Syntax and colors
      syntax on
      colorscheme desert
      set hlsearch

      " Show matching brackets
      set showmatch
      set matchtime=2

      " Auto-indent
      set autoindent
      set smartindent

      " Backspace behavior (allow backspace over everything)
      set backspace=indent,eol,start

      " Cursor line highlight
      set cursorline

      " Show whitespace
      set list
      set listchars=tab:>-,trail:~,extends:>,precedes:<

      " Status line
      set laststatus=2
      set ruler
      set showcmd

      " Better defaults
      set mouse=a
      set clipboard=unnamed
      set noswapfile
      set incsearch
      set scrolloff=8
      set signcolumn=yes
      set updatetime=300
    '';
  };
}
