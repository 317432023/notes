REM ���Թ���Ա���ִ�д��������ļ�
set mysql_home=%~dp0
cd /d %mysql_home%bin
REM ����dataĿ¼ �״ΰ�װ��Ҫ�Լ�����
REM mysqld --initialize--insecure --console

mysqld --install mysql5.7

pause