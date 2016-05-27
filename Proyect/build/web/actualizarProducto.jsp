<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Inicio de JSP --> 
  <jsp:directive.include file="header.jsp" />
  <%@page import="Modelo.ProductoBD"%>
  <% Producto p= ProductoBD.obtenerProducto(Integer.parseInt(request.getParameter("id")));
  %>
 <div class="container">
				<h4 class="center">ACTUALIZAR PRECIO </h4>
        <form method="post" action="controlador">
                <input type="hidden" name="accion" value="ModificarProducto" />
                <table>
                    <tr>
                        <td>Codigo</td>
                        <td><input type="text" name="txtCodigo" value="<%= p.getCodigoProducto()%>" readonly class="btn-flat disabled"/></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="txtNombre" value="<%= p.getNombre()%>" class="btn-flat disabled" /></td>
                    </tr>
                    <tr>
                        <td>Precio</td>
                        <td><input type="text" name="txtPrecio" value="<%= p.getPrecio()%>" /></td>
                    </tr>
                    <tr>
                        <td>Categorias</td>
                        <td><input type="text" name="txtPrecio" value="<%= p.getPrecio()%>" /></td>
                    </tr>
                    <tr><input class="btn center" type="submit" value="Actualizar" name="btnActualizar"/>
                    </tr>
                </table>
        </form>
 </div>
<jsp:directive.include file="footer.jsp" />