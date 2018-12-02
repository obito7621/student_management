<!doctype html>
<script src="stu_login.html">
        </script>
     <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*" %>
    
<%
     String var1 = request.getParameter("uname1");   
try
{
Class.forName("com.mysql.jdbc.Driver");
String query="select * from registration where uname="+ var1;
String r="";
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/poject","root","");
Statement stmt=conn.createStatement();
ResultSet rw=stmt.executeQuery(query);
while(rw.next())
    {
         r=rw.getString("roll");
    }
String sql="select * from student_info where roll="+ r;
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
%>
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
                  <a href="Home.html" style="margin-left:1220px; margin-top:20px; font-size:15px; color:#309; font-weight:bold;">Logout</a>                              
               </div>
            </div>
          </div>
        </div>
        
        
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-2">
                    <div class="head1">
                       <a href="stu_log.html"><button style="padding-left:17px;">Home</button></a><br/>
                       
                    </div>
                 </div>
               <div class="col-lg-8">
                  <div class="table-responsive">
                 <table class=" table table-striped table-hover">
                   <tr>
                     <th>Name</th>
                     <td><%=rs.getString("fname")%> <%=rs.getString("mname")%> <%=rs.getString("lname")%></td>
                   </tr>
                     <tr>
                     <th>Date Of Birth</th>
                     <td><%=rs.getString("dob")%></td>
                   </tr>
                   <tr>
                     <th>Gender</th>
                     <td><%=rs.getString("gender")%></td>
                   </tr>
                     <tr>
                     <th>Roll No.</th>
                     <td><%=rs.getString("roll")%></td>
                   </tr>
                   <tr>
                     <th>Enrollment No.</th>
                     <td><%=rs.getString("eroll")%></td>
                   </tr>
                     <tr>
                     <th>Admission Date</th>
                     <td><%=rs.getString("adate")%></td>
                   </tr>
                   <tr>
                     <th>Email</th>
                     <td><%=rs.getString("email")%></td>
                   </tr>
                 </table>
                   </div>
                 </div>
             
               <div class="col-lg-2 table-responsive">
                 <table>
                    <tr>
                      <td><img src="Images/DSC_0000075.jpg" style="width:150px; height:150px; margin-top:40px;"/></td>
                    </tr>
                 </table>
               </div>
              </div>
             </div>
             
         
          <div class="container-fluid">
           <div class="row">
            <div class=" col-lg-offset-2 col-lg-10 table-responsive" style="margin-top:-350px;">
                <h2 style="color:#696; font-size:24px; font-family:Gotham, 'Helvetica Neue', Helvetica, Arial, sans-serif;">Personal Details</h2>
              <table class="table table-striped table-hover">
                <tr>
                  <th>Father's Name</th>
                  <td><%=rs.getString("father_name")%></td>
                  <th>Mother's Name</th>
                  <td><%=rs.getString("mother_name")%></td>
                </tr>
                <tr>
                  <th>Father's Phone No.</th>
                  <td><%=rs.getString("fno")%></td>
                  <th>City</th>
                  <td><%=rs.getString("city")%></td>
                </tr>
                 <tr>
                  <th>Address</th>
                  <td><%=rs.getString("address")%></td>
                  <th>PIN Code</th>
                  <td><%=rs.getString("pin")%></td>
                </tr>
              </table>
            </div>
           </div>
          </div>
        
</body>
</html>

<%
    }

    stmt.close();
    conn.close();
}

catch(Exception e)
{
    e.printStackTrace();
    }
%>
