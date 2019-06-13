let
	unstable = import <unstable> {overlays = [];}; 
in
self: super: {
	developmentEnv = self.buildEnv {
		name = "developmentEnv";
		paths = with self.pkgs; [
                        unstable.buildifier
			nodejs
			unstable.spaceship-prompt
			cquery
			unstable.rustc
			unstable.cargo
			doxygen
			texlive.combined.scheme-medium
		];
	};
#	avrgcc-wrapper = self.pkgs.stdenv.mkDerivation rec {
#	  name = "avrgcc-wrapper-${version}";
#	  version = self.pkgs.stdenv.lib.strings.getVersion self.pkgs.avrgcc.name;
#	  nativeBuildInputs = [ self.pkgs.makeWrapper ];
#	  buildCommand = ''
#	    mkdir -p $out/bin
#	    for exe in gcc g++; do
#	      makeWrapper "${self.pkgs.avrgcc}/bin/avr-$exe" "$out/bin/avr-$exe" --add-flags "-B${self.pkgs.avrlibc}/avr/lib -isystem ${self.pkgs.avrlibc}/avr/include"
#	    done
#	    ln -s ${self.pkgs.avrgcc}/lib $out
#	  '';
#};
} 
