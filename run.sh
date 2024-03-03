#!/bin/sh
printf "Warning: This will force overwrite your .bashrc and so on.\n"
printf "If you don't want to overwrite, please press Ctrl+C to exit.\n"
printf "Press the Enter to continue."
read _

cp -rf $PWD ~/.config/

export Profile_PATH=~/.config/profiles
ln -sf $Profile_PATH/.bashrc ~/.bashrc
ln -sf $Profile_PATH/config.fish ~/.config/fish/config.fish
ln -sf $Profile_PATH/.vimrc ~/.vimrc
ln -sf $Profile_PATH/.tmux.conf ~/.tmux.conf
