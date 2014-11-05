OHMYZSH="/usr/share/oh-my-zsh"

all: dotfiles

# dotfiles deploys dotfiles to the curent user home directory
.PHONY: dotfiles
dotfiles:
	@echo "==> Installing dotfiles"
	@rsync -i -avz --exclude ".git/" --exclude "Makefile" --exclude "zsh-themes" . ~  

# zsh-themes deploys custom oh-my-zsh themes to the oh-my-zsh thmemes directory, requires sudo.
.PHONY: zsh-themes
zsh-themes:
	@echo "==> Copying oh-my-zsh themes"
	@sudo cp ./zsh-themes/* "$(OHMYZSH)/themes/"
