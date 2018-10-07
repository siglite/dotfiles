# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.

# if running bash
if [ -n "$BASH_VERSION" ]; then
    if [ -z "$(command -v realpath)" ]; then
        # if `realpath` not exists, fallback to HOME
        DOTFILES="${DOTFILES:-$HOME}"
    fi
    # set DOTFILES if not defined (normally not defined)
    DOTFILES="${DOTFILES:-"$(dirname $(realpath "${BASH_SOURCE:-$0}"))"}"
    if [ -r "$DOTFILES/.bashrc" ]; then
        . "$DOTFILES/.bashrc"
    fi
    unset DOTFILES
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
