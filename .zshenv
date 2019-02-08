export EDITOR=nano; if command -v emacs >/dev/null; then export EDITOR=emacs; fi
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# strap:strapenv:begin
if [ -r "$HOME/.strap/etc/strapenv" ]; then source "$HOME/.strap/etc/strapenv"; fi
# strap:strapenv:end
