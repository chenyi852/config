

alias ..='cd ..'
alias ...='cd ../..'

work_dir=~/workspace
win_dir=~/win
self_dir=$work_dir/selfsrc

#### directory shortcut
alias wp='cd $work_dir'
alias vp='cd $work_dir/vosys'
alias hp='cd $work_dir/hw_src'
alias qp='cd ~/workspace/qemu'
alias op='cd ~/workspace/opensrc'
alias tp='cd $work_dir/testspace'
alias sp='cd $self_dir'
alias a64='cd $work_dir/arm64'
alias rl='cd ~/workspace/testspace/rtos_benchmark/rtos_benchmark_src/testcase/bin/lmbench3'
alias winp='cd $win_dir'

### environment setting
alias env_arm64='source ~/bin/setenv.sh arm64'
alias env_linaro='source ~/bin/setenv.sh linaro'


## rdesktop
alias rdp='rdesktop 192.168.2.221 -u c00200500 -g 1921x1080 -r clipboard:PRIMARYCLIPBOARD sound:local -5'
