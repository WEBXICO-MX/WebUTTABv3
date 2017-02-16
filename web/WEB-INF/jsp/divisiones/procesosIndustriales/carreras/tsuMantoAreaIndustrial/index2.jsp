<%-- 
    Document   : index2
    Created on : 10-nov-2015, 13:20:03
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; TSU en Mantenimiento área Industrial</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,TSU en Mantenimiento área Industrial">
        <meta name="keywords" content="TSU en Mantenimiento área Industrial,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carreras3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../../../../index3Header.min.jsp" flush="true"  />
            <section class="carrera_section">
                <header class="carrera_titulo">
                    <h2><span class="texto_oferta_educativa">Oferta educativa</span> / División Académica de Procesos Industriales</h2>
                    <h1>TSU en Mantenimiento área Industrial</h1>
                    <div class="corte"></div>
                </header>
                <article class="carrera_contenido">
                    <section class="carrera_portada">
                        <div>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/portada_tsu_mantenimiento_area_industrial.png" alt="TSU en Mantenimiento área Industrial"/>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_certificado_CIIES.png" alt="Certificado CIIES" class="icono_ciies"/>
                            <!--<img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_video.png" alt="Video" class="icono_video"/>-->
                            <!-- Plan de estudio -->
                            <s:url var="url_plan_estudio" action="viewFile" namespace="">
                              <s:param name="i" value="1"></s:param>
                              <s:param name="d" value="%{'procesosIndustriales'}"></s:param>
                            </s:url>
                            <s:a href="%{url_plan_estudio}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_plan_estudios.png" alt="Plan de estudios" class="icono_plan_estudio"/></s:a>
                            <!-- Perfil ejecutivo -->
                            <s:url var="url_perfil_ejecutivo" action="viewFile" namespace="">
                              <s:param name="i" value="10"></s:param>
                              <s:param name="d" value="%{'procesosIndustriales'}"></s:param>
                            </s:url>
                            <s:a href="%{url_perfil_ejecutivo}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_perfil_ejecutivo.png" alt="Perfil ejecutivo" class="icono_perfil_ejecutivo"/></s:a>
                        </div>
                    </section>
                    <!-- Beneficios de las carreras -->
                    <jsp:include page="../../../../includeBeneficios.jsp?origen=carrera" flush="true"  />
                    <!-- Beneficios de las carreras -->
                    <section class="carrera_texto">
                        <article class="carrera_texto1">
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/people.png" alt="Tener gusto por:" style="vertical-align: middle"/>
                            <h3>Tener gusto por:</h3>
                            <ul>
                                <li>Por las matemáticas, química y física</li>
                                <li>Automatización de equipos y procesos</li>
                                <li>Dibujo industrial</li> 
                                <li>Uso y manejo de maquinaria y equipo</li>
                                <li>La reparación de equipos y maquinaria industrial</li>
                            </ul><br/>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/maletin.png" alt="¿Dónde podrá trabajar?" style="vertical-align: middle"/>
                            <h3>¿Dónde podrá trabajar?</h3>
                            <ul>
                                <li>En la industria de la transformación</li>
                                <li>Como técnico en mantenimiento de equipos industriales</li>
                                <li>En la industria de transformación como administrador del MRP</li>
                                <li>Como supervisor de mantenimiento</li>
                                <li>Como programador de equipo automatizado</li>
                            </ul><br/>
                        </article>
                        <article class="carrera_texto2">
                            <h3>¿Qué aprenderá durante la carrera?</h3>
                            <ul>
                                <li>Gestionar las actividades de mantenimiento</li>
                                <li>Integrar el plan maestro para contribuir a la productividad de la organización</li>
                                <li>Administrar el programa de mantenimiento </li>
                                <li>Aplicar la normatividad y los procedimientos para el mantenimiento industrial</li>
                                <li>La automatización de equipos y procesos industriales</li>
                            </ul>
                        </article>
                        <div class="corte"></div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../../../../index3Footer.min.jsp" flush="true"  />                 
        </main>
        
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/Morphext-2.4.4/morphext.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/carreras.min.js"></script>
    </body>
</html>