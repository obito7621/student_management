<!doctype html>
<script src="view_stu.html">
        </script>
     <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*" %>
    
<%
     String var1 = request.getParameter("roll");   
try
{
Class.forName("com.mysql.jdbc.Driver");
String query="select * from student_info where roll="+ var1;
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/poject","root","");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);

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
         <script>
   $(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("slow");
		$("flip").blur(function(){
        $(this).css("background-color", "#ffffff");
});
    });
});
   </script>
   
            <script>
   $(document).ready(function(){
    $("#flip1").click(function(){
        $("#panel1").slideToggle("slow");
    });
});
   </script>
	            <script>
   $(document).ready(function(){
    $("#flip2").click(function(){
        $("#panel2").slideToggle("slow");
    });
});
   </script>
   <script>
      $("#outer").click(function(e) {
    var target = $(e.target);
    if (!target.is('.outer *')) {
      $(".panel").toggle();
    }
});

   </script>
   
         <title>Student Information Form</title>
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
                      
                        <a href="teach_log.html"><button>Home</button></a><br/>
                        
                        <a href="view_stu.html"><button>Student list</button></a> 
                       
                      
                       </div>
                    </div>
                    
        <!-- Form -->
        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7 head2">
        <form name="demo" method="POST">
            <table style="border:none">
            <tr>
                <th>First Name:</th>
                <th>Middle Name:</th>
                <th>Last Name:</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("fname")%>
                </td>
                <td>
                    <%=rs.getString("mname")%>
                </td>
                <td>
                    <%=rs.getString("lname")%>
                </td>
            </tr>
            <tr>
                <th>Date Of Birth</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("dob")%>
                </td>
            </tr>
            <tr>
                <th>Father's Name</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("father_name")%>
                </td>
            </tr>
            <tr>
                <th>Father's Phone Number</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("fno")%>
                </td>
            </tr>
            <tr>
                <th>Mother's Name</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("mother_name")%>
                </td>
            </tr>
            <tr>
                <th>Gender</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("gender")%>
                </td>
            </tr>
            <tr>
                <th>Address</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("address")%>
                </td>
            </tr>
            <tr>
                <th>City</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("city")%>
                </td>
            </tr>
            <tr>
                <th>PIN Code</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("pin")%>
                </td>
            </tr>
            <tr>
                <th>Admission Date</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("adate")%>
                </td>
            </tr>
            <tr>
                <th>Roll Number</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("roll")%>
                </td>
            </tr>
            <tr>
                <th>Enrollment Number</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("eroll")%>
                </td>
            </tr>
            <tr>
                <th>E-mail ID</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("email")%>
                </td>
            </tr>
            <tr>
                <th>Branch</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("branch")%>
                </td>
            </tr>
            <tr>
                <th>Username</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("uname")%>
                </td>
            </tr>
            <tr>
                <th>Password</th>
            </tr>
            <tr>
                <td>
                    <%=rs.getString("pass")%>
                </td>
            </tr>
            
        </table>
        </form>
        </div>
            </div>  
       
              </div>
           </div>
           
             
           <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
       </body>
</html>
<%
    }

%>
    <%
    stmt.close();
    conn.close();
    
    
}

catch(Exception e)
{
    e.printStackTrace();
    }
%>
