<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*,java.util.*" %>
  <!-- Inicio de JSP --> 
  <jsp:directive.include file="header.jsp" />
  <div class="container">
      <h4 class="center">CONSULTA DE VENTAS</h4>
      <table>
        <thead>
          <tr>
              <th data-field="id">Codigo</th>
              <th data-field="id">Nombre</th>
              <th data-field="id">Fecha</th>
              <th data-field="id">Detalle</th>
              <th data-field="id">Eleminar</th>
          </tr>
          </thead>
                <%
                            String usu=user;
                            ArrayList<Venta> lista = VentaBD.obtenerVentas(usu);
                                 for (Venta v : lista) {
                %>
                <tr>
                    <td><%= v.getCodigoVenta() %></td>
                    <td><%= v.getCliente() %></td>
                    <td><%= v.getFecha() %></td>
                    <%-- Enlaces a las paginas de actualizar o anadir al carrito --%>
                    <td><a href="obtenerDetalleVenta.jsp?cod=<%= v.getCodigoVenta() %>" target="detalle">ver Detalle</a></td>
                    <td><a href="suprimir.jsp?cod=<%= v.getCodigoVenta() %>" >Eliminar</a></td>  
                </tr>
                <%
                            }
                %>
            </table>
            </div>
       <p>
            <div id="mostrarDato">
                <iframe name="detalle" width="100%" height="500px" frameborder="0" > 
                
                </iframe>
            </div>


<jsp:directive.include file="footer.jsp" />