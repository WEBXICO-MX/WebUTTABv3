<%-- 
    Document   : index2
    Created on : 10-nov-2015, 15:42:24
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; TSU en Tecnologías de la Información y Comunicación área Multimedia y Comercio Electrónico</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,TSU en Tecnologías de la Información y Comunicación área Sistemas Informáticos">
        <meta name="keywords" content="TSU en Tecnologías de la Información y Comunicación área Sistemas Informáticos,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carreras2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../../../../includeHeader.min.jsp?origen=carrera" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="carrera_section">
                <header class="carrera_titulo">
                    <h2><span class="texto_oferta_educativa">Oferta educativa</span> / División Académica de Tecnologías de la Información y Comunicación</h2>
                    <h1>TSU en Tecnologías de la Información y Comunicación área Multimedia y Comercio Electrónico</h1>
                    <div class="corte"></div>
                </header>
                <article class="carrera_contenido">
                    <section class="carrera_portada">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/portada_tsu_tic_multimedia_comercio_electronico.jpg" alt="TSU en Tecnologías de la Información y Comunicación área Sistemas Informáticos"/>
                            <!--<img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_certificado_CIIES.png" alt="Certificado CIIES" class="icono_ciies"/>-->
                            <!--<img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_video.png" alt="Video" class="icono_video"/>-->
                            <!-- Plan de estudio -->
                            <s:url var="url_plan_estudio" action="viewFile" namespace="">
                              <s:param name="i" value="4"></s:param>
                              <s:param name="d" value="%{'tics'}"></s:param>
                            </s:url>
                            <s:a href="%{url_plan_estudio}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_plan_estudios.png" alt="Plan de estudios" class="icono_plan_estudio"/></s:a>
                            <!-- Perfil ejecutivo -->
                            <s:url var="url_perfil_ejecutivo" action="viewFile" namespace="">
                              <s:param name="i" value="40"></s:param>
                              <s:param name="d" value="%{'tics'}"></s:param>
                            </s:url>
                            <s:a href="%{url_perfil_ejecutivo}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_perfil_ejecutivo.png" alt="Perfil ejecutivo" class="icono_perfil_ejecutivo"/></s:a>
                        </figure>
                    </section>
                    <!-- Beneficios de las carreras -->
                    <jsp:include page="../../../../includeBeneficios.jsp?origen=carrera" flush="true"  />
                    <!-- Beneficios de las carreras -->
                    <section class="carrera_texto">
                        <article class="carrera_texto1">
                            <figure style="display:inline-block;">
                                <img src="${pageContext.request.contextPath}/img/divisiones/carreras/people.png" alt="Tener gusto por:"/>
                            </figure>
                            <h3>Tener gusto por:</h3>
                            <ul>
                                <li>El razonamiento lógico-matemático</li>
                                <li>El análisis</li>
                                <li>La capacidad de innovación y creatividad</li>
                                <li>La capacidad de resolución de problemas</li>
                                <li>Emprender tu propia empresa</li>
                            </ul><br/>
                            <figure style="display:inline-block;">
                                <img src="${pageContext.request.contextPath}/img/divisiones/carreras/maletin.png" alt="¿Dónde podrá trabajar?"/>
                            </figure>
                            <h3>¿Dónde podrá trabajar?</h3>
                            <ul>
                                <li>En empresas públicas y privadas como líder de proyectos de e-comerce</li>
                                <li>En empresas que requieran realizar comercio electrónico</li>
                                <li>En su propia empresa como diseñador y programador</li>
                                <li>Como consultor y administrador de sitios web y de e-comerce</li>
                                <li>En empresas que requieran gestores de TI</li>
                            </ul><br/>
                        </article>
                        <article class="carrera_texto2">
                            <h3>¿Qué aprenderá durante la carrera?</h3><br/><br/>
                            <ul>
                                <li>Crear aplicaciones multimedia</li>
                                <li>Desarrollar y gestionar un sitio de comercio electrónico</li>
                                <li>Desarrollar aplicaciones web para contribuir al desarrollo de la organización</li>
                                <li>Desarrollo de sistemas de información web</li>
                                <li>Formular planes de negocio de comercio electrónico</li>
                            </ul>
                        </article>
                        <div class="corte"></div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../../../../includePie.min.jsp?origen=carrera" flush="true" />
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/Morphext-2.4.4/morphext.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/carreras.min.js"></script>
    </body>
</html>