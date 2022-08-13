# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/stepan/.zshrc'

autoload -U compinit
autoload -U colors && colors
compinit
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# End of lines added by compinstall
typeset -U path
path=(~/bin /other/things/in/path $path[@])
zstyle ':completion:*' menu select
setopt completealiases
autoload -U compinit && compinit
source /usr/share/doc/pkgfile/command-not-found.zsh
setopt HIST_IGNORE_DUPS
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
zmodload zsh/complist
_comp_options+=(globdots)
alias ls='ls -lah --color'
alias meridious='flatpak run io.github.purplehorrorrus.Meridius'
