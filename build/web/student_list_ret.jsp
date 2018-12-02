<!doctype html>
<script src="name_ret.html">
        </script>
     <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*" %>
    

<html>
<head>
<meta charset="utf-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
         <link rel="stylesheet" href="Logstu.css" type="text/css">
         <script src="Bootstrap/js/jquery-3.2.1.min.js" type="text/javascript"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <!--<script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>-->
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
         <title>Student Details Table</title>
</head>

<body>
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12">
               <div class="head">
                  <div class="col-lg-4">
                     <img src="Images/images.jpg" class="img-responsive img-circle" style="height:85px; width:90px; margin-top:-15px;"/>
                  </div>
                  <span style="text-shadow:3px 2px #C60; font-size:24px; margin-left:-350px;">Amrapali Institute of Technology and Sciences</span>
                  <a href="Home.html" style="margin-left:1220px; margin-top:20px; font-size:15px; color:#309; font-weight:bold;">Logout</a>                              </div>
            </div>
          </div>
        </div>
        
        
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-2">
                    <div class="head1">
                       <a href="teach_log.html"><button style="padding-left:17px;">Home</button></a><br/>
                       
                        <a href="teach_stu_log.html"><button>Register Student</button></a></br>
                        <div class="dropdown">
                            <button class="dropdown-toggle" data-toggle="dropdown">View Students<span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="name_ret.html">Name</a></li>
                                <li><a href="session_ret.html">Session</a></li>
                                <li><a href="branch_ret.html">Branch</a></li>
                                <li><a href="roll_ret.html">Roll No.</a></li>
                                <li><a href="marks_ret.html">Marks</a></li>
                            </ul>
                        </div>
                    </div>
                 </div>
  
               <div class="col-lg-8">
                  <div class="table-responsive">
                 <table class=" table table-striped table-hover">
                   <tr>
                       <th>S.No.</th>
                   <th>Name</th>
                   <th>Branch</th>
                   <th>Roll No.</th>
                   <th>Session</th>
                   <th>Photo</th>
                   </tr>
                                   <%
     String var = request.getParameter("name1");   
try
{
Class.forName("com.mysql.jdbc.Driver");
String query="select * from student_info where fname='"+var+"'";
//String query="select * from registration";
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/poject","root","");
Statement stmt=conn.createStatement();
//ResultSet rs=stmt.executeQuery(query);
ResultSet rs=stmt.executeQuery(query);
int i=0;
      while(rs.next())
      {
          
        
%>

                                   
                                   
                                       
                   <tr>
                       <th><%out.print(i+1);%></th>
                       <th><a href="fret1.jsp?roll=<%=rs.getString("roll")%>"><%=rs.getString("fname")%> <%=rs.getString("mname")%> <%=rs.getString("lname")%></th>
                       <th><%=rs.getString("branch")%></th>
                       <th><%=rs.getString("roll")%></th>
                       <th><%=rs.getString("session")%></th>
                       <th><img src="user.jsp?roll=<%=rs.getString("roll")%>" style="width:150px; height:150px;"/></th>
                   </tr>
                                   
                                   
                   <%
                       i++;
      }             
%>
                  
                 </table>
                   </div>
                 </div>
</body>
</html>

<%
    


    stmt.close();
    conn.close();
    
}

catch(Exception e)
{
    e.printStackTrace();
    }
%>

             <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>