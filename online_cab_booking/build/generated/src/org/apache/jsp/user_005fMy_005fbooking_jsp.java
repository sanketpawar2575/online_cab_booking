package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_005fMy_005fbooking_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("jou\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>mybooking</title>\n");
      out.write("           <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        body\n");
      out.write("        {\n");
      out.write("            background-image:url(\"images/1.jpg\");\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-size: 100%;\n");
      out.write("        }\n");
      out.write("        .row\n");
      out.write("        {\n");
      out.write("            height: 650px;\n");
      out.write("            width: 470px;\n");
      out.write("            background-color: white;\n");
      out.write("            margin-top: 40px;\n");
      out.write("            margin-left: 500px;\n");
      out.write("            opacity: 0.8;\n");
      out.write("        }\n");
      out.write("        .picture\n");
      out.write("        {\n");
      out.write("            background-color:#eb99ff;\n");
      out.write("            height: 90px;\n");
      out.write("            width: 470px;\n");
      out.write("            padding-top: 10px;\n");
      out.write("         \n");
      out.write("        }\n");
      out.write("        h1\n");
      out.write("        {\n");
      out.write("            font-size: 50px;\n");
      out.write("            color:white;\n");
      out.write("             padding-top: -80px;\n");
      out.write("             font-family:Kristen ITC;\n");
      out.write("        }\n");
      out.write("        .color\n");
      out.write("        {\n");
      out.write("            background-color: gray;\n");
      out.write("            height: 560px;\n");
      out.write("            width: 470px;\n");
      out.write("        }\n");
      out.write("        .line\n");
      out.write("        {\n");
      out.write("            height: 40px;\n");
      out.write("            width: 280px;\n");
      out.write("            margin-top: 50px;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            font-size: 20px;\n");
      out.write("           \n");
      out.write("            margin-left: 20px;\n");
      out.write("            border-color: black;\n");
      out.write("        }\n");
      out.write("        .button\n");
      out.write("        {\n");
      out.write("             height: 40px;\n");
      out.write("              margin-top: 50px;\n");
      out.write("               border-radius: 20px;\n");
      out.write("               font-size: 20px;\n");
      out.write("               border-color: black;\n");
      out.write("               color: black;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        .button1\n");
      out.write("        {\n");
      out.write("            margin-left: 150px;\n");
      out.write("            margin-top: 100px;\n");
      out.write("            color: white;\n");
      out.write("            background-color: #595959;\n");
      out.write("            height: 40px;\n");
      out.write("            width: 200px;\n");
      out.write("            font-size: 25px;\n");
      out.write("            border-radius: 20px;\n");
      out.write("            border: none;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div class=\"picture\">\n");
      out.write("                <h1 align=\"center\">MY BOOKING</h1>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"color\">\n");
      out.write("                <div class=\"col-sm-9\">\n");
      out.write("                     <input class=\"line\" type=\"line\" placeholder=\"1.Booking\">\n");
      out.write("                     <input class=\"line\" type=\"line\" placeholder=\"2.Booking\">\n");
      out.write("                     <input class=\"line\" type=\"line\" placeholder=\"3.Booking\">\n");
      out.write("                      <input class=\"line\" type=\"line\" placeholder=\"4.Booking\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-3\">\n");
      out.write("                     <input class=\"button\" type=\"submit\" value=\"Track\">\n");
      out.write("                    <input class=\"button\" type=\"submit\" value=\"Track\">\n");
      out.write("                     <input class=\"button\" type=\"submit\" value=\"Track\">\n");
      out.write("                     <input class=\"button\" type=\"submit\" value=\"Track\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <input class=\"button1\" type=\"submit\" value=\"Close\">\n");
      out.write("                \n");
      out.write("               \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("       \n");
      out.write("        \n");
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
