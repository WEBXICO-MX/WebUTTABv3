<%-- 
    Document   : cecap.jsp
    Created on : 24/11/2015, 02:06:13 PM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Atención al Sector Energético</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Atención al Sector Energético">
        <meta name="keywords" content="vinculación,Centro de Atención al Sector Energético,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=vinculacion" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Centro de Atención al Sector Energético</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <figure><img src="${pageContext.request.contextPath}/img/vinculacion/cap/cap1-min.png" alt="CAP"/></figure><br/>
                            <p class="primera_linea">El Centro de Atención al Sector Energético tiene como actividad sustantiva mantener una estrecha vinculación con Petróleos Mexicanos, a través de sus diversas subsidiarias, administrando proyectos de capacitación sobre la industria petrolera, capacitación sobre perforación y mantenimiento a pozos; administrando los pozos-escuelas en "El Castaño" Dos Bocas en Tabasco y "Burgos" en Reynosa, Tamaulipas.</p><br/>
                            <p class="primera_linea">Por otra parte, proporcionar servicios de ingeniería de proyectos y asistencia técnica en la construcción, operación, mantenimiento y administración; así como todo lo relacionado con tecnología de la información.</p>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Guillermo Oliver González Rodríguez</p>
                                <p>Coordinador del Centro de Atención al Sector Energético</p>
                                <p>Número directo: +52 (993) 3.58.22.10</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2017 | 2018</p>
                                <p>Correo institucional: <a href="mailto:case@uttab.edu.mx">case@uttab.edu.mx</a></p>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=vinculacion" flush="true" />
    </body>
</html>