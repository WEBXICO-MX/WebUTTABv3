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
        <!-- METAS FACEBOOK -->
        <meta content='UTTAB &#124; Sintonía UTTAB 102.5 FM' property='og:title'/>
        <meta content='http://www.uttab.edu.mx/img/logo_ut_shared_facebook.png' property='og:image'/>
        <meta content='La radio universitaria, Sintonía UTTAB "La perfecta armonía de tus sentidos", tiene como objetivo difundir y promover el quehacer científico, cultural y deportivo de la UTTAB, siendo una puerta de enlace entre la Universidad Tecnológica de Tabasco y la comunidad, con una oferta radiofónica innovadora, social y cultural.' property='og:description'/>
        <meta content='http://www.uttab.edu.mx/sintonia/radio.action' property='og:url'/>
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sintonia2.min.css"/>
        <style>
            #radio { width:385px}
            #sintonia_botones { margin-bottom: 15px; text-align: right;}
            #sintonia_banner {margin-bottom: 15px;}
            #sintonia_botones a img:hover {opacity:0.8;filter:alpha(opacity=80); /* For IE8 and earlier */}
            #sintonia_contenido > div {width:574px;height: auto; /*margin-left: 15px;*/ float:left;}
            #sintonia_contenido table tbody tr td::first-letter { text-transform: capitalize}
            #sintonia_contenido table thead th {background-color: #D78C39;color:#FDF9F7; height: 40px;font-size: 1em}
            #programacion_sintonia table tbody tr td{ text-align: center;}
            #sintonia_contenido table thead tr th {border-right:#FDF9F7 solid 1px; background-color: #FF5200; text-align: center;}
            #sintonia_contenido ul {list-style-position:  inside;}
            #sintonia_contenido ul li { margin-bottom: 10px;}
            #programacion_sintonia { margin-top: 20px;}
        </style>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../../index3Header.min.jsp" flush="true"  />
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
                            <div class="corte"></div>
                        </div>
                        <div class="corte"></div>
                    </section>
                    <div class="corte"></div>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../../index3Footer.min.jsp" flush="true"  />                  
        </main>
        
        <script src="${pageContext.request.contextPath}/js/otras_secciones/sintonia.min.js"></script>
    </body>
</html>