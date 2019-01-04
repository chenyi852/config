

alias ..='cd ..'
alias ...='cd ../..'
alias du1='du --max-depth=1 -h'
alias reload='source ~/.bashrc'
alias home="cd $HOME"

work_dir=~/workspace
self_dir=$work_dir/selfsrc

#### directory shortcut
alias wp='cd $work_dir'
alias op='cd ~/workspace/opensrc'
alias tp='cd $work_dir/testspace'
alias sp='cd $self_dir'
alias winp='cd $win_dir'
## mdc project in win dir
alias pp='cd $work_dir/selfsrc/python_study'

### environment setting
alias env_arm64='source ~/bin/setenv.sh arm64'
alias env_linaro='source ~/bin/setenv.sh linaro'
alias env_linaro32='source ~/bin/setenv.sh linaro32'
alias env_hm32='source ~/bin/setenv.sh hm32'
alias env_hm='source ~/bin/setenv.sh hm64'

## rdesktop
alias rdp='rdesktop 192.168.2.221 -u c00200500 -g 1921x1080 -r clipboard:PRIMARYCLIPBOARD sound:local -5'
