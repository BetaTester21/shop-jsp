
<%@page import="Modelo.*,java.util.*" %>
<%@page import="Modelo.cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
	<title>Proyecto  <%=session.getAttribute("gAppTitle") %></title>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
  <div class="container">
    <h3 class="center">Login</h3>
    <div class="row">
    <form class="col s12" method="post" action="Login">
        <input type="hidden" name="accion" value="logeo" />
            <div class="row">
              <div class="input-field col s6">
                <i class="material-icons prefix">perm_identity</i> 
                <input id="icon_perm_identity" class="validate" autocomplete="off" type="text" name="txtUsuario" required="">
                <label for="first_name">User Name</label>
              </div>
            </div>
            <div class="row">
              <div class="input-field col s6">
                <i class="material-icons prefix">vpn_key</i>
                <input id="icon_vpn_key" class="validate" autocomplete="off" type="password" name="txtPassword" required="">
                <label for="first_name">Password</label>
              </div>
            </div>
        <div class="center">
            <button class="btn waves-effect waves-light center">Ingresar<i class="material-icons right">send</i></button>
            <a href="registrar.jsp" class="btn waves-notransition">Registrar</a>
        </div>
    </form>     
    </div>
    </div>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
  </html>