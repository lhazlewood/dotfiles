export EDITOR=nano; if command -v emacs >/dev/null; then export EDITOR=emacs; fi
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# strap:strapenv:begin
if [ -r "$HOME/.strap/etc/strapenv" ]; then . "$HOME/.strap/etc/strapenv"; fi
# strap:strapenv:end

# strap:bashrc:begin
# source .bashrc from within .bash_profile per bash user guide: 
# https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html
if [ -r "$HOME/.bashrc" ]; then . "$HOME/.bashrc"; fi
# strap:bashrc:end
