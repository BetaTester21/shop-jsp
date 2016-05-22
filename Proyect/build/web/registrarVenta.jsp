<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Inicio de JSP --> 
  <jsp:directive.include file="header.jsp" />
  <div class="container row">
      <h4 class="center">REGISTRO DE VENTAS</h4>
      <form method="post" action="controlador">
          <table>
        <thead>
            <tr>
              <th data-field="name">Compras de <%=user%></th>
          </tr>
          <tr>
              <th data-field="Name">Nombre</th>
              <th data-field="Precio">Precio</th>
              <th data-field="Cantidad">Cantidad</th>
              <th data-field="Descuento">Descuento</th>
              <th data-field="Subtotal">Sub.Total</th>
          </tr>
        </thead>
        <tbody>
            <%
    double total=0;
        ArrayList<DetalleVenta> lista = (ArrayList<DetalleVenta>)session.getAttribute("carrito");
        if(lista!=null){
            
            for (DetalleVenta d : lista) {
    %>
          <tr>
            <td><%= d.getProducto()%></td>
            <td><%= d.getProducto().getPrecio()%></td>
            <td><%= d.getCantidad()%></td>
            <td><%= d.getDescuento()%></td>
            <td><%= (d.getProducto().getPrecio() * d.getCantidad())-d.getDescuento()%></td>
            <td><a href="registrarVenta.jsp?d=<%= d.getCodigoProducto()%>" class="btn"  >eliminar</a></td>
          </tr>
          <%
        
    
    total=total+(d.getProducto().getPrecio() * d.getCantidad())-d.getDescuento();
                    }
               }
    %>
          <tr>
            <th data-field="Total">Total</th>
            <th data-field="Total"><input type="text" name="txtTotal" value="S/ <%=total%>"/></th>
          </tr>
          <tr>
              <td><input class="btn" type="submit" name="accion" value="RegistrarVenta" /></td>
              <td><a class="btn" href="Credito.jsp?id=<%=user%>&total=<%=total%>">cuota</a></td>
          </tr>    
        </tbody>
      </table>
</form>      
    <a class="btn center" href="index.jsp">Mas Compra</a>
</div>
  
<jsp:directive.include file="footer.jsp" />