[ -r /etc/bashrc ] && . /etc/bashrc

# ~/.bashrc.d support
if [ -d "${HOME}/.bashrc.d" ]; then
  for file in "${HOME}"/.bashrc.d/*.sh; do
    source "${file}"
  done
fi

# bash completion
[[ -r /usr/local/etc/profile.d/bash_completion.sh ]] && source /usr/local/etc/profile.d/bash_completion.sh

# liquidprompt, only if interactive shell:
[[ $- = *i* ]] && [[ -f "/usr/local/share/liquidprompt" ]] && source "/usr/local/share/liquidprompt"

# strap:straprc:begin
[ -r "$HOME/.strap/etc/straprc" ] && . "$HOME/.strap/etc/straprc"
# strap:straprc:end

