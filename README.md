# Java Application Development with Tomcat
## Course Description

You need to develop Java web applications but are not sure what to use as a development platform.
Use Tomcat, the leading Java web application platform.

In this course, Java Application Development with Tomcat, you will gain foundational knowledge of how to develop
Java web applications for Tomcat.

First, you will learn about HTTP 1.1 and how it is processed by Tomcat.

Next, you will learn about the Servlet API and how to develop custom servlets, JSP, Filters, and Listeners.

Finally, you will explore how to configure, package, and deploy web applications in WAR files.
When you are finished with this course, you will have the skills and knowledge of Servlets and JSPs needed to
develop web applications in Java.

Software required: Tomcat 9, Windows 10, Linux, or macOS and a text editor.

https://app.pluralsight.com/library/courses/spring-boot-fundamentals/description

Course author : Richard Monson-Haefel

## My notes
### Endpoints:
* http://localhost:8080/my_servlet/hi
* http://localhost:8080/my_servlet/params?name={name}
* http://localhost:8080/my_servlet/headers?name={name} Different response depending on browser preferred language
* http://localhost:8080/my_servlet/context-count
* http://localhost:8080/my_servlet/session-count
* http://localhost:8080/my_servlet/
* http://localhost:8080/my_servlet/

{name} : to be changed with a name

### Scripts to deploy package on Tomcat
* deployTom9
* deployTom10

May need to be updated with project and Tomcat paths  

### Requirements:
* Tomcat 9 and 10
* Maven 3.8.4
* Java 17