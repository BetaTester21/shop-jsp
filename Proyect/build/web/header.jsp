
<%@page import="Modelo.*,java.util.*" %>
<%@page import="Modelo.cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
	<title>Proyecto <%=session.getAttribute("gAppTitle") %></title>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
      <%
            String user=null;
            //Evaluacion de Sesion
            if(session.getAttribute("gUser")==null){
                response.sendRedirect("logeo.jsp");
            }else{
                user=(String) session.getAttribute("gUser");
            }
        %>
        <nav>
                <div class="nav-wrapper">
                    <a href="" class="brand-logo">Tienda Virtual</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="index.jsp"><i class="material-icons left">view_list</i>Catalogo<span class="new badge"></span></a></li>
                    <li><a href="registrarProducto.jsp"><i class="material-icons left">store</i>Producto</a></li>
                    <li><a href="registrarVenta.jsp"><i class="material-icons left">shopping_cart</i>Ventas</a></li>
                    <li><a href="consultarVentas.jsp"><i class="material-icons left">description</i>Detalle de Ventas</a></li>
                    <li><a href="reportes.jsp"><i class="material-icons left">assignment</i>Reporte</a></li>
                    <li><a href="Logout"><i class="material-icons left">power_settings_new</i>Salir</a></li>
                    </ul>
                </div>
            </nav>
                <div>
                <div class="chip">
                   <img class="plataforma">
                   <%=user%>
                </div>
     
 