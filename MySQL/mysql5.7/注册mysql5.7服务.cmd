REM 请以管理员身份执行此批处理文件
set mysql_home=%~dp0
cd /d %mysql_home%bin
REM 生成data目录 首次安装不要自己创建
REM mysqld --initialize--insecure --console

mysqld --install mysql5.7

pause