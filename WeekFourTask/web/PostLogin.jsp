<%-- 
    Document   : PostLogin
    Created on : Jan 30, 2017, 11:59:32 AM
    Author     : cb-harsha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Login</title>
    </head>
    <body>
        <h1>Post Login</h1>
        <%
            out.println("You have logged in successfully");
        %>
        <h1>Click below for logout</h1>
        <form action="LogoutServlet" method="post">
            <input type="submit" value="Log Out">
        </form>
    </body>
</html>
