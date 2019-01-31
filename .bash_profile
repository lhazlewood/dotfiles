command -v emacs >/dev/null && export EDITOR=emacs || export EDITOR=nano
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# strap:strapenv:begin
[ -r "$HOME/.strap/etc/strapenv" ] && . "$HOME/.strap/etc/strapenv"
# strap:strapenv:end

# strap:bashrc:begin
# source .bashrc from within .bash_profile per bash user guide: 
# https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html
[ -r "$HOME/.bashrc" ] && . "$HOME/.bashrc"
# strap:bashrc:end
