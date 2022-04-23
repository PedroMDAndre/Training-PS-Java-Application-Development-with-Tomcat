@echo off
call mvn package
echo 1: Copy/deploy war file
xcopy /y "D:\training\Java Web apps\target\my_servlet.war" "C:\Java\Tomcat\tomcat-9.0.62\webapps\"

