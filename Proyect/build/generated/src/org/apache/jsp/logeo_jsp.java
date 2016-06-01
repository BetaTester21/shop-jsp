package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.*;
import java.util.*;
import Modelo.cliente;

public final class logeo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\" />\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0\" />\n");
      out.write("\t<title>Proyecto  ");
      out.print(session.getAttribute("gAppTitle") );
      out.write("</title>\n");
      out.write("        <link href=\"http://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/materialize.min.css\"  media=\"screen,projection\"/>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <h3 class=\"center\">Login</h3>\n");
      out.write("    <div class=\"row\">\n");
      out.write("    <form class=\"col s12\" method=\"post\" action=\"Login\">\n");
      out.write("        <input type=\"hidden\" name=\"accion\" value=\"logeo\" />\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <div class=\"input-field col s6\">\n");
      out.write("                <i class=\"material-icons prefix\">perm_identity</i> \n");
      out.write("                <input id=\"icon_perm_identity\" class=\"validate\" autocomplete=\"off\" type=\"text\" name=\"txtUsuario\" required=\"\">\n");
      out.write("                <label for=\"first_name\">User Name</label>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <div class=\"input-field col s6\">\n");
      out.write("                <i class=\"material-icons prefix\">vpn_key</i>\n");
      out.write("                <input id=\"icon_vpn_key\" class=\"validate\" autocomplete=\"off\" type=\"password\" name=\"txtPassword\" required=\"\">\n");
      out.write("                <label for=\"first_name\">Password</label>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("        <div>\n");
      out.write("            <button class=\"btn waves-effect waves-light center\">Ingresar<i class=\"material-icons right\">send</i></button>\n");
      out.write("            <a href=\"registar.jsp\" class=\"btn waves-notransition\">view_list</i>Catalogo<span class=\"new badge\"></span></a></li>\n");
      out.write("        </div>\n");
      out.write("    </form>     \n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("<script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-2.1.1.min.js\"></script>\n");
      out.write("      <script type=\"text/javascript\" src=\"js/materialize.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("  </html>");
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
