

alias ..='cd ..'
alias ...='cd ../..'
alias du1='du --max-depth=1 -h'
alias reload='source ~/.bashrc'
alias home="cd $HOME"

work_dir=~/workspace
win_dir=~/win
self_dir=$work_dir/selfsrc

#### directory shortcut
alias wp='cd $work_dir'
alias vp='cd $work_dir/vosys'
alias hp='cd $work_dir/hw_src'
alias qp='cd ~/workspace/deploy-qemu'
alias op='cd ~/workspace/opensrc'
alias tp='cd $work_dir/testspace'
alias sp='cd $self_dir'
alias a64='cd $work_dir/arm64'
alias rl='cd ~/workspace/testspace/rtos_benchmark/rtos_benchmark_src/testcase/bin/lmbench3'
alias winp='cd $win_dir'
## mdc project in win dir
alias mdcp='cd $win_dir/mdc_prj'
alias perfp='cd $work_dir/ubuntu/linux-4.4/tools/perf'
alias ci='cd $win_dir/ci'
alias pp='cd $work_dir/selfsrc/python_studiy'

### environment setting
alias env_arm64='source ~/bin/setenv.sh arm64'
alias env_linaro='source ~/bin/setenv.sh linaro'
alias env_linaro32='source ~/bin/setenv.sh linaro32'
alias env_hm32='source ~/bin/setenv.sh hm32'
alias env_hm='source ~/bin/setenv.sh hm64'

## rdesktop
alias rdp='rdesktop 192.168.2.221 -u c00200500 -g 1921x1080 -r clipboard:PRIMARYCLIPBOARD sound:local -5'
