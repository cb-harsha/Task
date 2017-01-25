<%-- 
    Document   : signup
    Created on : Jan 24, 2017, 11:00:00 PM
    Author     : cb-harsha
--%>
<%@page import="javax.management.Query"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Class.forName("com.mysql.jdbc.Driver");  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
                String firstName = request.getParameter("First Name");
                String lastName = request.getParameter("Last Name");
                String userName = request.getParameter("User Name");
                String password = request.getParameter("Password");
                
                try{
                
                Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/UserDataTask", "root", "");
                PreparedStatement prs = con.prepareStatement("insert into LoginDetails(Email,Password) values (?,?)");
                prs.setString(1, userName);
                prs.setString(2,password);
                prs.executeUpdate();
                PreparedStatement prs2 = con.prepareStatement("insert into UserDetails(FirstName,LastName,Email) values (?,?,?)");
                prs2.setString(1, firstName);
                prs2.setString(2, lastName);
                prs2.setString(3, userName);
                prs2.executeUpdate();
                con.close();

            }catch(Exception e){
                e.printStackTrace();
                out.println("Unable to connect");
            }
            out.println("Hi "+userName);
            out.println("you have signed up successfully");
           
        %>
    </body>
</html>
