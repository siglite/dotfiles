# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # set $DOTFILES if not defined (normally not defined)
    DOTFILES="${DOTFILES:-"$(dirname $(realpath "${BASH_SOURCE:-$0}"))"}"
    if [ -f "${DOTFILES:="$HOME"}/.bashrc" ]; then
        . "$DOTFILES/.bashrc"
    fi
    unset DOTFILES
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
