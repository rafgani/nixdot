{pkgs, ...}: {
#   home.packages = with pkgs; [
#     vscode
#     gnome.gnome-keyring
#
#   ];
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      dracula-theme.theme-dracula
      vscodevim.vim
      yzhang.markdown-all-in-one
      james-yu.latex-workshop
      github.vscode-pull-request-github
    ];
  };
}
