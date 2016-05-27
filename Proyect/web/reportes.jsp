<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Inicio de JSP --> 
  <jsp:directive.include file="header.jsp" />
  <div class="container">
      <h3 class="center active">Reportes</h3>
  <table class="center">
      <td class="Product center">
          <a href="ReporteUser.jsp"><img src="UserPlataforma/User.png" class="Product center"><br>
              Reporte Usuarios</a>
      </td>
      <td class="Product center">
          <a href="#"><img src="UserPlataforma/Ventas.png" class="Product center"><br>
              Reporte Ventas</a>
      </td>
      <td class="Product center">
          <a><img src="UserPlataforma/Productos.png" class="Product center"><br>
              Reporte Productos</a>
      </td>


   </table>
  </div>
  <jsp:directive.include file="footer.jsp" />