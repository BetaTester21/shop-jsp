<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Inicio de JSP --> 
  <jsp:directive.include file="header.jsp" />
   <%@page import="Modelo.ProductoBD"%>
  <% Producto p= ProductoBD.obtenerProducto(Integer.parseInt(request.getParameter("id")));
  %>
  <div class="container">
      <h4 class="center"> <strong>AÑADIR PRODUCTO</strong> </h4>                         
        <form method="post" action="controlador">
                <input type="hidden" name="accion" value="AnadirCarrito" />
                <table class="center">
                    <tr>
                        <td>Codigo</td>
                        <td><input type="text" name="txtCodigo" value="<%= p.getCodigoProducto()%>" readonly class="btn-flat disabled"/></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="txtNombre" value="<%= p.getNombre()%>" readonly class="btn-flat disabled"/></td>
                    </tr>
                    <tr>
                        <td>Precio</td>
                        <td><input type="text" name="txtPrecio" value="<%= p.getPrecio()%>" readonly /></td>
                    </tr>
                    <tr>
                        <td>Cantidad Pedir</td>
                        <td><input required="" type="text" name="txtCantidad" value="0" /></td>
                    </tr>
                    <tr>
                        <th><img src="imagenes/<%= p.getImagen()%>" width="120" height="120"></th>
                        <td><input class="btn" type="submit" value="Añadir" name="btnAnadir" /></td>
                    </tr>
                </table>
        </form>
    </div>
<jsp:directive.include file="footer.jsp" />