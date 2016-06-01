<%-- 
    Document   : registrar
    Created on : 01/06/2016, 07:49:03 AM
    Author     : Betax
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="net.sf.jasperreports.engine.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%
Connection conexion; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
conexion = DriverManager.getConnection("jdbc:mysql://localhost/bdcarrito", "root", "");
File reportFile = new File(application.getRealPath("Reporte/usuarios.jasper")); 
Map parameters = new HashMap(); parameters.put("Nombre_parametro", "Valor_Parametro"); 
byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath (), parameters, conexion); 
response.setContentType("application/pdf");
response.setContentLength(bytes.length); 
ServletOutputStream ouputStream = response.getOutputStream(); 
ouputStream.write(bytes, 0, bytes.length);
ouputStream.flush(); 
ouputStream.close();
%>