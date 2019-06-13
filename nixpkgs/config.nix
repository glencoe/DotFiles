{
  firefox.enableGnomeExtesions = true;
  allowUnfree = true;
  packageOverrides = pkgs: with pkgs; {
    pythonEnv = python37.withPackages (ps: with ps; [setuptools pydbus dbus-python numpy matplotlib pip pygobject3 scipy breathe sphinx_rtd_theme doc8]);
    };
}
