package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <title>A Decentralized Self-Adaptation Mechanism</title>\n");
      out.write("  <meta name=\"description\" content=\"website description\" />\n");
      out.write("  <meta name=\"keywords\" content=\"website keywords, website keywords\" />\n");
      out.write("  <meta http-equiv=\"content-type\" content=\"text/html; charset=windows-1252\" />\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"style/style.css\" title=\"style\" />\n");
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
      out.write("          <li><a href=\"admin.jsp\">Admin</a></li>         \n");
      out.write("           <li><a href=\"user.jsp\">User Login</a></li>\n");
      out.write("          <li><a href=\"reg.jsp\">Registration</a></li>\n");
      out.write("          \n");
      out.write("          <li><a href=\"chair.jsp\">Market</a></li>\n");
      out.write("         \n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"site_content\"><br>\n");
      out.write("      <h2><font color=\"black\"> Welcome</h2><br>\n");
      out.write("      <img src=\"cc.jpg\"/> <br><br>\n");
      out.write("      <div id=\"content\">\n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"content_footer\"></div>\n");
      out.write("    <div id=\"footer\">\n");
      out.write("      Sree Vidyanikethan Engineering College\n");
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
