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

HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=20000
setopt appendhistory


alias ra="ranger"
alias ll="ls -alh --color=tty"
alias ls="ls -h --color=tty"
alias vim="nvim"
alias vi="nvim"
alias lock='systemctl suspend && exec i3-msg --color=000103'
alias gitlog="git log --graph --oneline --all --decorate"

alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

alias sd="source ~/catkin_ws_project/devel/setup.zsh"


Light_dimm() {
 mosquitto_pub -h 192.168.178.20 -t cmnd/Light_1/Dimmer -m $1
}

Light_color() {
 mosquitto_pub -h 192.168.178.20 -t cmnd/Light_1/Color -m $1    
}

Light_white() {
 y=$(python -c "print(int((${1}*3.47+150)))")
 mosquitto_pub -h 192.168.178.20 -t cmnd/Light_1/CT -m $y
}

# map keys for wacom tablet
xsetwacom set "Wacom Intuos S Pad pad" Button 1 "key ctrl h"
xsetwacom set "Wacom Intuos S Pad pad" Button 2 "key 2"
xsetwacom set "Wacom Intuos S Pad pad" Button 3 "key 3"
xsetwacom set "Wacom Intuos S Pad pad" Button 8 "key 4"


export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
# for ros
source /opt/ros/noetic/setup.zsh
# source ~/00_Nextcloud/01_education/project_thesis/catkin_ws/devel/setup.zsh || echo "nothing to source"
export TURTLEBOT3_MODEL=waffle_pi

