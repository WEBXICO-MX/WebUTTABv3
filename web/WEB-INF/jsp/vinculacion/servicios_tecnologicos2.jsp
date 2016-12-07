<%-- 
    Document   : servicios_tecnologicos2.jsp
    Created on : 25/11/2015, 12:41:05 PM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Servicios Tecnológicos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Servicios Tecnológicos">
        <meta name="keywords" content="vinculación,Servicios Tecnológicos,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>Servicios Tecnológicos</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/vinculacion/serv_tecnologicos/Servicios-Tecnológicos-_03-min.png" alt="Servicios Tecnológicos"/>
                        </figure>
                    </section>
                    <section class="vinculacion_texto">
                        <h4 class="tituloContenido">¿Quiénes somos?</h4>
                        <br/>
                        <p>El departamento colabora con el sector productivo durante toda la cadena de valor desde la materia prima hasta el producto final en los ámbitos de:</p><br/>
                        <ul>
                            <li>Pruebas de calidad</li>
                            <li>Comercialización y mercadotecnia</li>
                            <li>Estudios, proyectos y consultorías especializadas</li>
                            <li>Desarrollo de aplicaciones web y móvil</li>
                            <li>Servicios de tecnología e innovación</li>
                        </ul><br/>
                        <p>El proceso de Servicios Tecnológicos es uno de los procesos certificados ante la Norma ISO 9001:2008 de la Universidad Tecnológica de Tabasco.</p>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Laura Beatriz Guzmán Priego</p>
                                <p>Directora de Servicios Especializados</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2005</p>
                                <p>Correo institucional: <a href="mailto:d.especializados@uttab.edu.mx">d.especializados@uttab.edu.mx</a></p>
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