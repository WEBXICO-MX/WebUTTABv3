<%-- 
    Document   : inicio2
    Created on : 30-nov-2015, 15:02:59
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Sintonía UTTAB 102.5 FM</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Sintonía UTTAB 102.5 FM">
        <meta name="keywords" content="servicios,Sintonía UTTAB 102.5 FM,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sintonia.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            #radio { width:385px}
            #sintonia_botones { margin-bottom: 15px; text-align: right;}
            #sintonia_banner {margin-bottom: 15px;}
            #sintonia_botones a img:hover {opacity:0.8;filter:alpha(opacity=80); /* For IE8 and earlier */}
            #sintonia_contenido > div {width:574px;height: auto; margin-left: 15px; float:left;}
            #sintonia_contenido table tbody tr td::first-letter { text-transform: capitalize}
            #sintonia_contenido table thead th {background-color: #D78C39;color:#FDF9F7; height: 40px;font-size: 1em}
            #programacion_sintonia table tbody tr td{ text-align: center;}
            #sintonia_contenido table thead tr th {border-right:#FDF9F7 solid 1px; background-color: #FF5200; text-align: center;}
            #sintonia_contenido ul {list-style-position:  inside;}
            #sintonia_contenido ul li { margin-bottom: 10px;}
            #programacion_sintonia { margin-top: 20px;}
        </style>
    </head>
    <body>
        <jsp:include page="/WEB-INF/jsp/includeHeader.jsp" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="sintonia_section">
                <header class="sintonia_titulo">
                    <h2><span class="texto_resaltado">Otras secciones</span> /</h2>
                    <h1>Sintonía UTTAB 102.5 FM</h1>
                    <div class="corte"></div>
                </header>
                <article class="sintonia_contenido">
                    <section class="sintonia_texto_full">
                        <div id="sintonia_botones"></div>
                        <div id="sintonia_banner"></div>
                        <div id="sintonia_contenido">
                            <div>&nbsp;</div>
                            <div id="sintonia_ajax" style="margin-left: 15px; margin-right: 15px; float: right; width:383px; height:401.609px; background-image: url( ${pageContext.request.contextPath}/img/otras_secciones/radio/background.png)">&nbsp;</div>
                            <div style="clear: both"></div>
                        </div>
                        <div style="clear: both"></div>
                    </section>
                    <div style="clear: both"></div>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.jsp" flush="true" />
        <script src="${pageContext.request.contextPath}/js/otras_secciones/sintonia.min.js"></script>
    </body>
</html>