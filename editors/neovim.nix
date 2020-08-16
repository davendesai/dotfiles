# NeoVim Configuration

{
	enable = true;
	
	extraConfig = ''
		" Paths
		let plugExecPath = stdpath('data').'/site/autoload/plug.vim'
		let plugDir = stdpath('data').'/plugged'

		" Bootstrap
		if empty(glob(plugExecPath))
			silent execute '!curl -fLo '.plugExecPath.' --create-dirs '.
				\ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
		endif
		
		" Plugins
		call plug#begin(plugDir)

			" gui
			Plug 'itchyny/lightline.vim'

			" visual
			Plug 'machakann/vim-highlightedyank'
			
			" navigation
			Plug 'justinmk/vim-sneak'

			" editing
			Plug 'tpope/vim-surround'
			Plug 'tpope/vim-commentary'
			Plug 'tommcdo/vim-lion'
			Plug 'tommcdo/vim-exchange'
			
			" tools
			Plug 'junegunn/fzf'
			Plug 'junegunn/fzf.vim'

		call plug#end()
	
		" Configuration

		    " leader
			nnoremap <Tab> <Nop>
			let mapleader = ","

			" theme

	
			" fzf
			nmap <Leader>f :Files<CR>
			nmap <Leader>b :Buffers<CR>
			nmap <Leader>c :Commands<CR>
			nmap <Leader>l :BLines<CR>

		" Functions

		    " light/dark mode for macOS
			function! SetBackgroundMode(...)
				let s:new_bg = &background
				if $TERM_PROGRAM ==? "Apple_Terminal"
					let s:mode = systemlist("defaults read -g AppleInterfaceStyle")[0]
					if s:mode ==? "dark"
						let s:new_bg = "dark"
					else
						let s:new_bg = "light"
					endif
				endif
				if &background !=? s:new_bg
					let &background = s:new_bg
				endif
			endfunction
			call SetBackgroundMode()
	'';
}

