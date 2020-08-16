# Fish Shell Configuration
#
pkgs:

{
	enable = true;

	plugins = [
	{
		name = "nix-env";
		src = pkgs.fetchFromGitHub {
			owner = "lilyball";
			repo = "nix-env.fish";
			rev = "c239a69122c88797b34e3721659b2ba5060ca7e7";
			sha256 = "0hvj3zqrx5vhbhcszrgd9cczkn97236zfbx7iwjx3grnk556r53c";
		};
	}
	];

	shellAliases = {
		cls = "clear";
		tree = "exa -l --tree";
		vim = "nvim";
		emacs = "emacs -nw";
	};

	shellAbbrs = {
		# Nix
		nixls = "nix-env -q";
		nixq = "nix search";
		nixi = "nix-env -iA";
		nixrm = "nix-env -e";
		nixup = "nix-env -u";
		nixsh = "nix-shell --run \"exit\"";
		nixgc = "nix-collect-garbage --delete-older-than 30d";

		# Home Manager
		hms = "home-manager switch";
		hmg = "home-manager generations";
	};

	functions = {
		lf = "ll $argv | fzf -m --reverse";
		lfrm = "ls $argv | fzf -m --reverse | xargs rm -r";
	};
}

