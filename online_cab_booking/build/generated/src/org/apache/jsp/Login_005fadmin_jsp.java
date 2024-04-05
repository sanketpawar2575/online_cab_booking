package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_005fadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("   \n");
      out.write("        <style>\n");
      out.write("        body\n");
      out.write("        {\n");
      out.write("            background-image: url(\"images/1.jpg\");\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-size: 100%;\n");
      out.write("        }\n");
      out.write("      \n");
      out.write("        \n");
      out.write("        h1\n");
      out.write("        {\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            color:whitesmoke;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        .login\n");
      out.write("        {\n");
      out.write("            \n");
      out.write("            height: 600px;\n");
      out.write("            width: 350px;\n");
      out.write("            background-image: url(\"images/8.jpg\");\n");
      out.write("            margin-left: 750px;\n");
      out.write("            padding-top: 50px;\n");
      out.write("            \n");
      out.write("            border-radius: 20px;\n");
      out.write("            opacity: 0.8;\n");
      out.write("           \n");
      out.write("            \n");
      out.write("             \n");
      out.write("            \n");
      out.write("        \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .textbox\n");
      out.write("        {\n");
      out.write("            height: 30px;\n");
      out.write("            width: 250px;\n");
      out.write("            margin-left: 50px;\n");
      out.write("            margin-top: 50px;\n");
      out.write("           \n");
      out.write("            background-color: gold;\n");
      out.write("            border-color: black;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            font-size: 17px;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        a\n");
      out.write("        {\n");
      out.write("            padding-left: 100px;\n");
      out.write("           \n");
      out.write("        }\n");
      out.write("        .button1\n");
      out.write("        {\n");
      out.write("            height: 30px;\n");
      out.write("            width: 250px;\n");
      out.write("            margin-top: 20px;\n");
      out.write("            margin-left: 50px;\n");
      out.write("           background-color: gray;\n");
      out.write("            border: gray;\n");
      out.write("        }\n");
      out.write("        .button2\n");
      out.write("        {\n");
      out.write("            height: 40px;\n");
      out.write("            width: 250px;\n");
      out.write("            margin-top: 20px;\n");
      out.write("            margin-left: 50px;\n");
      out.write("            background-color:bisque;\n");
      out.write("          border: none;\n");
      out.write("          font-size: 20px;\n");
      out.write("          border-radius: 10px;\n");
      out.write("          \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        h1{\n");
      out.write("            padding-top: 0px;\n");
      out.write("        }\n");
      out.write("        hr\n");
      out.write("        {\n");
      out.write("            margin-top: 20px;\n");
      out.write("            width: 300px;\n");
      out.write("        }\n");
      out.write("        .pic\n");
      out.write("        {\n");
      out.write("            background-image: url(\"images/admin.png\");\n");
      out.write("            height: 100px;\n");
      out.write("            width: 150px;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-size: 90%;\n");
      out.write("            background-position: center;\n");
      out.write("            margin-left: 100px;\n");
      out.write("            margin-top: 50px;\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("       .textbox1\n");
      out.write("       {\n");
      out.write("           height: 100px;\n");
      out.write("           width: 100px;\n");
      out.write("           margin-left: 150px;\n");
      out.write("           \n");
      out.write("       }\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("  \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <div class=\"login\">\n");
      out.write("            <h1 align=\"center\">User Login</h1>\n");
      out.write("            <div class=\"pic\">\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("             \n");
      out.write("            <input class=\"textbox\" type=\"text\" placeholder=\"Enter Mobile Number or Email\">\n");
      out.write("            \n");
      out.write("            <input type=\"password\"  class=\"textbox\" placeholder=\"Enter Password\">\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("           \n");
      out.write("            <a href=\"\">Forgotten Password?</a>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <input type=\"submit\"  value=\"Log In\" class=\"button1\">\n");
      out.write("            <br>\n");
      out.write("            <hr>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("           \n");
      out.write("            <input type=\"submit\"  value=\"Create a Account\" class=\"button2\">\n");
      out.write("            \n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("            \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
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
