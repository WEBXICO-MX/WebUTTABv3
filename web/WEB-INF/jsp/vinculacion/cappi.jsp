<%-- 
    Document   : cappi.jsp
    Created on : 25/11/2015, 09:22:14 AM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Apoyo para la Protección de la Propiedad Intelectual (CAPPI)</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Apoyo para la Protección de la Propiedad Intelectual (CAPPI)">
        <meta name="keywords" content="vinculación,Centro de Apoyo para la Protección de la Propiedad Intelectual,CAPPI,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h2><span class="texto_resaltado">Vinculación</span> / <span class="texto_resaltado">Centro de Incubación y Desarrollo de Negocios</span></h2>
                    <h1>Centro de Apoyo para la Protección de la Propiedad Intelectual</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/vinculacion/cappi/cappi_03-min.png" alt="Centro de Apoyo para la Protección de la Propiedad Intelectual (CAPPI)"/>
                        </figure>
                    </section>
                    <section class="vinculacion_texto">
                        <p>El Centro de Apoyo para la Protección de la Propiedad Intelectual, tiene como objetivo llevar a cabo actividades de apoyo para los empresarios en la protección de sus productos y servicios, para que estos sean de calidad y competitivos en el mercado. Por ello se ofrece asesoría especializada para el registro de invenciones y signos distintivos como  herramientas de competitividad en la empresa.</p>
                        <br/>
                        <h4 class="tituloContenido">Servicios:</h4>
                        <br>
                        <p>Facilitar a los investigadores y empresas la presentación correcta de las solicitudes de:</p>
                        <br>
                        <ul>
                            <li>Promoción y difusión de la propiedad intelectual.</li>
                            <li>Clasificación de productos y servicios (clasificación de Niza)</li>
                            <li>Búsqueda de anterioridades fonéticas para el registro.</li>
                            <li>Asesoría para registro de signos distintivos (marca, nombre comercial, aviso comercial y denominación de origen).</li>
                            <li>Trámite y seguimiento de registro de signos distintivos (marca, nombre comercial, aviso comercial y denominación de origen).</li>
                            <li>Búsqueda tecnológica en bases de patentes a nivel nacional e internacional.</li>
                            <li>Trámite y asesoría para solicitud de invenciones (patente, modelo de utilidad, diseño industrial).</li>
                        </ul>
                        <br>
                        <h4 class="tituloContenido">¿A quiénes atendemos?</h4>
                        <br>
                        <p>A todas aquellas PyMES que quieran obtener el registro de marcas para sus servicios o productos; a los centros de investigación, instituciones públicas y privadas, organismos no gubernamentales, e investigadores independientes, así como alumnos que realicen actividades de investigación científica y tecnológica, desarrollo tecnológico y producción de ingeniería básica y avanzada que quieren obtener registro de marca,  patente o modelo de utilidad.</p>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>José Alfredo Moreno Díaz</p>
                                <p>Jefe del Departamento del Centro de Incubación y Desarrollo de Negocios</p>
                                <p>Tel: +52 (993) 3.58.22.22 Ext. 2015</p>
                                <p>Correo institucional: <a href="mailto:emprendedores@uttab.edu.mx">emprendedores@uttab.edu.mx</a></p>
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