if [ -r /etc/bashrc ]; then source /etc/bashrc; fi

# ~/.bashrc.d support
if ls -A "${HOME}"/.bashrc.d/*.sh >/dev/null 2>&1; then
  for file in "${HOME}"/.bashrc.d/*.sh; do
    source "${file}"
  done
fi

# bash completion
if [[ -r /usr/local/etc/profile.d/bash_completion.sh ]]; then source /usr/local/etc/profile.d/bash_completion.sh; fi

# liquidprompt, only if interactive shell:
if [[ $- = *i* ]] && [[ -f "/usr/local/share/liquidprompt" ]]; then source "/usr/local/share/liquidprompt"; fi

# strap:straprc:begin
if [ -r "$HOME/.strap/etc/straprc" ]; then source "$HOME/.strap/etc/straprc"; fi
# strap:straprc:end
