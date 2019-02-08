if [ -r /etc/zshrc ]; then source /etc/zshrc; fi

if [ -d "/usr/local/share/zsh-completions" ]; then fpath=(/usr/local/share/zsh-completions $fpath); fi

# ~/.zshrc.d support
if ls -A "${HOME}"/.zshrc.d/*.sh >/dev/null 2>&1; then
  for file in "${HOME}"/.zsrc.d/*.sh; do
    source "${file}"
  done
fi

# strap:straprc:begin
if [ -r "$HOME/.strap/etc/straprc" ]; then source "$HOME/.strap/etc/straprc"; fi
# strap:straprc:end
