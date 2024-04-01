{pkgs, ...}: {
  home.packages = with pkgs; [
        texmacs
        lyx
  ];
}