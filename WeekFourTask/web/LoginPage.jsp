<%-- 
    Document   : LoginPage
    Created on : Jan 27, 2017, 3:02:36 PM
    Author     : cb-harsha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginPage</title>
    </head>
    <body>
        <h1>Please enter your user name and password</h1>
        <form action="LoginServlet" method="get">
        <input type ="text" name="userName">
        <input type="password" name="password">
        <input type="submit" value="login">
        </form>
    </body>
</html>
