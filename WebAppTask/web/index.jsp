<%-- 
    Document   : index.jsp
    Created on : Jan 21, 2017, 10:18:27 PM
    Author     : cb-harsha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Hello World!</h1>
        <form action ="http://localhost:8080/WebAppTask/web/postlogin.jsp">
        <br>
        <input type ="text" name ="User Name">
        <input type ="password" name ="Password">
        <input type ="submit" value="login">
        </br>
        </form>
        
        
    </body>
</html>
