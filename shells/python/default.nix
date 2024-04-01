{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
#   buildInputs = [
    # chord

    # Defines a python + set of packages.
#     (python3.withPackages (ps: with ps; with python3Packages; [
#       jupyter
#       ipython
#
#       # Uncomment the following lines to make them available in the shell.
#       # pandas
#       # numpy
#       # matplotlib
#     ]))
#   ];

  # Automatically run jupyter when entering the shell.

  buildInputs = with pkgs.python311Packages; [
    pip
    pypresence
    jupyterlab
    ipython
    manimpango
  ]

  ++

  (
  with pkgs;[
    manim
    texliveFull
    cairo
    ffmpeg
  ]
  );


#   shellHook = ''
#     echo "Environment is ready" | ${pkgs.lolcat}/bin/lolcat;
#   '';
  shellHook = "jupyter-lab";
}
