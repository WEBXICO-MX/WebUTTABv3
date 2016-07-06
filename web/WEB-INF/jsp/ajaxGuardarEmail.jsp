<%@page import="java.util.Calendar,leerdirectorio.Archivo,leerdirectorio.ErrorSistema,mx.edu.uttab.util.Utilerias"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%
    if (request.getParameter("xAccion") != null) {
        if (request.getParameter("xAccion").equals("GrabarTxt")) {
            new Archivo().concatenar(getServletContext().getRealPath("WEB-INF/lista_correos.txt"), request.getParameter("txtEmail") + "," + Utilerias.getCadenaFecha(Calendar.getInstance()));
        }
    }
%>