if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
zmodload zsh/zprof

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

 if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
 fi

### antidote
# drive our config entirely with plugins
if ! [[ -e $ZDOTDIR/.antidote ]]
then
  git clone https://github.com/mattmc3/antidote.git $ZDOTDIR/.antidote
fi


 source $ZDOTDIR/.antidote/antidote.zsh
 antidote load

# Localized configuration
 if [ -f "${HOME}/.zsh_local" ]; then
   source "${HOME}/.zsh_local"
 fi

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/p10k.zsh.
 [[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh

# zprof
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}
