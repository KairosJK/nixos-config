{pkgs, lib, ...}: {
 
  home.packages = with pkgs; [
    rnix-lsp nixfmt
    sumneko-lua-language-server stylua
  ];
  programs = {
    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
      extraConfig = ''
        luafile $HOME/nixos-config/modules/editors/neovim/config/settings.lua
        luafile $HOME/nixos-config/modules/editors/neovim/config/language_server_conf.lua
        '';
      plugins = with pkgs.vimPlugins; [
        
        # Misc
        vim-nix
        plenary-nvim
        vimsence
 
        # Language Server Tools
        nvim-lspconfig
        nvim-compe

        {
	      plugin = gruvbox;
	      config = "colorscheme gruvbox";
	    }
	    {
          plugin = impatient-nvim;
          config = "lua require('impatient')";
        }
        {
          plugin = lualine-nvim;
          config = "lua require('lualine').setup()";
        }
        {
          plugin = telescope-nvim;
          config = "lua require('telescope').setup()";
        }
        {
          plugin = indent-blankline-nvim;
          config = "lua require('indent_blankline').setup()";
        }
        {
          plugin = nvim-treesitter;
          config = ''
          lua << EOF
          require('nvim-treesitter.configs').setup {
            highlight = {
              enable = true,
              additional_vim_regex_highlighting = false,
            },
          }
          EOF
          '';
        }
      ];
    };
  };
}
