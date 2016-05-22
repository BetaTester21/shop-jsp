<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body>
        <div class="container">
            <%
                            ArrayList<DetalleVenta> lista = DetalleVentaBD.obtenerDetalleVenta(Integer.parseInt(request.getParameter("cod")));
                                     
                                 for (int i=0;i<lista.size();i++) {
                                     DetalleVenta d=lista.get(i);
                            
                %>
            <table>
        <thead>
          <tr>
              <th data-field="id">CodigoVenta</th>
              <th data-field="id">Cliente</th>
              <th data-field="id">Fecha</th>
              <th data-field="id">CodigoProducto</th>
              <th data-field="id">Nombre</th>
              <th data-field="id">Precio</th>
              <th data-field="id">Cantidad</th>
              <th data-field="id">Descuento</th>
              <th data-field="id">Parcial</th>
              <th data-field="id">SubTotal</th>
              <th data-field="id">TotalPagar</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td><%= d.getCodigoVenta() %></td>
            <td><%= d.getCliente() %></td>
            <td><%= d.getFecha() %></td>
            <td><%= d.getCodigoProducto() %></td>
            <td><%= d.getNombre() %></td>
            <td><%= d.getPrecio() %></td>
            <td><%= d.getCantidad() %></td>
            <td><%= d.getDescuento() %></td>
            <td><%= d.getParcial() %></td>
            <td><%= d.getSubtotal() %></td>
            <td><%= d.getTotal() %></td>
          </tr>
        </tbody>
      </table>
          <a href="obtenerDetalleVenta.jsp?cod=<%= d.getCodigoVenta() %>" target="detalle">Pagar</a>
                <%
                            }
                %>
        </div>

            