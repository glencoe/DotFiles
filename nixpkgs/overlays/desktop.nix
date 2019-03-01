let unstable = import <unstable> {overlays = [];}; in
self: super: {
  desktop = self.buildEnv {
    name = "desktop";
    paths = with self.pkgs; [
      unstable.kakoune
      unstable.alacritty
      tdesktop
];
};
} 
