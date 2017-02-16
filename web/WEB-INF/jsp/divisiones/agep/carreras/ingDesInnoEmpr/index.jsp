<%-- 
    Document   : index
    Created on : 13-oct-2016, 13:54:06
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Ingeniería en Desarrollo e Innovación Empresarial</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Ingeniería en Desarrollo e Innovación Empresarial">
        <meta name="keywords" content="Ingeniería en Desarrollo e Innovación Empresarial,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h2><span class="texto_oferta_educativa">Oferta educativa</span> / División Académica de Administración y Gestión de Proyectos</h2>
                    <h1>Ingeniería en Desarrollo e Innovación Empresarial</h1>
                    <div class="corte"></div>
                </header>
                <article class="carrera_contenido">
                    <section class="carrera_portada">
                        <div>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/portada_ing_desarrollo_innovacion_empresarial.png" alt="Ingeniería en Desarrollo e Innovación Empresarial"/>
                            <!--<img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_certificado_CIIES.png" alt="Certificado CIIES" class="icono_ciies"/>-->
                            <!--<a href="https://youtu.be/Op97Jo9Rkdo" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_video.png" alt="Video" class="icono_video"/></a>-->
                            <!-- Plan de estudio -->
                            <s:url var="url_plan_estudio" action="viewFile" namespace="">
                                <s:param name="i" value="2"></s:param>
                                <s:param name="d" value="%{'agep'}"></s:param>
                            </s:url>
                            <!--<s:a href="%{url_plan_estudio}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_plan_estudios.png" alt="Plan de estudios" class="icono_plan_estudio"/></s:a>-->
                                <!-- Perfil ejecutivo -->
                            <s:url var="url_perfil_ejecutivo" action="viewFile" namespace="">
                                <s:param name="i" value="20"></s:param>
                                <s:param name="d" value="%{'agep'}"></s:param>
                            </s:url>
                            <!--<s:a href="%{url_perfil_ejecutivo}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_perfil_ejecutivo.png" alt="Perfil ejecutivo" class="icono_perfil_ejecutivo"/></s:a>-->
                            </div>
                        </section>
                        <!-- Beneficios de las carreras -->
                    <jsp:include page="../../../../includeBeneficios.jsp?origen=carrera" flush="true"  />
                    <!-- Beneficios de las carreras -->
                    <section class="carrera_texto">
                        <article class="carrera_texto1">
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/people.png" alt="Tener gusto por:"  style="vertical-align: middle"/>
                            <h3>Tener gusto por:</h3>
                            <ul>
                                <li>La optimización de procesos administrativos con enfoque en comercialización</li>
                                <li>Proyección de una empresa en términos de mercadotecnia</li>
                                <li>Utilización de herramientas administrativas para la mejora continua</li>
                                <li>Manejo de personal con enfoque en ventas</li>
                                <li>Toma de decisiones asertivas para el desarrollo de un negocio</li>
                            </ul><br/>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/maletin.png" alt="¿Dónde podrá trabajar?" style="vertical-align: middle"/>
                            <h3>¿Dónde podrá trabajar?</h3>
                            <ul>
                                <li>Empresas del sector industrial</li>
                                <li>Empresas de comercialización</li>
                                <li>Organismos financieros</li>
                                <li>Agencias de publicidad e investigación de mercado  </li>   
                                <li>Tu propia empresa</li>
                            </ul><br/>

                        </article>
                        <article class="carrera_texto2">
                            <h3>¿Qué aprenderá durante la carrera?</h3><br/><br/>
                            <ul>
                                <li>Ejecutar estrategias de capital humano para el cumplimiento de los objetivos</li>
                                <li>Diseñar planes financieros para el crecimiento de la organización</li>
                                <li>Diseñar procesos administrativos para la eficiencia y eficacia organizacional</li>
                                <li>Diseñar planes comerciales para potenciar la competitividad de la empresa</li>
                                <li>Incrementar las utilidades diseñando y ejecutando procesos de compra y venta</li>
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