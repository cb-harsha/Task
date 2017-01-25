<%-- 
    Document   : postlogin
    Created on : Jan 24, 2017, 11:03:19 PM
    Author     : cb-harsha
--%>

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
        <h1>Hello</h1>
        <%
            String userName = request.getParameter("User Name");
            String password = request.getParameter("Password");
            try{
                
                Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/UserDataTask", "root", "");
                  PreparedStatement statement = con.prepareStatement("select * from LoginDetails where Email = ? and Password = ?");
                  statement.setString(1, userName);
                  statement.setString(2, password);
                  ResultSet rs = statement.executeQuery();
                  
                      rs.next();
                      String result = rs.getString("Email");
                      out.println("Hello "+userName);
                  
               
                con.close();

            }catch(Exception e){
                e.printStackTrace();
                out.println("worng email");
            }    
        %>
    </body>
</html>
