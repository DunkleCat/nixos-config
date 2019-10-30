{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ghc
    cabal2nix
  ];

  programs.neovim = {
    
    plugins = with pkgs.vimPlugins; [
      haskell-vim
      stylish-haskell
      intero-neovim
    ];

    extraConfig = ''
      " haskell-vim
      "
      let g:haskell_enable_quantification = 1   " to enable highlight of `forall`
      let g:haskell_enable_recursivedo = 1      " to enable highlight of `mdo` and `rec`
      let g:haskell_enable_arrowsyntax = 1      " to enable highlight of `proc`
      let g:haskell_enable_pattern_synonyms = 1 " to enable highlight of `pattern`
      let g:haskell_enable_typeroles = 1        " to enable highlight of type roles
      let g:haskell_enable_static_pointers = 1  " to enable highlight of `static`
      let g:haskell_backpack = 1                " to enable highlight of backpack keywords

      let g:haskell_indent_if = 3
      let g:haskell_indent_case = 2
      let g:haskell_indent_let = 4
      let g:haskell_indent_where = 6
      let g:haskell_indent_before_where = 2
      let g:haskell_indent_after_bare_where = 2
      let g:haskell_indent_do = 3
      let g:haskell_indent_in = 1
      let g:haskell_indent_case_alternative = 1
      let g:cabal_indent_section = 2

      " stylish-haskell
      "

      " intero-neovim
      "
      augroup interoMaps
        au!
        " Maps for intero. Restrict to Haskell buffers so the bindings don't collide.
        "

        " Background process and window management
        au FileType haskell nnoremap <silent> <leader>is :InteroStart<CR>
        au FileType haskell nnoremap <silent> <leader>ik :InteroKill<CR>

        " Open intero/GHCi split horizontally
        au FileType haskell nnoremap <silent> <leader>io :InteroOpen<CR>
        " Open intero/GHCi split vertically
        au FileType haskell nnoremap <silent> <leader>iov :InteroOpen<CR><C-W>H
        au FileType haskell nnoremap <silent> <leader>ih :InteroHide<CR>

        " Reloading (pick one)
        " Automatically reload on save
        au BufWritePost *.hs InteroReload
        " Manually save and reload
        au FileType haskell nnoremap <silent> <leader>wr :w \| :InteroReload<CR>

        " Load individual modules
        au FileType haskell nnoremap <silent> <leader>il :InteroLoadCurrentModule<CR>
        au FileType haskell nnoremap <silent> <leader>if :InteroLoadCurrentFile<CR>

        " Type-related information
        " Heads up! These next two differ from the rest.
        au FileType haskell map <silent> <leader>t <Plug>InteroGenericType
        au FileType haskell map <silent> <leader>T <Plug>InteroType
        au FileType haskell nnoremap <silent> <leader>it :InteroTypeInsert<CR>

        " Navigation
        au FileType haskell nnoremap <silent> <leader>jd :InteroGoToDef<CR>

        " Managing targets
        " Prompts you to enter targets (no silent):
        au FileType haskell nnoremap <leader>ist :InteroSetTargets<SPACE>
      augroup END

      " Intero starts automatically. Set this if you'd like to prevent that.
      let g:intero_start_immediately = 0

      " Enable type information on hover (when holding cursor at point for ~1 second).
      let g:intero_type_on_hover = 1

      " Change the intero window size; default is 10.
      let g:intero_window_size = 15

      " Sets the intero window to split vertically; default is horizontal.
      let g:intero_vertical_split = 1

      " OPTIONAL: Make the update time shorter, so the type info will trigger faster.
      set updatetime=1000
      '';
  };
}
