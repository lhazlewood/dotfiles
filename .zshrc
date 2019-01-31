[ -r /etc/zshrc ] && . /etc/zshrc

[ -d "/usr/local/share/zsh-completions" ] && fpath=(/usr/local/share/zsh-completions $fpath)

# ~/.zshrc.d support
if [ -d "${HOME}/.zshrc.d" ]; then
  for file in "${HOME}"/.zsrc.d/*.sh; do
    source "${file}"
  done
fi

# strap:straprc:begin
[ -r "$HOME/.strap/etc/straprc" ] && . "$HOME/.strap/etc/straprc"
# strap:straprc:end
