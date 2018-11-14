set auto-load safe-path /home/chenyi/workspace/opensrc/linux-stable/scripts/gdb/vmlinux-gdb.py
add-auto-load-safe-path /home/chenyi/workspace/ubuntu/linux-4.4.0/tools/perf/.gdbinit
add-auto-load-safe-path /home/chenyi/workspace/selfsrc/hm-mdc/.gdbinit
add-auto-load-safe-path /home/chenyi/workspace/selfsrc/dev-hm-mdc/.gdbinit
add-auto-load-safe-path /home/chenyi/workspace/qemu-hm-mdc/.gdbinit
add-auto-load-safe-path /home/chenyi/win/hm-hypervisor/.gdbinit
add-auto-load-safe-path /home/chenyi/workspace/hm-mdc/.gdbinit
add-auto-load-safe-path /home/chenyi/workspace/hm-hypervisor/.gdbinit

# 保存历史命令
set history filename ~/.gdb_history
set history save on

# 退出时不显示提示信息
set confirm off

# 按照派生类型打印对象
set print object on

# 打印数组的索引下标
set print array-indexes on

# 每行打印一个结构体成员
set print pretty on
