<%-- 
    Document   : fecha_hora
    Created on : 13-oct-2015, 8:33:53
    Author     : Weiss
--%>
<%@page import="mx.edu.uttab.util.Utilerias"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="application/json" pageEncoding="UTF-8" session="false"%>
<%
Calendar now = Calendar.getInstance();
StringBuilder json = new StringBuilder("{");
json.append("\"dia_semana\":").append(new Integer(now.get(Calendar.DAY_OF_WEEK))).append(",");
json.append("\"dia\":").append(new Integer(Utilerias.getFechaDia(now))).append(",");
json.append("\"mes\":").append(new Integer(Utilerias.getFechaMes(now))).append(",");
json.append("\"anio\":").append(new Integer(Utilerias.getFechaAno(now))).append(",");
json.append("\"hora\":").append(new Integer(Utilerias.getFechaHoras(now))).append(",");
json.append("\"minutos\":").append(new Integer(Utilerias.getFechaMinutos(now))).append(",");
json.append("\"segundos\":").append(new Integer(Utilerias.getFechaSegundos(now)));
json.append("}");
out.print(json.toString());
out.flush();
%>