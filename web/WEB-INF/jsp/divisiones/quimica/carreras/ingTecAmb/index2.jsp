<%-- 
    Document   : index2
    Created on : 10-nov-2015, 14:02:09
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Ingeniería en Tecnología Ambiental</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Ingeniería en Tecnología Ambiental">
        <meta name="keywords" content="Ingeniería en Tecnología Ambiental,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
        <jsp:include page="../../../../includeHeader.jsp?origen=carrera" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="carrera_section">
                <header class="carrera_titulo">
                    <h2><span class="texto_oferta_educativa">Oferta educativa</span> / División Académica de Química</h2>
                    <h1>Ingeniería en Tecnología Ambiental</h1>
                    <div class="corte"></div>
                </header>
                <article class="carrera_contenido">
                    <section class="carrera_portada">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/portada_ing_tecnología_ambiental.png" alt="Ingeniería en Tecnología Ambiental"/>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_certificado_CIIES.png" alt="Certificado CIIES" class="icono_ciies"/>
                            <a href="https://youtu.be/Oh72XolATgc" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_video.png" alt="Video" class="icono_video"/></a>
                            <!-- Plan de estudio -->
                            <s:url id="url_plan_estudio" action="viewFile" namespace="">
                              <s:param name="i" value="6"></s:param>
                              <s:param name="d" value="%{'quimica'}"></s:param>
                            </s:url>
                            <s:a href="%{url_plan_estudio}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_plan_estudios.png" alt="Plan de estudios" class="icono_plan_estudio"/></s:a>
                            <!-- Perfil ejecutivo -->
                            <s:url id="url_perfil_ejecutivo" action="viewFile" namespace="">
                              <s:param name="i" value="60"></s:param>
                              <s:param name="d" value="%{'quimica'}"></s:param>
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
                                <li>La química, física y matemáticas</li>
                                <li>La investigación y el trabajo de campo</li>
                                <li>El cuidado del medio ambiente</li>
                                <li>El desarrollo sustentable</li>
                                <li>Innovación y desarrollo de nuevas tecnologías</li> 
                            </ul><br/>
                            <figure style="display:inline-block;">
                                <img src="${pageContext.request.contextPath}/img/divisiones/carreras/maletin.png" alt="¿Dónde podrá trabajar?"/>
                            </figure>
                            <h3>¿Dónde podrá trabajar?</h3>
                            <ul>
                                <li>En el sector público y privado como ingeniero de calidad y medio ambiente</li>
                                <li>Como consultor e inspector ambiental</li>
                                <li>Como gerente de seguridad, salud y ambiente</li>
                                <li>En laboratorios para el control de calidad ambiental</li>
                                <li>En el sector de investigación relacionada al medio ambiente</li>
                            </ul><br/>
                        </article>
                        <article class="carrera_texto2">
                            <h3>¿Qué aprenderá durante la carrera?</h3><br/><br/>
                            <ul>
                                <li>Desarrollar soluciones de prevención y remediación de impactos al ambiente</li>
                                <li>Optimizar el uso de los recursos con un enfoque sustentable</li>
                                <li>Usar herramientas tecnológicas para la mitigación de contaminantes</li>
                                <li>Diseñar plantas de tratamiento de aguas y aguas residuales</li>
                                <li>Diseñar planes de prevención, control, mitigación y remediación de suelos</li>
                            </ul>
                        </article>
                        <div class="corte"></div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../../../../includePie.jsp?origen=carrera" flush="true" />
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/Morphext-2.4.4/morphext.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/carreras.min.js"></script>
    </body>
</html>