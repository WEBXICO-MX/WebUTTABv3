<%-- 
    Document   : index3
    Created on : 10-nov-2015, 13:45:46
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; TSU en Energías Renovables área Calidad y Ahorro de Energía</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,TSU en Energías Renovables área Calidad y Ahorro de Energía">
        <meta name="keywords" content="TSU en Energías Renovables área Calidad y Ahorro de Energía,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>TSU en Energías Renovables área Calidad y Ahorro de Energía</h1>
                    <div class="corte"></div>
                </header>
                <article class="carrera_contenido">
                    <section class="carrera_portada">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/portada_tsu_energias_renovables_area_calidad_ahorro_energia.png" alt="TSU en Energías Renovables área Calidad y Ahorro de Energía"/>
                            <!--<img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_certificado_CIIES.png" alt="Certificado CIIES" class="icono_ciies"/>-->
                            <a href="https://youtu.be/IVvy21JyIWs" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_video.png" alt="Video" class="icono_video"/></a>
                            <!-- Plan de estudio -->
                            <s:url var="url_plan_estudio" action="viewFile" namespace="">
                              <s:param name="i" value="8"></s:param>
                              <s:param name="d" value="%{'procesosIndustriales'}"></s:param>
                            </s:url>
                            <s:a href="%{url_plan_estudio}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_plan_estudios.png" alt="Plan de estudios" class="icono_plan_estudio"/></s:a>
                            <!-- Perfil ejecutivo -->
                            <s:url var="url_perfil_ejecutivo" action="viewFile" namespace="">
                              <s:param name="i" value="80"></s:param>
                              <s:param name="d" value="%{'procesosIndustriales'}"></s:param>
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
                                <li>Por las matemáticas, química y física</li>
                                <li>Las nuevas tecnologías para generación de energía</li>
                                <li>El cuidado del medio ambiente</li>
                                <li>Las instalaciones y máquinas eléctricas</li>
                                <li>El desarrollo sustentable</li>
                            </ul><br/>
                            <figure style="display:inline-block;">
                                <img src="${pageContext.request.contextPath}/img/divisiones/carreras/maletin.png" alt="¿Dónde podrá trabajar?"/>
                            </figure>
                            <h3>¿Dónde podrá trabajar?</h3>
                            <ul>
                                <li>Como consultor de proyectos de eficiencia energética</li>
                                <li>En el sector público y privado como residente de obra eléctrica</li>
                                <li>Como Instalador de sistemas fotovoltaicos</li>
                                <li>Como proyectista de obra eléctrica y de energías renovables</li>
                                <li>Como contratista de obra eléctrica</li>
                            </ul><br/>
                        </article>
                        <article class="carrera_texto2">
                            <h3>¿Qué aprenderá durante la carrera?</h3><br/><br/>
                            <ul>
                                <li>Formular proyectos de energías renovables</li>
                                <li>Elaborar diagnósticos energéticos</li>
                                <li>Elaborar estudios especializados de los recursos naturales del entorno</li>
                                <li>Dirigir proyectos de ahorro y calidad de energía eléctrica</li>
                                <li>Evaluar condiciones de sistemas eléctricos utilizando instrumentos de medición</li>
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