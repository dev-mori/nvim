# nvim
locate `~/.config/nvim`

## install nvim

```
brew update
brew install neovim
```

## install / update to `nvim >= 0.8`

https://qiita.com/dev-mori/items/a6136f0a4004aa94e109

## add alias (optional)
~/.zshrc or ~/bashrc
```
alias n=nvim
```

## to enable transparency
```
:TransparentEnable
```

## telescope.live_grep require 'ripgrep'
on ubuntu
```
sudo apt-get install ripgrep
```
https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation

## copilot require 'node'
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install 22
```
https://nodejs.org/en/download/package-manager

### setup
```
:Copilot
```

## intall lazygit
```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
```
https://github.com/jesseduffield/lazygit?tab=readme-ov-file#ubuntu
