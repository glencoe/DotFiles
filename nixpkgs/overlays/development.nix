let unstable = import <unstable> {overlays = [];}; in
self: super: {
	developmentEnv = self.buildEnv {
		name = "developmentEnv";
		paths = with self.pkgs; [
			unstable.bazel
			nodejs
			unstable.spaceship-prompt
		];
	};
} 
