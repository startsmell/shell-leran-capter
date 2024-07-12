#!/bin/bash

# 要清理的日志目录
LOG_DIR="/path/to/your/log/directory"

# 删除超过7天的.log文件
find "$LOG_DIR" -name "*.log" -type f -mtime +7 -exec rm -f {} \;

# 输出清理日志
echo "$(date): Deleted old log files in $LOG_DIR" >> /var/log/clean_logs.log
