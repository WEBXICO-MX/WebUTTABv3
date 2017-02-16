<%-- 
    Document   : index2
    Created on : 10-nov-2015, 15:13:05
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; TSU en Gastronomía</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,TSU en Gastronomía">
        <meta name="keywords" content="TSU en Gastronomía,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h2><span class="texto_oferta_educativa">Oferta educativa</span> / División Académica de Turismo y Gastronomía</h2>
                    <h1>TSU en Gastronomía</h1>
                    <div class="corte"></div>
                </header>
                <article class="carrera_contenido">
                    <section class="carrera_portada">
                        <div>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/portada_tsu_gastronomia.png" alt="TSU en Gastronomía"/>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_certificado_CIIES.png" alt="Certificado CIIES" class="icono_ciies"/>
                            <!--<img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_video.png" alt="Video" class="icono_video"/>-->
                            <!-- Plan de estudio -->
                            <s:url var="url_plan_estudio" action="viewFile" namespace="">
                              <s:param name="i" value="1"></s:param>
                              <s:param name="d" value="%{'turismoGastronomia'}"></s:param>
                            </s:url>
                            <s:a href="%{url_plan_estudio}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_plan_estudios.png" alt="Plan de estudios" class="icono_plan_estudio"/></s:a>
                            <!-- Perfil ejecutivo -->
                            <s:url var="url_perfil_ejecutivo" action="viewFile" namespace="">
                              <s:param name="i" value="10"></s:param>
                              <s:param name="d" value="%{'turismoGastronomia'}"></s:param>
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
                                <li>Por la preparación de alimentos</li>
                                <li>Administración y las matemáticas</li>
                                <li>El servicio y atención al cliente</li>
                                <li>La organización de eventos y banquetes</li>
                                <li>La innovación</li>
                            </ul><br/>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/maletin.png" alt="¿Dónde podrá trabajar?" style="vertical-align: middle"/>
                            <h3>¿Dónde podrá trabajar?</h3>
                            <ul>
                                <li>Como subgerente de establecimientos de alimentos y bebidas</li>
                                <li>En empresas de eventos sociales, culturales y gastronómicos</li>
                                <li>Como operador del área de alimentos y bebidas en empresas públicas y privadas</li>
                                <li>En establecimiento de alimentos y bebidas como subchef</li>
                                <li>En hospitales en el área de alimentos</li>
                            </ul><br/>
                        </article>
                        <article class="carrera_texto2">
                            <h3>¿Qué aprenderá durante la carrera?</h3>
                            <ul>
                                <li>Coordinar la operación del área de alimentos y bebidas</li>
                                <li>La planeación, ejecución y evaluación de productos gastronómicos</li>
                                <li>Aplicación de procedimientos, estándares y normatividad alimentaria</li>
                                <li>Estandarización y costeo de recetas</li>
                                <li>Preparación de alimentos y bebidas</li>
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