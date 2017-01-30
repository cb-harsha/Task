<%-- 
    Document   : SignUp
    Created on : Jan 27, 2017, 3:02:50 PM
    Author     : cb-harsha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp page</title>
    </head>
    <body>
        <h1>Please fill your details</h1>
        <form action="SignUpServlet" method="get">
        <input type="text" name="firstName">
        <input type="text" name="lastName">
        <input type ="text" name="userName">
        <input type="password" name="password">
        <input type="submit" value="signup">
        </form>
    </body>
</html>
