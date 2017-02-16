<%-- 
    Document   : proyectos_incubados2.jsp
    Created on : 25/11/2015, 10:50:54 AM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Proyectos Incubados</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Proyectos Incubados">
        <meta name="keywords" content="vinculación,Centro de Incubación y Desarrollo de Negocios,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> / <span class="texto_resaltado">Centro de Incubación y Desarrollo de Negocios</span></h2>
                    <h1>Proyectos Incubados</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <div class="vinculacion_btnsMenu">
                            <a href="https://www.youtube.com/watch?v=gpLr8aI-_xo" target="_blank"><img src="${pageContext.request.contextPath}/img/vinculacion/incubadora/btn_video.png" alt="Video"/></a>
                        </div>
                        <div class="corte"></div>
                    </section>
                    <section class="vinculacion_texto">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/vinculacion/incubadora/proyectos-incubados_03-min.png" alt="Proyectos Incubados"/>
                        </figure>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />             
        </main>
    </body>
</html>