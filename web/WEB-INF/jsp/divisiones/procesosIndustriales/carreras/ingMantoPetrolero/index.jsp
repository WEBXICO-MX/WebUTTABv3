<%-- 
    Document   : index
    Created on : 18-oct-2016, 14:59:33
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Ingeniería en Mantenimiento Petrolero</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Ingeniería en Mantenimiento Petrolero">
        <meta name="keywords" content="Ingeniería en Mantenimiento Petrolero,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h2><span class="texto_oferta_educativa">Oferta educativa</span> / División Académica de Procesos Industriales</h2>
                    <h1>Ingeniería en Mantenimiento Petrolero</h1>
                    <div class="corte"></div>
                </header>
                <article class="carrera_contenido">
                    <section class="carrera_portada">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/portada_ing_mantenimiento_petrolero.png" alt="Ingeniería en Mantenimiento Petrolero"/>
                            <!--<img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_certificado_CIIES.png" alt="Certificado CIIES" class="icono_ciies"/>-->
                            <!--<a href="https://youtu.be/8KcbcMoKN5Y" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_video.png" alt="Video" class="icono_video"/></a>-->
                            <!-- Plan de estudio -->
                            <s:url var="url_plan_estudio" action="viewFile" namespace="">
                                <s:param name="i" value="5"></s:param>
                                <s:param name="d" value="%{'procesosIndustriales'}"></s:param>
                            </s:url>
                            <!--<s:a href="%{url_plan_estudio}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_plan_estudios.png" alt="Plan de estudios" class="icono_plan_estudio"/></s:a>-->
                                <!-- Perfil ejecutivo -->
                            <s:url var="url_perfil_ejecutivo" action="viewFile" namespace="">
                                <s:param name="i" value="50"></s:param>
                                <s:param name="d" value="%{'procesosIndustriales'}"></s:param>
                            </s:url>
                            <!--<s:a href="%{url_perfil_ejecutivo}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_perfil_ejecutivo.png" alt="Perfil ejecutivo" class="icono_perfil_ejecutivo"/></s:a>-->
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
                                <li>Por las matemáticas y física</li>
                                <li>Investigación e innovación de los equipos mecánicos</li>
                                <li>Automatización de equipos y procesos</li>
                                <li>Innovar sistemas productivos</li>
                                <li>Uso y manejo de maquinaria y equipo</li>
                            </ul><br/>
                            <figure style="display:inline-block;">
                                <img src="${pageContext.request.contextPath}/img/divisiones/carreras/maletin.png" alt="¿Dónde podrá trabajar?"/>
                            </figure>
                            <h3>¿Dónde podrá trabajar?</h3>
                            <p>Dentro de la cadena de valor de hidrocarburo el Ingeniero  en Mantenimiento Petrolero podrá desenvolverse dentro de los segmentos de exploración y producción así como el de transporte y almacenamiento.</p><br/>
                            <p>Según la prospectiva de talento del sector energía como resultado de las reformas energéticas, se requieren las siguientes ocupaciones críticas.</p><br/>
                            <ul>
                                <li>Directores y gerentes en construcción, reparación y mantenimiento</li>
                                <li>Coordinadores y jefes de área en construcción, reparación y mantenimiento</li>
                                <li>Supervisores de mecánicos y técnicos en mantenimiento y reparación de equipos mecánicos, vehículos de motor, instrumentos industriales y equipo de refrigeración</li>
                            </ul><br/>

                        </article>
                        <article class="carrera_texto2">
                            <h3>¿Qué aprenderá durante la carrera?</h3><br/><br/>
                            <ul>
                                <li>Diseñar estrategias de mantenimiento para la competitividad de la empresa</li>
                                <li>Optimizar las actividades de mantenimiento y de operación de los equipos</li>
                                <li>Diseñar y ejecutar planes y programas de mantenimiento</li>
                                <li>Integrar proyectos de innovación de los sistemas productivos</li>
                                <li>Validar estudios de ingeniería que mejoren el mantenimiento de equipos</li>
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
