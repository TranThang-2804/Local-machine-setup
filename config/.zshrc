typeset -U path cdpath fpath manpath

for profile in ${(z)NIX_PROFILES}; do
  fpath+=($profile/share/zsh/site-functions $profile/share/zsh/$ZSH_VERSION/functions $profile/share/zsh/vendor-completions)
done

HELPDIR="/nix/store/qy3n6d8c9l6i133b43qcjsf70dnpagbm-zsh-5.9/share/zsh/$ZSH_VERSION/help"




path+="$HOME/.zsh/plugins/powerlevel10k"
fpath+="$HOME/.zsh/plugins/powerlevel10k"

# Oh-My-Zsh/Prezto calls compinit during initialization,
# calling it twice causes slight start up slowdown
# as all $fpath entries will be traversed again.

source /nix/store/gnvkpdrqiaj3zrp5xhirmmflh9cwgcsd-zsh-autosuggestions-0.7.0/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# oh-my-zsh extra settings for plugins

# oh-my-zsh configuration generated by NixOS



source $ZSH/oh-my-zsh.sh



if [[ -f "$HOME/.zsh/plugins/powerlevel10k/share/zsh-powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source "$HOME/.zsh/plugins/powerlevel10k/share/zsh-powerlevel10k/powerlevel10k.zsh-theme"
fi


# History options should be set in .zshrc and after oh-my-zsh sourcing.
# See https://github.com/nix-community/home-manager/issues/177.
HISTSIZE="10000"
SAVEHIST="10000"

HISTFILE="$HOME/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"

setopt HIST_FCNTL_LOCK
setopt HIST_IGNORE_DUPS
unsetopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY


[[ ! -f /nix/store/5chww7pj9clm61b71qv38dli2rg39rbd-.p10k.zsh ]] || source /nix/store/5chww7pj9clm61b71qv38dli2rg39rbd-.p10k.zsh
bindkey -v
export LC_ALL="en_US.UTF-8"
export dry="--dry-run=client -o yaml";
export PATH=$PATH:$HOME/go/bin;
export GOBIN=$HOME/go/bin;
eval $(thefuck --alias)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan,underline"


# Aliases
alias -- 'PWS'='/Users/tranthang/Library/Mobile Documents/com~apple~CloudDocs/Documents/Work/Devops/Projects'
alias -- 'WS'='/Users/tranthang/Library/Mobile Documents/com~apple~CloudDocs/Documents/'
alias -- 'fnvim'='nvim $(fzf --height 40% --preview "bat --color=always --style=numbers {}")'
alias -- 'ga'='git add'
alias -- 'gc'='git commit -m'
alias -- 'gp'='git push'
alias -- 'gs'='git status'
alias -- 'jh'='./mvnw spring-boot:run'
alias -- 'k'='kubectl'
alias -- 'ka'='kubectl apply -f'
alias -- 'kc'='kubectl create'
alias -- 'kd'='kubectl delete'
alias -- 'kds'='kubectl describe'
alias -- 'ke'='kubectl edit'
alias -- 'kg'='kubectl get'
alias -- 'kr'='kubectl run'
alias -- 'krp'='kubectl replace'
alias -- 'krpf'='kubectl replace --force -f'
alias -- 'ksetns'='kubectl config set-context --current --namespace'
alias -- 'ls'='ls -la --color'
alias -- 'note'='/Users/tranthang/Library/Mobile Documents/iCloud~md~obsidian/Documents/tommy-note-vault'
alias -- 'ta'='tmux attach-session -t'
alias -- 'tera'='terraform'
alias -- 'tk'='tmux kill-session -t'
alias -- 'tka'='tmux kill-session -a'
alias -- 'tl'='tmux ls'
alias -- 'tn'='tmux new-session -t'

# Named Directory Hashes


source /nix/store/ii7k5xhkj227ba06kb02zx7fp2a3ncbc-zsh-syntax-highlighting-0.8.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS+=()
