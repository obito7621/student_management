<%@page import="java.io.File"%>
<html>
    <head>
        <title>Registration Page</title>
    </head>
    <body>
        <script src="teach_reg.html">
            </script>
        
        <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*"%>
        <%
            String var22=request.getParameter("uname");
            String var23=request.getParameter("pass");
            //int var1=1;            
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/poject","root","");
            
            //File image= new File(var18);
            //Statement stmt=con.createStatement();
          
          String sql="INSERT INTO faculty_login(username,password) VALUES (?,?)";
          PreparedStatement ps=con.prepareStatement(sql);
          ps.setString(1, var22);
          ps.setString(2, var23);
                int i=ps.executeUpdate();
                
                con.setAutoCommit(true);
                if(i>0)
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Successfully Registered');");
                    out.println("location='Home.html';");
                    out.println("</script>");
                }
                else
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('All fields are mandotary');");
                    out.println("location='teach_reg.html';");
                    out.println("</script>");
                    con.close();
                }
                
            }
            catch(Exception e )
            {
                out.println(e);
            }
        %>
    </body>
</html>
