# tmux issue, https://unix.stackexchange.com/questions/320465/new-tmux-sessions-do-not-source-bashrc-file
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi
