{inputs, ...}: {
  home = {
    username = "rafgani";
    homeDirectory = "/home/rafgani";
    stateVersion = "22.11";
  };

  # Let Home Manager install and manage itself.
  programs = {
    home-manager.enable = true;
  };

  # Imports
  imports = [
    ./apps
    ./cli-apps
    ./desktop
    ./hardware
    ./rice
    # ./services
    # ./suites
    ./system
    # ./themes
    ./tools
    ./user
    ./virtualization
  ];

  # Allow unfree packages + use overlays
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
    overlays = with inputs; [
      # neovim-nightly-overlay.overlay
      (
        final: prev: {
          sf-mono-liga-bin = prev.stdenvNoCC.mkDerivation {
            pname = "sf-mono-liga-bin";
            version = "dev";
            src = sf-mono-liga-src;
            dontConfigure = true;
            installPhase = ''
              mkdir -p $out/share/fonts/opentype
              cp -R $src/*.otf $out/share/fonts/opentype/
            '';
          };

          monolisa-script = prev.stdenvNoCC.mkDerivation {
            pname = "monolisa";
            version = "dev";
            src = monolisa-script;
            dontConfigure = true;
            installPhase = ''
              mkdir -p $out/share/fonts/opentype
              cp -R $src/*.ttf $out/share/fonts/opentype/
            '';
          };
        }
      )
    ];
  };

  fonts.fontconfig.enable = true;

  # Add support for .local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}
