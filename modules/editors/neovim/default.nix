{pkgs, lib, ...}: {
  programs = {
    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
      extraConfig = ''
        luafile $HOME/nixos-config/modules/editors/neovim/config/settings.lua
      '';
      plugins = with pkgs.vimPlugins; [
	    vim-nix
        plenary-nvim
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
