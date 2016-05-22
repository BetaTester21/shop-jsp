<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Inicio de JSP --> 
  <jsp:directive.include file="header.jsp" />
    <h3 class="center">Lista de Productos</h3>
                    
        <div class="container">
            <table>
                <%
                  ArrayList<Producto> lista = ProductoBD.obtenerProducto();
                  int salto=0;
                  for (Producto p : lista) {
                %>     
               
                <th class="center">
                        <img src="imagenes/<%=p.getImagen()%>" class="Product center"><p class="center">
                    <%= p.getNombre()%><br>
                    S/ <%= p.getPrecio()%><p class="center">
                    <a href="actualizarProducto.jsp?id=<%= p.getCodigoProducto()%>"><i class="material-icons center">info_outline</i></a>
                    <a href="anadirCarrito.jsp?id=<%= p.getCodigoProducto()%>"><i class="material-icons center">shopping_basket</i></a>
                    </th>
                <%
                salto++;
                if(salto==4){
                    %>
                    <tr> 
                        <%
                        salto=0;
                }
                            }
                %>  
            </table>
        </div>
<jsp:directive.include file="footer.jsp" />