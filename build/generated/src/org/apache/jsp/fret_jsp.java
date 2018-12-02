package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class fret_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!doctype html>\n");
      out.write("<script src=\"view_stu.html\">\n");
      out.write("        </script>\n");
      out.write("     \n");
      out.write("        \n");
      out.write("    \n");

     String var1 = request.getParameter("roll");   
try
{
Class.forName("com.mysql.jdbc.Driver");
String query="select * from student_info where roll="+ var1;
//String query="select * from registration";
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/poject","root","");
Statement stmt=conn.createStatement();
//ResultSet rs=stmt.executeQuery(query);
ResultSet rs=stmt.executeQuery(query);
int flag=0;
      while(rs.next())
        {
        

      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"Bootstrap/css/bootstrap.min.css\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"Logstu.css\" type=\"text/css\">\n");
      out.write("         <script src=\"Bootstrap/js/jquery-3.2.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("         <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("         <!--<script src=\"Bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>-->\n");
      out.write("         <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script> \n");
      out.write("         <title>Student Details Table</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("               <div class=\"head\">\n");
      out.write("                  <div class=\"col-lg-4\">\n");
      out.write("                     <img src=\"Images/images.jpg\" class=\"img-responsive img-circle\" style=\"height:85px; width:90px; margin-top:-15px;\"/>\n");
      out.write("                  </div>\n");
      out.write("                  <span style=\"text-shadow:3px 2px #C60; font-size:24px; margin-left:-350px;\">Amrapali Institute of Technology and Sciences</span>\n");
      out.write("                  <a href=\"Home.html\" style=\"margin-left:1220px; margin-top:20px; font-size:15px; color:#309; font-weight:bold;\">Logout</a>                              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("              <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-2\">\n");
      out.write("                    <div class=\"head1\">\n");
      out.write("                       <a href=\"teach_log.html\"><button style=\"padding-left:17px;\">Home</button></a><br/>\n");
      out.write("                       <a href=\"\"><button style=\"padding-left:15px;\">Student list</button></a> \n");
      out.write("                    </div>\n");
      out.write("                 </div>\n");
      out.write("               <div class=\"col-lg-8\">\n");
      out.write("                  <div class=\"table-responsive\">\n");
      out.write("                 <table class=\" table table-striped table-hover\">\n");
      out.write("                   <tr>\n");
      out.write("                     <th>Name</th>\n");
      out.write("                     <td>");
      out.print(rs.getString("fname"));
      out.write(' ');
      out.print(rs.getString("mname"));
      out.write(' ');
      out.print(rs.getString("lname"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                     <tr>\n");
      out.write("                     <th>Date Of Birth</th>\n");
      out.write("                     <td>");
      out.print(rs.getString("dob"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                     <th>Gender</th>\n");
      out.write("                     <td>");
      out.print(rs.getString("gender"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                     <tr>\n");
      out.write("                     <th>Roll No.</th>\n");
      out.write("                     <td>");
      out.print(rs.getString("roll"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                     <th>Enrollment No.</th>\n");
      out.write("                     <td>");
      out.print(rs.getString("eroll"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                     <tr>\n");
      out.write("                     <th>Admission Date</th>\n");
      out.write("                     <td>");
      out.print(rs.getString("adate"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                     <tr>\n");
      out.write("                     <th>Session</th>\n");
      out.write("                     <td>2014-18</td>\n");
      out.write("                   </tr>\n");
      out.write("                     <tr>\n");
      out.write("                     <th>Category</th>\n");
      out.write("                     <td>General</td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                     <th>Student's Phone No.</th>\n");
      out.write("                     <td>");
      out.print(rs.getString("fno"));
      out.write("</td>\n");
      out.write("                  \n");
      out.write("                </tr>\n");
      out.write("                   <tr>\n");
      out.write("                     <th>Email</th>\n");
      out.write("                     <td>");
      out.print(rs.getString("email"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                   \n");
      out.write("                 </table>\n");
      out.write("                   </div>\n");
      out.write("                 </div>\n");
      out.write("             \n");
      out.write("               <div class=\"col-lg-2 table-responsive\">\n");
      out.write("                 <table>\n");
      out.write("                    <tr>\n");
      out.write("                      <td><img src=\"Images/DSC_0000075.jpg\" style=\"width:150px; height:150px; margin-top:40px;\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                 </table>\n");
      out.write("               </div>\n");
      out.write("              </div>\n");
      out.write("             </div>\n");
      out.write("             \n");
      out.write("         \n");
      out.write("        <div class=\"container-fluid\" style=\"margin-top: 30px;\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <div class=\" col-lg-offset-2 col-lg-10 table-responsive\" style=\"margin-top:-350px;\">\n");
      out.write("                <h2 style=\"color:#696; font-size:24px; font-family:Gotham, 'Helvetica Neue', Helvetica, Arial, sans-serif;\">Personal Details</h2>\n");
      out.write("              <table class=\"table table-striped table-hover\">\n");
      out.write("                <tr>\n");
      out.write("                  <th>Father's Name</th>\n");
      out.write("                  <td>");
      out.print(rs.getString("father_name"));
      out.write("</td>\n");
      out.write("                  <th>Mother's Name</th>\n");
      out.write("                  <td>");
      out.print(rs.getString("mother_name"));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                  <th>Father's Phone No.</th>\n");
      out.write("                  <td>");
      out.print(rs.getString("fno"));
      out.write("</td>\n");
      out.write("                \n");
      out.write("                   <th>Mother's Phone No.</th>\n");
      out.write("                  <td>");
      out.print(rs.getString("fno"));
      out.write("</td>\n");
      out.write("                \n");
      out.write("                <tr style=\"width: 100%;\">\n");
      out.write("                  <th>Address</th>\n");
      out.write("                  <td>");
      out.print(rs.getString("address"));
      out.write("</td>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr>\n");
      out.write("                     <th>City</th>\n");
      out.write("                  <td>");
      out.print(rs.getString("city"));
      out.write("</td>\n");
      out.write("                  <th>PIN Code</th>\n");
      out.write("                  <td>");
      out.print(rs.getString("pin"));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("              </table>\n");
      out.write("            </div>\n");
      out.write("           </div>\n");
      out.write("          </div>\n");
      out.write("        \n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");

    }


    stmt.close();
    conn.close();
    
}

catch(Exception e)
{
    e.printStackTrace();
    }

      out.write("\n");
      out.write("\n");
      out.write("             <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("             <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
