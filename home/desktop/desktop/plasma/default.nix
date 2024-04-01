{
    pkgs,
    ...
}:
{
    home.packages = with pkgs; [
        kdePackages.plasma-desktop
    ]
}