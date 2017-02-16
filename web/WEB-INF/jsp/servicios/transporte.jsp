<%-- 
    Document   : transporte
    Created on : 25-nov-2015, 15:32:28
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Servicio de transporte escolar</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Servicio de transporte escolar">
        <meta name="keywords" content="servicios,Servicio de transporte escolar,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]--> 
    </head>
    <body>
        <main>
             <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Servicios / Alumnos</span> /</h2>
                    <h1>Servicio de transporte escolar</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        
                        <p>La Universidad ofrece de lunes a viernes, a los alumnos, el servicio de transporte gratuito para asistir a clases, contando con el apoyo de un minibús y cuatro autobuses, bajo este contexto se establecieron siete corridas de lunes a viernes.</p>
                        <img src="${pageContext.request.contextPath}/img/conocenos/campus/campus2-min.png" alt="Servicio de transporte escolar"/>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />        
        </main>
    </body>
</html>