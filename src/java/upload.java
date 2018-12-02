
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@WebServlet(urlPatterns = {"/upload"})
@MultipartConfig(maxFileSize = 16177215)    
public class upload extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            try
        {
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
            String var15=request.getParameter("branch");
            String var16=request.getParameter("session");
            String var19=request.getParameter("address");
            String var20=request.getParameter("city");
            String var21=request.getParameter("pin");
            String var22=request.getParameter("uname");
            String var23=request.getParameter("pass");
            String var24=request.getParameter("high");
            String var25=request.getParameter("inter");
            Part filePart = request.getPart("photo");
            int h=Integer.parseInt(var24);
            int k=Integer.parseInt(var25);
            InputStream inputStream=filePart.getInputStream();
            
        Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection
        ("jdbc:mysql://localhost:3306/poject","root","");
        String sql=("INSERT INTO student_info (fname,mname,lname,dob,adate,roll,eroll,email,father_name,fno,stu_phone,mother_name,gender,category,branch,session,address,city,pin,photo,high_school,inter) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
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
          
           if (inputStream != null) {
              ps.setBlob(20, inputStream);
            }
           ps.setInt(21, h);
           ps.setInt(22, k);
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
     catch(Exception e)
     { 
      out.print(e);
     }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
