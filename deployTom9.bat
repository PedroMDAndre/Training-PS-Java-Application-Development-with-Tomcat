@echo off
SET PROJECT_PATH=D:\training\Java Web apps\target
SET TOMCAT_PATH=C:\Java\Tomcat\tomcat-9.0.62

echo 0: Package project
call mvn package

echo 1: Copy/deploy war files
xcopy /y "%PROJECT_PATH%\my_servlet.war" "%TOMCAT_PATH%\webapps\"
xcopy /y "%PROJECT_PATH%\my_jsp.war" "%TOMCAT_PATH%\webapps\"
xcopy /y "%PROJECT_PATH%\my_jstl.war" "%TOMCAT_PATH%\webapps\"
xcopy /y "%PROJECT_PATH%\my_filters.war" "%TOMCAT_PATH%\webapps\"
xcopy /y "%PROJECT_PATH%\my_listener.war" "%TOMCAT_PATH%\webapps\"

