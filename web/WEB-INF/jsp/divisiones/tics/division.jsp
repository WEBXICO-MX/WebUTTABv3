<%-- 
    Document   : division
    Created on : 19-nov-2015, 14:52:17
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Oferta educativa &#124; División Académica de Tecnologías de la Información y Comunicación</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Tecnologías de la Información y Comunicación">
        <meta name="keywords" content="oferta educativa,División Académica de Tecnologías de la Información y Comunicación,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>División Académica de Tecnologías de la Información y Comunicación</h1>
                    <div class="corte"></div>
                </header>
                <article class="divisiones_contenido">
                    <section class="divisiones_texto">
                        <div style="float:right;">
                            <s:a action="inicio" namespace="/oferta-educativa/tic"><img src="${pageContext.request.contextPath}/img/divisiones/btn_division-min.png" alt="División Académica de Tecnologías de la Información y Comunicación"/></s:a>
                            <s:a action="directorio" namespace="/oferta-educativa/tic"><img src="${pageContext.request.contextPath}/img/divisiones/btn_directorio-min.png" alt="Directorio de la División Académica de Tecnologías de la Información y Comunicación"/></s:a>
                        </div>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Logros de la división</h3></header><br/>
                        <article>
                            <section class="divisiones_texto logros_division left">
                               <div class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></div>
                                <p>Programa educativo de Tecnologías de la Información y Comunicación área Redes y Telecomunicaciones evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa (CIEES).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division right">
                               <div class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></div>
                                <p>Programa educativo de Tecnologías de la Información y Comunicación área Sistemas Informáticos evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa (CIEES).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division left">
                               <div class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></div>
                                <p>Programa Educativo de Tecnologías de la Información y Comunicación área Redes y Telecomunicaciones acreditado por el Consejo Nacional de Acreditación en Informática y Computación A.C.  (CONAIC).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division right">
                               <div class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></div>
                                <p>Programa Educativo de Tecnologías de la Información y Comunicación área Sistemas Informáticos acreditado por el Consejo Nacional de Acreditación en Informática y Computación A.C.  (CONAIC).</p>
                                <div class="corte"></div>
                            </section>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Infraestructura</h3></header><br/>
                        <article class="divisiones_infraestructura">
                            <div class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/tic/infraestructura1-min.png" alt="Infraestructura"/></div>
                            <div class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/tic/infraestructura2-min.png" alt="Infraestructura"/></div>
                            <div class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/tic/infraestructura3-min.png" alt="Infraestructura"/></div>
                            <div class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/tic/infraestructura4-min.png" alt="Infraestructura"/></div>
                            <div class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/tic/infraestructura5-min.png" alt="Infraestructura"/></div>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Cuerpos académicos</h3></header><br/>
                        <article>
                            <section class="divisiones_texto cuerpo_academico center">
                                <img src="${pageContext.request.contextPath}/img/divisiones/tic/cuerpo_academico1-min.png" alt="Cuerpo académico: Aplicación a las tecnologías de la información"/>
                                <header><h3>Cuerpo académico: aplicación a las tecnologías de la información</h3></header>
                                <article>
                                    <h4>Líneas de investigación</h4>
                                    <ul>
                                        <li>Sistemas digitales, adquisición, monitoreo de señales y desarrollo de interfaces</li>
                                        <li>Enseñanza, desarrollo y aplicación de las tecnologías de la información</li>
                                    </ul><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>M. en IS. María Reyna Guillermo Guillermo</li>
                                        <li>Lic. José Luis Martínez Rivera</li>
                                        <li>Lic. Carlos Raúl Muñoz Rodríguez</li>
                                        <li>M. en IS. Reina Hernández Ramírez</li>
                                        <li>Lic. Librado Jiménez Maceda</li>
                                        <li>Lic. Gladys del Carmen Calao Sánchez</li>
                                        <li>M.T.E. Ana Aurora Guerrero González</li>
                                        <li>M.A. Gerardo Enrique Gutiérrez Romero</li>
                                        <li>M. en IS. Martha Ofelia Jiménez Velázquez</li>
                                        <li>M. en IS. Octavio Elías Sánchez Aquino</li>
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