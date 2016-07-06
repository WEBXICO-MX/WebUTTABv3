<%-- 
    Document   : includeMenu
    Created on : 30-jun-2015, 14:25:32
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.html">Control Sistemas (<s:property value="#session['nombre']" />)</a>
    </div>
    <!-- /.navbar-header -->
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <s:url id="HomeURL" action="Home" namespace="" var="HomeURL"></s:url>
                    <a href="<s:property value="#HomeURL"/>" target="_blank"><i class="fa fa-home"></i> Ir al sitio web</a>
                    <a href="${pageContext.request.contextPath}/SistemasAdmin/actividades/input.action" <%= request.getParameter("q") != null ? (request.getParameter("q").equals("actividades") ? "class=\"active\"":""):"" %> ><i class="fa fa-bullhorn"></i> Actividades Universitarias</a>
                    <a href="${pageContext.request.contextPath}/SistemasAdmin/eventos/input.action" <%= request.getParameter("q") != null ? (request.getParameter("q").equals("eventos") ? "class=\"active\"":""):"" %>><i class="fa fa-thumb-tack"></i> Eventos (Banners Principales)</a>
                    <a href="${pageContext.request.contextPath}/SistemasAdmin/gaceta/input.action" <%= request.getParameter("q") != null ? (request.getParameter("q").equals("gacetas") ? "class=\"active\"":""):"" %>><i class="fa fa-newspaper-o"></i> Gacetas</a>
                    <a href="${pageContext.request.contextPath}/SistemasAdmin/avisos/input.action" <%= request.getParameter("q") != null ? (request.getParameter("q").equals("avisos") ? "class=\"active\"":""):"" %>><span class="fa fa-star"></span> Avisos</a>
                <s:url id="logoutURL" action="logout" namespace="/SistemasAdmin/usuarios" var="logoutURL"></s:url>
                <a href="<s:property value="#logoutURL"/>"><i class="fa fa-sign-out"></i> CERRAR SESIÓN</a>
                </li>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>
