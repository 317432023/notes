REM 请以管理员身份执行此批处理文件
set mysql_home=%~dp0
cd /d %mysql_home%bin


net start mysql5.7
mysql -uroot -P3306 -h localhost -p
REM use mysql;
REM CREATE USER 'nwp'@'localhost' IDENTIFIED WITH mysql_native_password BY 'nwp';
REM GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'db123!@#' WITH GRANT OPTION;
REM GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY 'db123!@#' WITH GRANT OPTION;
REM update user set authentication_string=password('db123!@#'),plugin='mysql_native_password' where user='root';
REM flush privileges;

pause