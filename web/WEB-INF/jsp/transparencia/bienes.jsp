<%-- 
    Document   : bienes
    Created on : 22-dic-2015, 13:35:51
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Bienes</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Programa Institucional de Desarrollo (PIDE)">
        <meta name="keywords" content="transparencia,Programa Institucional de Desarrollo (PIDE),tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/transparencia2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="transparencia_section">
                <header class="transparencia_titulo">
                    <h2><span class="texto_resaltado">Transparencia</span> /</h2>
                    <h1>Bienes</h1>
                    <div class="corte"></div>
                </header>
                <article class="transparencia_contenido">
                    <section class="transparencia_texto">
                        <br/><br/>
                        <s:url var="url_bienes_1" action="viewFile" namespace="">
                           <s:param name="i" value="%{1}"></s:param>
                           <s:param name="d" value="%{'bienes'}"></s:param>
                         </s:url>
                         <s:url var="url_bienes_2" action="viewFile" namespace="">
                           <s:param name="i" value="%{2}"></s:param>
                           <s:param name="d" value="%{'bienes'}"></s:param>
                         </s:url>
                        <s:url var="url_bienes_3" action="viewFile" namespace="">
                           <s:param name="i" value="%{3}"></s:param>
                           <s:param name="d" value="%{'bienes'}"></s:param>
                         </s:url>
                        <s:url var="url_bienes_4" action="viewFile" namespace="">
                           <s:param name="i" value="%{4}"></s:param>
                           <s:param name="d" value="%{'bienes'}"></s:param>
                         </s:url>
                        <ul>
                            <li><img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt=""/>&nbsp;<s:a href="%{url_bienes_4}" target="_blank">BIENES MUEBLES JUNIO 2016</s:a></li>
                            <li><img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt=""/>&nbsp;<s:a href="%{url_bienes_3}" target="_blank">RELACION DE BIENES MUEBLES; INMUEBLES E INTANGIBLES QUE COMPONEN EL PATRIMONIO</s:a></li>
                            <li><img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt=""/>&nbsp;<s:a href="%{url_bienes_2}" target="_blank">RELACION DE BIENES MUEBLES E INMUEBLES AL 31 DE DICIEMBRE DE 2015</s:a></li>
                            <li><img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt=""/>&nbsp;<s:a href="%{url_bienes_1}" target="_blank">RELACION DE BIENES MUEBLES E INMUEBLES</s:a></li>
                        </ul>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=transparencia" flush="true" />
    </body>
</html>
