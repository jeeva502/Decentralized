package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.OutputStream;
import sun.security.util.Password;
import java.sql.*;
import java.sql.Connection;

public final class download2_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

 

try
               {
    //String id=(String)session.getAttribute("id1");
    
         //String fn=request.getParameter("fn");
        
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");
   Statement st=con.createStatement();
   Statement st1=con.createStatement();
   ResultSet rs=st1.executeQuery("select * from upload");
   ResultSet rs1=st.executeQuery("select * from upload");
   while(rs.next())
                 {
                    String a=rs.getString(4);
                 }
      while(rs1.next())
                 {
           Blob b = rs1.getBlob(3);
          String dataname =rs1.getString(4);
			dataname+=".exe";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("APPLICATION/DOWNLOAD");
			response.setHeader("Content-Disposition","attachment; filename=\""+dataname+"\"");
			 OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
                        response.sendRedirect("download.jsp?Success");
                 }       
         
         
               }
catch(Exception r)
               {
     r.printStackTrace();
       
}

      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
