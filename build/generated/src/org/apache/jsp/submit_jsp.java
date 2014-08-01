package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class submit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <title>A Decentralized Self-Adaptation Mechanism</title>\n");
      out.write("  <meta name=\"description\" content=\"website description\" />\n");
      out.write("  <meta name=\"keywords\" content=\"website keywords, website keywords\" />\n");
      out.write("  <meta http-equiv=\"content-type\" content=\"text/html; charset=windows-1252\" />\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"style/style.css\" title=\"style\" />\n");
      out.write("   \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <div id=\"main\">\n");
      out.write("    <div id=\"header\">\n");
      out.write("      <div id=\"logo\">\n");
      out.write("        <div id=\"logo_text\"><br>\n");
      out.write("          <!-- class=\"logo_colour\", allows you to change the colour of the text -->\n");
      out.write("   <font size=\"6\" color=\"white\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Changing the QoS Requirements<br> \n");
      out.write(" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for Service Based Applications in Cloud&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;using Decentralized Self-Adaptation Mechanism</font>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"menubar\">\n");
      out.write("        <ul id=\"menu\">\n");
      out.write("          <!-- put class=\"selected\" in the li tag for the selected page - to highlight which page you're on -->\n");
      out.write("          <li class=\"selected\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("          <li><a href=\"view.jsp\">View Account</a></li>\n");
      out.write("          <li><a href=\"update.jsp\">Update</a></li>\n");
      out.write("          <li><a href=\"upload.jsp\">Application Upload</a></li>\n");
      out.write("          \n");
      out.write("          <li><a href=\"download.jsp\">Application Download</a></li>\n");
      out.write("          <li><a href=\"user.jsp\">Logout</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"site_content\"><br>\n");
      out.write("      \n");
      out.write("                      \n");
      out.write("           ");

 try
{
 String a="",b="",c="",d="",e="",f="",g="",h="";
 String x=request.getParameter("select");
 String a11=request.getQueryString();
 session.setAttribute("a11", a11);
 //String f=(String)session.getAttribute("select");
 //String d = request.getParameter("select");
  Class.forName("com.mysql.jdbc.Driver");	
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");
 Statement st=con.createStatement();
 Statement st1=con.createStatement();
 ResultSet rs=st.executeQuery("select * from upload");
 ResultSet rs1=st1.executeQuery("select * from account");
 while(rs.next())
 {
   
           // a= rs.getString(4);
            b= rs.getString(7);
            //c= rs.getString(12);
            //d=rs.getString(13);
            //out.println(a);
            
 }     
   while(rs1.next())
 {
            //e= rs1.getString(2);
            f=rs1.getString(3);
            //g=rs1.getString(4);
            //h=rs1.getString(5);
            //out.println(b);
 }    
  // int i=Integer.parseInt(a);
   int j=Integer.parseInt(b);
  // int k=Integer.parseInt(c);
   //int l=Integer.parseInt(d);
   
  // int m=Integer.parseInt(e);
   int n=Integer.parseInt(f);
   //int o=Integer.parseInt(g);
   //int p=Integer.parseInt(h);
    //if(c.equals(d))
    //{
   if(j<n)
         { 
             
             out.println(" Bids submitted successfully ");
             
      out.write("\n");
      out.write("             <br><br>\n");
      out.write("             <font size=\"4\"color=\"blue\">\n");
      out.write("             ");

             out.println("Download the Application by clicking download button");
         
         
      out.write("\n");
      out.write("         <br><br>\n");
      out.write("          <td>\n");
      out.write("          <form action=\"download2.jsp\"method=\"post\">\n");
      out.write("              <input type=\"submit\" value=\"Download\"/>\n");
      out.write("              </td>\n");
      out.write("           ");

         }
        else 
   {
       
      out.write("\n");
      out.write("       <font size=\"4\"color=\"pink\">\n");
      out.write("             out.println(\"Bids and Asks are not matched\");\n");
      out.write("   \n");
      out.write("               %>\n");
      out.write("                <br><br>      <td>\n");
      out.write("          <form action=\"download.jsp\"method=\"post\">\n");
      out.write("              <input type=\"submit\" value=\"Again Place a Bid\"/>\n");
      out.write("              </td>\n");
      out.write("                     \n");
      out.write("      \n");
      out.write("              ");

   }
   
     
        
}      
 catch(Exception ex)
{
   out.println("Error in connection : "+ex);
       
}                    
            
                
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("                        \n");
      out.write("      <div id=\"content\">\n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"content_footer\"></div>\n");
      out.write("    <div id=\"footer\">\n");
      out.write("     Sree Vidyanikethan Engineering College\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
