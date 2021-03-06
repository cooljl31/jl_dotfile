module.exports = {
	brew: [
		// http://conqueringthecommandline.com/book/ack_ag
		'ack',
		'ag',
		'ripgrep',
		// cmake is required to compile vim bundle YouCompleteMe
		'cmake',
		// Install GNU core utilities (those that come with OS X are outdated)
		// Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
		'coreutils',
		'dos2unix',
		// Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
		'findutils',
		'fortune',
		'gawk',
		// http://www.lcdf.org/gifsicle/ (because I'm a gif junky)
		'gifsicle',
		'gnupg',
		// Install GNU `sed`, overwriting the built-in `sed`
		// so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
		'gnu-sed --with-default-names',
		// better, more recent grep
		'homebrew/dupes/grep',
		// https://github.com/jkbrzt/httpie
		'httpie',
		'imagemagick',
		'imagesnap',
		'zsh-autosuggestions',
		// jq is a sort of JSON grep
		'jq',
		// Mac App Store CLI: https://github.com/mas-cli/mas
		'mas',
		// Install some other useful utilities like `sponge`
		'moreutils',
		'nmap',
		'openconnect',
		'reattach-to-user-namespace',
		// better/more recent version of screen
		'homebrew/dupes/screen',
		'tmux',
		'tree',
		'ttyrec',
		// better, more recent vim
		'macvim --with-override-system-vim',
		'watch',
		// Install wget with IRI support
		'wget --enable-iri',
		// Neovim
		'neovim',
		'rbenv',
		'zplug',
		'rust',
		'pyenv',
		'z',
		'speedtest-cli',
		'mysql',
		'postgresql',
		'rust',
		'rustup',
		'llvm',
		'nodenv',
		'autojump'
	],
	cask: [
		'sequel-pro',
		'bitbar',
		'flycut',
		'postman',
		//'adium',
		//'amazon-cloud-drive',
		//'atom',
		'box-sync',
		//'comicbooklover',
		'diffmerge',
		//'dropbox',
		'evernote',
		'gpgtools',
		//'ireadfast',
		'iterm2',
		//'little-snitch',
		//'micro-snitch',
		'macvim',
		// 'sizeup',
		//'sketchup',
		'slack',
		'the-unarchiver',
		//'torbrowser',
		//'transmission',
		'bitbar',
		'vlc',
		'xquartz',
		'visual-studio-code',
		'spectacle',
		'1password',
		'chrome-devtools',
		'colorpicker-developer',
		'ngrok'
	],
	gem: [
		// 'git-up'
		'neovim'
	],
	npm: [
		'antic',
		'buzzphrase',
		'eslint',
		'instant-markdown-d',
		'npm-check',
		'yo',
		'generator-dockerize',
		'gulp',
		'prettyjson',
		'trash',
		'vtop',
		'neovim'
	]
};
