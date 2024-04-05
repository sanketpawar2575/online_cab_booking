package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_005fpayment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>payment</title>\n");
      out.write("             <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"https://kit.fontawesome.com/a076d05399.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <style>\n");
      out.write("        body\n");
      out.write("        {\n");
      out.write("          background-image: url(\"images/1.jpg\");\n");
      out.write("          background-size: 100%;\n");
      out.write("          background-repeat: no-repeat;\n");
      out.write("        }\n");
      out.write("        .row\n");
      out.write("        {\n");
      out.write("            \n");
      out.write("            height: 650px;\n");
      out.write("            width: 450px;\n");
      out.write("            opacity: 0.7;\n");
      out.write("            margin-top: 50px;\n");
      out.write("            margin-left: 550px;\n");
      out.write("            border-radius: 50px;\n");
      out.write("            background-color:#333333;\n");
      out.write("        }\n");
      out.write("        .pic\n");
      out.write("        {\n");
      out.write("            height:100px;\n");
      out.write("            width: 100px;\n");
      out.write("            margin-top: px;\n");
      out.write("            \n");
      out.write("           \n");
      out.write("        }\n");
      out.write("        h1\n");
      out.write("        {\n");
      out.write("            color: white;\n");
      out.write("            margin-top: -80px;\n");
      out.write("            margin-left: 150px;\n");
      out.write("        }\n");
      out.write("        .line\n");
      out.write("        {\n");
      out.write("            margin-left: 150px;\n");
      out.write("            margin-top: 10px;\n");
      out.write("            width: 150px;\n");
      out.write("            height: 30px;\n");
      out.write("            background-color: #333333;\n");
      out.write("            border-radius: 20px;\n");
      out.write("            font-size: 20px;\n");
      out.write("            color: white;\n");
      out.write("           \n");
      out.write("            border-color: white;\n");
      out.write("              border-left: none;\n");
      out.write("            border-right:  none;\n");
      out.write("            border-top: none;\n");
      out.write("        }\n");
      out.write("        h3\n");
      out.write("        {\n");
      out.write("            color: white;\n");
      out.write("            margin-top: 20px;\n");
      out.write("            font-size: 15px;\n");
      out.write("            margin-left: 20px;\n");
      out.write("        }\n");
      out.write("        .line1\n");
      out.write("        {\n");
      out.write("            margin-top: 40px;\n");
      out.write("            margin-left: 50px;\n");
      out.write("            height: 40px;\n");
      out.write("            width: 320px;\n");
      out.write("            border-color: white;\n");
      out.write("            color: white;\n");
      out.write("            font-size: 20px;\n");
      out.write("            background-color: #333333;\n");
      out.write("            border-radius: 15px;\n");
      out.write("            border-left: none;\n");
      out.write("            border-right:  none;\n");
      out.write("            border-top: none;\n");
      out.write("        }\n");
      out.write("        h4\n");
      out.write("        {\n");
      out.write("            color: white;\n");
      out.write("            font-size: 15px;\n");
      out.write("            margin-left: 20px;\n");
      out.write("            margin-top: 20px;\n");
      out.write("        }\n");
      out.write("        i{\n");
      out.write("            margin-left: 20px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        q{\n");
      out.write("            margin-left: 50px;\n");
      out.write("        }\n");
      out.write("        button\n");
      out.write("        {\n");
      out.write("            background-color: #333333;\n");
      out.write("            color:white; \n");
      out.write("            border-left: none;\n");
      out.write("            border-right: none;\n");
      out.write("            border-top: none;\n");
      out.write("            border-bottom: none;\n");
      out.write("           \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        y\n");
      out.write("        {\n");
      out.write("            font-size: 80px;\n");
      out.write("            margin-left: 30px;\n");
      out.write("            color: skyblue;\n");
      out.write("            padding-top: 35px;\n");
      out.write("          \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .lab1\n");
      out.write("        {\n");
      out.write("           \n");
      out.write("            margin-left: 65px;\n");
      out.write("          font-size: 20px;\n");
      out.write("          color: white;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("           .lab2\n");
      out.write("        {\n");
      out.write("           \n");
      out.write("            margin-left: 45px;\n");
      out.write("          font-size: 20px;\n");
      out.write("          color: white;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("      \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <div class=\"row\">\n");
      out.write("             \n");
      out.write("            <div class=\"pic\">\n");
      out.write("                 <y class=\"fab fa-amazon-pay\"></y>\n");
      out.write("            </div>\n");
      out.write("            <h1>Total Payment</h1>\n");
      out.write("          \n");
      out.write("           \n");
      out.write("            <input class=\"line\" type=\"text\" placeholder=\"Amount\">\n");
      out.write("            <br>\n");
      out.write("            <h3>Custamer Details<span style=\"color: gray\">-------------------------------------------------</span></h3>\n");
      out.write("            <input class=\"line1\"  type=\"text\" placeholder=\"   Name\">  <i class=\"fa fa-pencil\"></i>\n");
      out.write("            <br>\n");
      out.write("            <input class=\"line1\" type=\"text\" placeholder=\"   Enter Email\">\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <input class=\"line1\" type=\"number\" placeholder=\"   Contact No\">\n");
      out.write("            <br>\n");
      out.write("            <h4>Select Payment Method<span style=\"color:grey\">---------------------------------------</span></h4>\n");
      out.write("            <br><br>\n");
      out.write("            <div class=\"col-sm-6\" >\n");
      out.write("                  <button style='font-size:40px;margin-left:60px;'> <s class='fas fa-credit-card'></s></button>\n");
      out.write("                  <br>\n");
      out.write("                  <label class=\"lab1\"> Card </label>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-6\" >\n");
      out.write("                <button style=\"font-size:40px;margin-left:40px;\"> <s class=\"fas fa-hand-holding-usd\"> </s></button>\n");
      out.write("                <br>\n");
      out.write("                  <label class=\"lab2\"> Cash </label>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("         \n");
      out.write("           \n");
      out.write("           \n");
      out.write("\n");
      out.write("             \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
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
