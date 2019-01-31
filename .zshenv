command -v emacs >/dev/null && export EDITOR=emacs || export EDITOR=nano
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# strap:strapenv:begin
[ -r "$HOME/.strap/etc/strapenv" ] && . "$HOME/.strap/etc/strapenv"
# strap:strapenv:end
