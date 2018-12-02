<%-- 
    Document   : retrive
    Created on : 16-Nov-2016, 22:55:57
    Author     : obito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In</title>
    </head>
    
        <script src="Login Form.html">
            
        </script>
        <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*" %>
        <%
            String var1=request.getParameter("uname1");
            String var2=request.getParameter("pass1");
            
            try
            {
                String query="select * from registration";
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/poject","root","");
                
                Statement st=con.createStatement();
                
                ResultSet rs=st.executeQuery(query);
                
                int flag=0;
                
                while(rs.next())
                {
                    String var6=rs.getString("uname");
                    String var5=rs.getString("pass");
                    
                    if(var1.matches(var6) && var2.matches(var5))
                    {
                        flag=1;
                        break;
                    }
                    else
                        flag=0;
                }
                con.close();
                if(flag==1)
                {
                    %>
                    <jsp:forward page="stu_log.html"></jsp:forward>
                    <%
                    
                }
                else
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Wrong Username or Password');");
                    out.println("location='Login Form.html';");
                    out.println("</script>");
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    

