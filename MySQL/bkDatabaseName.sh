#!/bin/bash
#description: 备份MySQL数据库
username=
password=
databaseName=
backupDir=
#mysqldump -u${username} -p${password} ${databaseName} > ${backupDir}/${databaseName}_$(date +%Y%m%d_%H%M%S).sql
mysqldump -u${username} -p${password} ${databaseName} | gzip > ${backupDir}/${databaseName}_$(date +%Y%m%d_%H%M%S).sql.gz

##用法:
# chmod u+x bkDatabaseName.sh
# ./bkDatabaseName.sh
# crontab -e
##每一分钟执行一次shell脚本
# */1 * * * * /data/bkDatabaseName.sh >> /var/log/cron 2>&1
##查看任务执行日志
# mail
# tail -f /var/log/cron 
# grep CRON /var/log/syslog #适用于ubuntu系统

