/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package harsha;
import java.sql.*;
/**
 *
 * @author cb-harsha
 */
public class SignUp {
    public void dataBaseStore(String userName,String password,String firstName,String lastName){
        try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/UserDataTask", "root", "");
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
                //System.out.println("Unable to connect");
            }
    }
    
    public void getData(String userName,String password){
        try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/UserDataTask", "root", "");
                ResultSet rs = con.createStatement()
                        .executeQuery("select * from LoginDetails where Email = '"+userName+"' and Password = '"+password+"'"); 
                rs.next();
                String result = rs.getString(2);
                System.out.println(result);
                con.close();

            }catch(Exception e){
                e.printStackTrace();
                System.out.println("Unable to connect");
            }
        
    }
    
}
