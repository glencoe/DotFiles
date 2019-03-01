{
  firefox.enableGnomeExtesions = true;
  allowUnfree = true;
  packageOverrides = pkgs: with pkgs; {
    pythonEnv = python36.withPackages (ps: with ps; [setuptools numpy matplotlib]);
    };
}
