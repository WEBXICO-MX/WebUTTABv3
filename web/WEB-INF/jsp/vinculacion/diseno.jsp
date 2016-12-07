<%-- 
    Document   : diseno.jsp
    Created on : 25/11/2015, 11:01:29 AM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Diseño e Imagen</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Diseño e Imagen">
        <meta name="keywords" content="vinculación,Diseño e Imagen,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>Diseño e Imagen</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/vinculacion/diseno/diseno-e-imagen_03-min.png" alt="diseno"/>
                        </figure>
                    </section>
                    <section class="vinculacion_texto">
                        <h4 class="tituloContenido">¿Quiénes somos?</h4>
                        <br/>
                        <p>El departamento de Editorial es responsable de asesorar, diseñar, propagar, cuidar y consolidar la imagen institucional, así como divulgar los conocimientos científicos, tecnológicos y humanísticos del quehacer universitario a través de la Gaceta, la Pagina WEB y las redes sociales.</p>
                        <br/>
                        <p>Dentro de sus funciones está:</p>
                        <br/>
                        <ul>
                            <li>Diseño de carpetas promocionales</li>
                            <li>Diseño de carteles</li>
                            <li>Diseño de imagen gráfica a eventos especiales</li>
                            <li>Revistas</li>
                            <li>Diseño de lonas</li>
                            <li>Diseño de imagen corporativa</li>
                            <li>Banners para página web</li>
                            <li>Diseño editorial de libros, folletos y catálogos</li>
                            <li>Diseño de imagen para productos emprendedores seleccionados para concursos a nivel nacional</li>
                            <li>Convocatorias</li>
                        </ul>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Anakaren Hernández González</p>
                                <p>Encargada de Diseño e Imagen</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 8006</p>
                                <p>Correo institucional: <a href="mailto:editorial@uttab.edu.mx">editorial@uttab.edu.mx</a></p>
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