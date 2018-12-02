<%@page import="java.io.File"%>
<html>
    <head>
        <title>Registration Page</title>
    </head>
    <body>
        <script src="teach_log.html">
            </script>
        
        <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*"%>
        <%
           
            String var1=request.getParameter("fname");
            String var2=request.getParameter("mname");
            String var3=request.getParameter("lname");
            String var4=request.getParameter("dob");
            String var5=request.getParameter("adate");
            String var6=request.getParameter("roll");
            String var7=request.getParameter("eroll");
            String var8=request.getParameter("email");
            String var9=request.getParameter("father_name");
            String var10=request.getParameter("fno");
            String var13=request.getParameter("sno");
            String var11=request.getParameter("mother_name");
            String var12=request.getParameter("gender");
            String var14=request.getParameter("category");
            //String var13=request.getParameter("fgen");
            //String var14=request.getParameter("ogen");
            String var15=request.getParameter("branch");
            String var16=request.getParameter("session");
            
            //String var16=request.getParameter("b_me");
            //String var17=request.getParameter("b_ece");
            //String var18=request.getParameter("image");
            String var19=request.getParameter("address");
            String var20=request.getParameter("city");
            String var21=request.getParameter("pin");
            String var22=request.getParameter("uname");
            String var23=request.getParameter("pass");
            
            
       
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/poject","root","");
            
            //File image= new File(var18);
            //Statement stmt=con.createStatement();
            
          String sql=("INSERT INTO student_info (fname,mname,lname,dob,adate,roll,eroll,email,father_name,fno,stu_phone,mother_name,gender,category,branch,session,address,city,pin) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
          String sql1=("INSERT INTO registration VALUES ('"+var6+"','"+var22+"','"+var23+"')");
          Statement stmt=con.createStatement();
          PreparedStatement ps=con.prepareStatement(sql);
          ps.setString(1, var1);
          ps.setString(2, var2);
          ps.setString(3, var3);
          ps.setString(4, var4);
          ps.setString(5, var5);
          ps.setString(6, var6);
          ps.setString(7, var7);
          ps.setString(8, var8);
          ps.setString(9, var9);
          ps.setString(10, var10);
          ps.setString(11, var13);
          ps.setString(12, var11);
          ps.setString(13, var12);
          ps.setString(14, var14);
          ps.setString(15, var15);
          ps.setString(16, var16);
          ps.setString(17, var19);
          ps.setString(18, var20);
          ps.setString(19, var21);
                int i=ps.executeUpdate();
                int j=stmt.executeUpdate(sql1);
                con.setAutoCommit(true);
                if(i>0&&j>0)
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Successfully Registered');");
                    out.println("location='teach_log.html';");
                    out.println("</script>");
                }
                else
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('All fields are mandotary');");
                    out.println("location='teach_log_stu.html';");
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
