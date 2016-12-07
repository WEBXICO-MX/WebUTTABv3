<%-- 
    Document   : index
    Created on : 07-abr-2016, 13:05:27
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; TSU en Contaduría</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,TSU en Contaduría">
        <meta name="keywords" content="TSU en Contaduría,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h2><span class="texto_oferta_educativa">Oferta educativa</span> / División Académica de Administración y Gestión de Proyectos</h2>
                    <h1>TSU en Contaduría</h1>
                    <div class="corte"></div>
                </header>
                <article class="carrera_contenido">
                    <section class="carrera_portada">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/divisiones/carreras/portada_tsu_contaduria.png" alt="TSU en Contaduría"/>
                            <!--<img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_certificado_CIIES.png" alt="Certificado CIIES" class="icono_ciies"/>-->
                            <!--<a href="https://youtu.be/lIjql1mzOp4" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_video.png" alt="Video" class="icono_video"/></a>-->
                            <!-- Plan de estudio -->
                            <s:url var="url_plan_estudio" action="viewFile" namespace="">
                                <s:param name="i" value="4"></s:param>
                                <s:param name="d" value="%{'agep'}"></s:param>
                            </s:url>
                            <s:a href="%{url_plan_estudio}" target="_blank"><img src="${pageContext.request.contextPath}/img/divisiones/carreras/btn_plan_estudios.png" alt="Plan de estudios" class="icono_plan_estudio"/></s:a>
                                <!-- Perfil ejecutivo -->
                            <s:url var="url_perfil_ejecutivo" action="viewFile" namespace="">
                                <s:param name="i" value="40"></s:param>
                                <s:param name="d" value="%{'agep'}"></s:param>
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
                                <li>Habilidades de gestión de la información</li>
                                <li>Capacidad de análisis y síntesis</li>
                                <li>Resolución de problemas</li>
                                <li>Toma de decisiones </li>
                                <li>Manejo de negocios</li>
                                <li>Autoaprendizaje</li>
                            </ul><br/>
                            <figure style="display:inline-block;">
                                <img src="${pageContext.request.contextPath}/img/divisiones/carreras/maletin.png" alt="¿Dónde podrá trabajar?"/>
                            </figure>
                            <h3>¿Dónde podrá trabajar?</h3>
                            <ul>
                                <li>Coordinador de áreas contables, financiera o fiscal.</li> 
                                <li>Servicios profesionales  (asesorías contable, financiera o fiscal)</li> 
                                <li>Empresas públicas y privadas</li> 
                                <li>Dependencias públicas federales, estatales y municipales</li> 
                                <li>Coordinador de administración de personal</li> 
                            </ul><br/>

                        </article>
                        <article class="carrera_texto2">
                            <h3>¿Qué aprenderá durante la carrera?</h3><br/><br/>
                            <ul>
                                <li>Realizar estados financieros conforme a las NIF’s</li>
                                <li>Diagnosticar y evaluar la situación financiera de una entidad</li>
                                <li>Gestionar los trámites administrativos de acuerdo al marco jurídico de la entidad</li>
                                <li>Realizar los trámites necesarios para cumplir las disposiciones vigentes</li>
                                <li>Formular informes financieros para la toma de decisiones</li>
                                <li>Interpretación y cálculos de las obligaciones fiscales de personas físicas y morales</li>
                                <li>Tratamiento contable del RIF (Régimen de Incorporación Fiscal)</li>
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
