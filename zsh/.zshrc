# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# source zsh plugins
source ~/.zsh_plugins.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ra="ranger"
alias ll="ls -alh"
# alias mo="mosquitto_pub -h 192.168.178.46 -t cmnd/Light_1/Dimmer -m "

Light_dimm() {
 mosquitto_pub -h 192.168.178.46 -t cmnd/Light_1/Dimmer -m $1
}

Light_color() {
 mosquitto_pub -h 192.168.178.46 -t cmnd/Light_1/Color -m $1    
}
