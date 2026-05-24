# my ~/.dotfiles

These are the dotfiles for the tools that I use. 

## Set-up Guide

1. Clone this repository to your home directory, at the file location:
`~/.dotfiles`

2. Create symbolic links for each of the dotfiles:

For tmux:
On mac-os:
```
ln -s ~/.dotfiles/tmux/tmux.conf ~/tmux/tmux.conf
```

On linux: 
```
ln -s ~/.dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
```

For nvim:
```
ln -s ~/.dotfiles/nvim/lua/* ~/.config/nvim/lua/
```

For kitty:
On linux:
```
ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
```
