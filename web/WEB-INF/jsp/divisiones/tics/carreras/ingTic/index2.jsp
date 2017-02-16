<%-- 
    Document   : index2
    Created on : 10-nov-2015, 15:28:20
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Ingeniería en Tecnologías de la Información</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Ingeniería en Tecnologías de la Información">
        <meta name="keywords" content="Ingeniería en Tecnologías de la Información,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h2><span class="texto_oferta_educativa">Oferta educativa</span> / División Académica de Tecnologías de la Información y Comunicación</h2>
                    <h1>Ingeniería en Tecnologías de la Información</h1>
                    <div class="corte"></div>
                </header>
                <article class="carrera_contenido">
                    <section class="carrera_portada">
                        <div>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/portada_ing_tecnologias_informacion.jpg" alt="Ingeniería en Tecnologías de la Información"/>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_certificado_CIIES.png" alt="Certificado CIIES" class="icono_ciies"/>
                            <a href="https://youtu.be/8LE_Q7q2mdQ" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_video.png" alt="Video" class="icono_video"/></a>
                            <!-- Plan de estudio -->
                            <s:url var="url_plan_estudio" action="viewFile" namespace="">
                              <s:param name="i" value="3"></s:param>
                              <s:param name="d" value="%{'tics'}"></s:param>
                            </s:url>
                            <s:a href="%{url_plan_estudio}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_plan_estudios.png" alt="Plan de estudios" class="icono_plan_estudio"/></s:a>
                            <!-- Perfil ejecutivo -->
                            <s:url var="url_perfil_ejecutivo" action="viewFile" namespace="">
                              <s:param name="i" value="30"></s:param>
                              <s:param name="d" value="%{'tics'}"></s:param>
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
                                <li>Las matemáticas</li>
                                <li>El análisis y la lógica</li>
                                <li>La capacidad de innovación y creatividad</li>
                                <li>La capacidad de resolución de problemas</li>
                                <li>Emprender tu propia empresa</li>
                            </ul><br/>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/maletin.png" alt="¿Dónde podrá trabajar?" style="vertical-align: middle"/>
                            <h3>¿Dónde podrá trabajar?</h3>
                            <ul>
                                <li>En empresas dedicadas al servicio de TI</li>
                                <li>En empresas donde requieran servicio de TI</li>
                                <li>Desarrollador de proyectos de TI</li>
                                <li>Como consultor de servicios de TI</li>
                                <li>Administrador de sistemas de TI</li>
                            </ul><br/>
                        </article>
                        <article class="carrera_texto2">
                            <h3>¿Qué aprenderá durante la carrera?</h3>
                            <ul>
                                <li>Formular y planear proyectos de tecnologías de información</li>
                                <li>El uso de procesos estándares y modelos de calidad de TI</li>
                                <li>Dirigir el proceso de implementación de proyectos de TI</li>
                                <li>Gestionar el proceso de implementación de proyectos de TI</li>
                                <li>Establecer estándares en seguridad de la información</li>
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