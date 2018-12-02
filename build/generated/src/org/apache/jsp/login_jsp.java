package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Log In</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("        <script src=\"Login Form.html\">\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

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
                    
      out.write("\n");
      out.write("                    ");
      if (true) {
        _jspx_page_context.forward("stu_log.html");
        return;
      }
      out.write("\n");
      out.write("                    ");

                    
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
        
      out.write("\n");
      out.write("    \n");
      out.write("\n");
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
