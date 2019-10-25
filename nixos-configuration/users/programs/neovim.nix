{ pkgs, ... }:

let 
  customPlugins.deoplete-ocaml = pkgs.vimUtils.buildVimPlugin {
    name = "deoplete-ocaml";
    src = pkgs.fetchFromGitHub {
      owner = "copy";
      repo = "deoplete-ocaml";
      rev = "d7e17ac3ea17c2da0d3b265d33ef83f347db5a1a";
      sha256 = "0wzrffw73ps5041fzprkr0ka4609ni31brij9s6mdrlk11n8yjli";
    };
  };
in

{
  home.packages = with pkgs; [
    cmake
  ];

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    plugins = [ 
      pkgs.vimPlugins.lightline-vim 
      pkgs.vimPlugins.nerdtree
      pkgs.vimPlugins.gitgutter
      pkgs.vimPlugins.auto-pairs
      pkgs.vimPlugins.fzf-vim

      pkgs.vimPlugins.deoplete-nvim
      pkgs.vimPlugins.deoplete-clang
      customPlugins.deoplete-ocaml
      pkgs.vimPlugins.deoplete-rust
      pkgs.vimPlugins.neoinclude
      pkgs.vimPlugins.neomake
    ];

    extraConfig = ''
      set noshowmode
      set number relativenumber
      set expandtab
      set cursorline
      
      " lightline-vim
      "
      let g:lightline = {
        \ 'colorscheme':'wombat',
        \ }
      
      " nerdtree
      "
      map <C-n> :NERDTreeToggle<CR>
      let g:NERDTreeDirArrowExpandable = '▸'
      let g:NERDTreeDirArrowCollapsible = '▾'
      
      " deoplete-nvim
      "
      let g:deoplete#enable_at_startup = 1
      let g:deoplete#complete_method = "complete"
      let g:deoplete#ignore_sources = {}
      let g:deoplete#auto_complete_delay = 0

      " deoplete-ocaml
      "
      let g:deoplete#ignore_sources.ocaml = [ 'buffer', 'around', 'member', 'tag' ]

      " deoplete-rust
      "
      let g:deoplete#source#rust#show_duplicates = 1
      let g:deoplete#source#rust#disable_keymap = 1
      let g:deoplete#source#rust#documentation_max_height = 20
      
      nmap <buffer> gd <plug>DeopleteRustGoToDefinitionDefault
      nmap <buffer> K  <plug>DeopleteRustShowDocumentation

      " neoinclude
      "

      " neomake
      "
      function! MyOnBattery()
        if has('macunix')
          return match(system('pmset -g batt'), "Now drawing from 'Battery Power'") != 1
        elsif has('unix')
          return readfile('/sys/class/power_supply/AC/online') == ['0']
        endif
        return 0
      endfunction

      if MyOnBattery()
        call neomake#configure#automake('w')
      else
        call neomake#configure#automake('nw', 1000)
      endif

      let g:neomake_open_list = 2
   '';
  };
}
