{pkgs, ...}: {
  # Requires https://github.com/caarlos0/timer to be installed. spd-say should ship with your distro (Thanks Bashbunni!)
  home.packages = with pkgs; [
    # Anime/Manga
    # ani-cli # A cli tool to browse and play anime
    # mangal # A fancy CLI app written in Go which scrapes, downloads and packs manga into different formats

    # Charm-cli tools
    # pop

    # Gaming
    # gnutls
    # minecraft
    # grapejuice
    # libpulseaudio

    # Office + PDF readers
    wpsoffice # MS office alternative for linux
    zathura # PDF viewer
    okular

    # Rice
    dunst # Notifications for your system
    cmatrix
    onefetch
    xfce.thunar # Best GUI file manager

    # Screenshot + extra utils
    grim # Screenshot tool for hyprland
    slurp # Works with grim to screenshot on wayland
    ffmpeg_6 # A complete, cross-platform solution to record, convert and stream audio and video
    wl-clipboard # Enables copy/paste on wayland
    vlc

    # System Utils
    mpd
    mpv
    tree
    peek # Animated GIF screen recorder
    xclip
    unzip # Unzip files using the terminal
    nerdfix # Fix obsolete nerd font icons
    traceroute # Tool to access the X clipboard from a console application
    tree-sitter # A parser generator tool and an incremental parsing library
    appimage-run # Run appimage files in the terminal
    polkit_gnome
    timer

    texmacs
    lyx
    zoom-us
    geogebra6
    kate
    light
    
    cairo
    evince
    qutebrowser
    texliveFull
    qpdfview
    nitrogen
    xournalpp
    xfce.xfwm4-themes
    pdfarranger     
  ];
}
