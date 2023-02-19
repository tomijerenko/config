#!/usr/bin/bash

cp ~/.vimrc linux/.
cp ~/.tmux.conf linux/.
cp ~/.bashrc linux/.
cp ~/.bash_aliases linux/.
cp -r ~/.config/alacritty linux/.config/.
cp -r ~/.config/procps linux/.config/.

dconf dump / | sed -n '/\[org.gnome.settings-daemon.plugins.media-keys/,/^$/p' > linux/keyboard-shortcuts.conf
