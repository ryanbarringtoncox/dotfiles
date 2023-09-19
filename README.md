Dotfiles
=======

For new hardware setups, etc

## And this to your `.zshrc`

```
alias vi='vim'
set -o vi # vi key bindings in terminal

export HISTSIZE=10000000
export HISTFILESIZE=1000000

alias cl='clear'
alias gco='git checkout'
alias gd='git diff'
alias gs='git status'
alias gps='git push'
alias gpl='git pull'
alias gs='git status'
alias gl='git log'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
```

## Configuring Git For Another Laptop (note to self)

Set up SSH keys as per github's instructions and _**Remember to clone/configure local git repo as SSH not https - this has tripped me up before!**_
