package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.*;
import java.util.*;
import Modelo.cliente;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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

      out.write("\r\n");
      out.write("  <!-- Inicio de JSP --> \r\n");
      out.write("  ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\" />\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0\" />\n");
      out.write("\t<title>Proyecto ");
      out.print(session.getAttribute("gAppTitle") );
      out.write("</title>\n");
      out.write("        <link href=\"http://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("      <link type=\"text/css\" rel=\"stylesheet\" href=\"css/materialize.min.css\"  media=\"screen,projection\"/>\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("      ");

            String user=null;
            //Evaluacion de Sesion
            if(session.getAttribute("gUser")==null){
                response.sendRedirect("logeo.jsp");
            }else{
                user=(String) session.getAttribute("gUser");
            }
        
      out.write("\n");
      out.write("        <nav>\n");
      out.write("                <div class=\"nav-wrapper\">\n");
      out.write("                    <a href=\"\" class=\"brand-logo\">Tienda Virtual</a>\n");
      out.write("                    <ul id=\"nav-mobile\" class=\"right hide-on-med-and-down\">\n");
      out.write("                    <li><a href=\"Prueba.jsp\"><i class=\"material-icons left\">store</i>Prueba</a></li>\n");
      out.write("                    <li><a href=\"index.jsp\"><i class=\"material-icons left\">view_list</i>Catalogo<span class=\"new badge\"></span></a></li>\n");
      out.write("                    <li><a href=\"registrarProducto.jsp\"><i class=\"material-icons left\">store</i>Producto</a></li>\n");
      out.write("                    <li><a href=\"registrarVenta.jsp\"><i class=\"material-icons left\">shopping_cart</i>Ventas</a></li>\n");
      out.write("                    <li><a href=\"consultarVentas.jsp\"><i class=\"material-icons left\">description</i>Detalle de Ventas</a></li>\n");
      out.write("                    <li><a href=\"reportes.jsp\"><i class=\"material-icons left\">assignment</i>Reporte</a></li>\n");
      out.write("                    <li><a href=\"Logout\"><i class=\"material-icons left\">power_settings_new</i>Salir</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("                <div>\n");
      out.write("                <div class=\"chip\">\n");
      out.write("                   <img class=\"plataforma\">\n");
      out.write("                   ");
      out.print(user);
      out.write("\n");
      out.write("                </div>\n");
      out.write("          \n");
      out.write(" ");
      out.write("\r\n");
      out.write("    <h3 class=\"center\">Lista de Productos</h3>\r\n");
      out.write("                    \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <table>\r\n");
      out.write("                ");

                  ArrayList<Producto> lista = ProductoBD.obtenerProducto();
                  int salto=0;
                  for (Producto p : lista) {
                
      out.write("     \r\n");
      out.write("               \r\n");
      out.write("                <th class=\"center\">\r\n");
      out.write("                        <img src=\"imagenes/");
      out.print(p.getImagen());
      out.write("\" class=\"Product center\"><p class=\"center\">\r\n");
      out.write("                    ");
      out.print( p.getNombre());
      out.write("<br>\r\n");
      out.write("                    S/ ");
      out.print( p.getPrecio());
      out.write("<p class=\"center\">\r\n");
      out.write("                    <a href=\"actualizarProducto.jsp?id=");
      out.print( p.getCodigoProducto());
      out.write("\"><i class=\"material-icons center\">info_outline</i></a>\r\n");
      out.write("                    <a href=\"anadirCarrito.jsp?id=");
      out.print( p.getCodigoProducto());
      out.write("\"><i class=\"material-icons center\">shopping_basket</i></a>\r\n");
      out.write("                    </th>\r\n");
      out.write("                ");

                salto++;
                if(salto==4){
                    
      out.write("\r\n");
      out.write("                    <tr> \r\n");
      out.write("                        ");

                        salto=0;
                }
                            }
                
      out.write("  \r\n");
      out.write("            </table>\r\n");
      out.write("        </div>\r\n");
      out.write(" <footer class=\"page-footer\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <div class=\"col l6 s12\">\n");
      out.write("                <h5 class=\"white-text\">Tienda Virtual</h5>\n");
      out.write("                <p class=\"grey-text text-lighten-4\">Tienda de compras de productos de supermercado.</p>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"col l4 offset-l2 s12\">\n");
      out.write("                <h5 class=\"white-text\">Links</h5>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"footer-copyright\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("            © 2016 Copyright BetaX\n");
      out.write("            <a class=\"grey-text text-lighten-4 right\" href=\"#!\">More Links</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </footer>\n");
      out.write("<!--Import jQuery before materialize.js-->\n");
      out.write("      <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-2.1.1.min.js\"></script>\n");
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
