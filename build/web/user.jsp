<%-- 
    Document   : user
    Created on : 28 Dec, 2016, 10:27:27 AM
    Author     : DHIREN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  <%@page import="java.sql.*" %>
  <%@page import="java.io.*" %>
    </head>
    <body>
        <h1>Welcome !</h1>
<%
     try{
         String rol=request.getParameter("roll");
   Class.forName("com.mysql.jdbc.Driver");
   Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/poject","root","");
   Statement stSuper = con.createStatement();
    ResultSet rsSuper = stSuper.executeQuery("select * from student_info where roll='"+rol+"'");
    while (rsSuper.next()) {
        Blob image = rsSuper.getBlob(21);
       byte []imgData = image.getBytes(1, (int) image.length());
        response.setContentType("image/gif");
        OutputStream o = response.getOutputStream();
        o.write(imgData);
        o.flush();
        o.close();
     }
   }
    catch(Exception ee)
            {
            out.print(ee);
            }
  
%>
    </body>
</html>
