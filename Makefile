install: 
	@echo "Installing dotfiles..."
	@$(MAKE)
	install-vscode install-zsh install-git install-python install-sh

install-zsh:
	@echo "Installing Zsh configuration..."
	rm -f ~/.zshrc
	ln -s `pwd`/zsh/.zshrc ~/.zshrc

install-git:
	@echo "Installing Git configuration..."
	rm -f ~/.gitconfig
	ln -s `pwd`/git/.gitconfig ~/.gitconfig

install-python:
	@echo "Installing Python configuration..."
	rm -f ~/.pythonstartup.py
	ln -s `pwd`/python/pythonstartup.py ~/.pythonstartup.py

install-sh:
	@echo "Installing shell configuration..."
	rm -f ~/.myprofile
	ln -s `pwd`/sh/myprofile ~/.myprofile

install-vscode:
	@echo "Installing VSCode settings..."
	mkdir -p ~/Library/Application Support/Code/User
	rm -f ~/Library/Application\ Support/Code/User/settings.json
	ln -s `pwd`/vscode/settings.json ~/Library/Application\ Support/Code/User