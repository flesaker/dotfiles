# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# --- Custom Settings begins ---

# Scale GTK applications given 4k displays.
export GDK_SCALE=2

# Scale Qt application given 4k displays.
export QT_AUTO_SCREEN_SCALE_FACTOR=1

# Include work specific settings if applicable.
if [ -f "$HOME/.work" ]; then
    . "$HOME/.work"
fi

# Include personal settings if applicable.
if [ -f "$HOME/.private" ]; then
    . "$HOME/.private"
fi

# --- Custom Settings ends ---
