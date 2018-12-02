/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author obito
 */
import java.sql.*;


public class ret {
    public void display()
    {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/poject","root","");
                
                String query="select * from registration";
                Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next())
            {
                System.out.println("The student name is = "+rs.getInt(1));
                System.out.println("The student age is = "+rs.getString(2));
                System.out.println("The student uname is = "+rs.getInt(3));
                //System.out.println(rs.getString(5));
            }
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
    }
    public static void main(String[]args)
    {
        ret r = new ret();
        r.display();
    }
}
