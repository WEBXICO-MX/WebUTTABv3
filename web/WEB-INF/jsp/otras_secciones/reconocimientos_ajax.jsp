<%-- 
    Document   : reconocimientos_ajax
    Created on : 04-ene-2017, 17:04:04
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%
String titulo = request.getParameter("xTitulo") != null ? request.getParameter("xTitulo"):"";
String img = request.getParameter("xIMG") != null ? request.getParameter("xIMG"):"";

%>
<img src="${pageContext.request.contextPath}/img/otras_secciones/reconocimientos/<%=img%>" alt="<%=titulo%>"/>