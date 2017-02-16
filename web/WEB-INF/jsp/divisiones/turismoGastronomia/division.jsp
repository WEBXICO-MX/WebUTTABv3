<%-- 
    Document   : division
    Created on : 19-nov-2015, 16:05:33
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Oferta educativa &#124; División Académica de Turismo y Gastronomía</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Turismo y Gastronomía">
        <meta name="keywords" content="oferta educativa,División Académica de Turismo y Gastronomía,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/css/layerslider.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/divisiones3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../../index3Header.min.jsp" flush="true"  />
            <section class="divisiones_section">
                <header class="divisiones_titulo">
                    <h2><span class="texto_resaltado">Oferta educativa</span> /</h2>
                    <h1>División Académica de Turismo y Gastronomía</h1>
                    <div class="corte"></div>
                </header>
                <article class="divisiones_contenido">
                    <section class="divisiones_texto">
                        <div style="float:right;">
                            <s:a action="inicio" namespace="/oferta-educativa/turismo"><img src="${pageContext.request.contextPath}/img/divisiones/btn_division-min.png" alt="División Académica de Turismo y Gastronomía"/></s:a>
                            <s:a action="directorio" namespace="/oferta-educativa/turismo"><img src="${pageContext.request.contextPath}/img/divisiones/btn_directorio-min.png" alt="Directorio de la División Académica de Turismo y Gastronomía"/></s:a>
                            </div>
                            <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Logros de la división</h3></header>
                        <article>
                            <section class="divisiones_texto logros_division left">
                                <div class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></div>
                            <p>Programa educativo de TSU en Gastronomía evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa (CIEES).</p>
                            <div class="corte"></div>
                        </section>
                        <section class="divisiones_texto logros_division right">
                            <div class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></div>
                            <p>Programa educativo de TSU en Turismo evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa (CIEES).</p>
                            <div class="corte"></div>
                        </section>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Infraestructura</h3></header><br/>
                        <article class="divisiones_infraestructura">
                            <div class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/turismo/infraestructura1-min.png" alt="Infraestructura"/></div>
                            <div class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/turismo/infraestructura2-min.png" alt="Infraestructura"/></div>
                            <div class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/turismo/infraestructura3-min.png" alt="Infraestructura"/></div>
                            <div class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/turismo/infraestructura4-min.png" alt="Infraestructura"/></div>
                            <div class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/turismo/infraestructura5-min.png" alt="Infraestructura"/></div>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Cuerpos académicos</h3></header><br/>
                        <article>
                            <section class="divisiones_texto cuerpo_academico left">
                                <img src="${pageContext.request.contextPath}/img/divisiones/turismo/cuerpo_academico1-min.png" alt="Cuerpo académico : Investigación y desarrollo académico"/>
                                <header><h3>Cuerpo académico : investigación y desarrollo académico</h3></header>
                                <article>
                                    <h4>Líneas de investigación</h4>
                                    <ul>
                                        <li>Proceso de enseñanza aprendizaje</li>
                                    </ul><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>M. en A. María Dolores May Tosca</li>
                                        <li>M. en A. Sara Trejo González</li>
                                        <li>M. en A. Elizabeth Maya Cruz</li>
                                        <li>M. en A. Lucía Sandoval Núñez</li>
                                        <li>M. en A. Verónica Isabel Palma Córdova</li>
                                        <li>M. en A. Manuel Antonio Díaz Peralta</li>
                                    </ul>
                                </article>
                            </section>
                            <section class="divisiones_texto cuerpo_academico right">
                                <img src="${pageContext.request.contextPath}/img/divisiones/turismo/cuerpo_academico2-min.png" alt="Cuerpo académico: Innovación y territorialidad turística y gastronómica"/>
                                <header><h3>Cuerpo académico: innovación, territorialidad turística y gastronómica</h3></header>
                                <article>
                                    <h4>Líneas de investigación</h4>
                                    <ul>
                                        <li>Educación, Capacitación y Tecnología en Turismo</li>
                                        <li>Gestión y Desarrollo Turístico</li>
                                    </ul><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>M. en C. Fabiola Lizama Pérez</li>
                                        <li>M. en M.T. María Jesús Bugarin Torres</li>
                                        <li>Lic. María del Rosario Toledo Gómez</li>
                                    </ul>
                                </article>
                            </section>
                            <div class="corte"></div>    
                        </article>
                        <div class="corte"></div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../../index3Footer.min.jsp" flush="true"  />
        </main>
        
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/js/layerslider.kreaturamedia.jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/JQuery/jquery-easing-1.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/divisiones.min.js"></script>
    </body>
</html>