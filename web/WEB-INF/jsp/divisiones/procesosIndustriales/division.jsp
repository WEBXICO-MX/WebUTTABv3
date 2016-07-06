<%-- 
    Document   : division
    Created on : 19-nov-2015, 9:04:23
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Oferta educativa &#124; División Académica de Procesos Industriales</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Procesos Industriales">
        <meta name="keywords" content="oferta educativa,División Académica de Procesos Industriales,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/css/layerslider.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/divisiones2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../../includeHeader.jsp?origen=division&Correo=1" flush="true"/>
        <!-- Cuerpo -->
        <main>
            <section class="divisiones_section">
                <header class="divisiones_titulo">
                    <h2><span class="texto_resaltado">Oferta educativa</span> /</h2>
                    <h1>División Académica de Procesos Industriales</h1>
                    <div class="corte"></div>
                </header>
                <article class="divisiones_contenido">
                    <section class="divisiones_texto">
                        <figure style="float:right;">
                            <s:a action="inicio" namespace="/oferta_educativa/procesos"><img src="${pageContext.request.contextPath}/img/divisiones/btn_division-min.png" alt="División Académica de Procesos Industriales"/></s:a>
                            <s:a action="directorio" namespace="/oferta_educativa/procesos"><img src="${pageContext.request.contextPath}/img/divisiones/btn_directorio-min.png" alt="Directorio de la División Académica de Procesos Industriales"/></s:a>
                        </figure>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Logros de la división</h3></header><br/>
                        <article>
                            <section class="divisiones_texto logros_division left">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Programa educativo de TSU en Procesos Alimentarios, evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa (CIEES).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division right">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Programa educativo de TSU en Procesos Industriales área Manufactura, evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa (CIEES).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division left">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Programa educativo de TSU en Procesos Industriales área Manufactura, acreditado por el Consejo de Acreditación de la Enseñanza de la Ingeniería (CACEI).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division right">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Programa educativo de TSU en Mantenimiento área Industrial, evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa (CIEES).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division left">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Programa educativo de TSU en Mantenimiento área Industrial, acreditado por el Consejo de Acreditación de la Enseñanza de la Ingeniería (CACEI).</p>
                                <div class="corte"></div>
                            </section>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Infraestructura</h3></header><br/>
                        <article class="divisiones_infraestructura">
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/procesos/infraestructura1-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/procesos/infraestructura2-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/procesos/infraestructura3-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/procesos/infraestructura4-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/procesos/infraestructura5-min.png" alt="Infraestructura"/></figure>
                        </article>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Cuerpos académicos</h3></header><br/>
                        <article>
                            <section class="divisiones_texto cuerpo_academico left">
                                <figure><img src="${pageContext.request.contextPath}/img/divisiones/procesos/cuerpo_academico1-min.png" alt="Cuerpo académico: Tecnología de alimentos"/></figure><br/>
                                <header><h3>Cuerpo académico: tecnología de alimentos</h3></header><br/><br/>
                                <article>
                                    <h4>Líneas de investigación</h4>
                                    <ul>
                                        <li>Desarrollo de tecnologías para el proceso y manejo de alimentos</li>
                                        <li>Evaluación de materias primas regionales para el desarrollo de nuevos productos y transferencia de tecnología</li>
                                        <li>Desarrollo de tecnología para la mejora de la seguridad alimentaria</li>
                                    </ul><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>M. en C. Franco Lucio Ruiz Santiago</li>
                                        <li>M. en C. Roberto Rocher Córdova</li>
                                        <li>M. en I. Rafael García Jiménez</li>
                                        <li>M. en C. Antonio Valadez Villareal</li>
                                        <li>M. en C. Josafat Alberto Becerra Hernández</li>
                                    </ul>
                                </article>
                            </section>
                            <section class="divisiones_texto cuerpo_academico right">
                                <figure><img src="${pageContext.request.contextPath}/img/divisiones/procesos/cuerpo_academico2-min.png" alt="Cuerpo académico: Procesos productivos"/></figure><br/>
                                <header><h3>Cuerpo académico: procesos productivos</h3></header><br/>
                                <article>
                                    <h4>Línea de investigación</h4>
                                    <ul>
                                        <li>Calidad y productividad</li>
                                    </ul><br/><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>Ing. Liuva Vanessa Cortez Patiño</li>
                                        <li>Ing. Elmer Martínez Méndez</li>
                                        <li>M. en C. José Antonio Carrera León</li>
                                        <li>M en G.C.A. José García de la Cruz</li>
                                    </ul>
                                </article>
                                <div class="corte"></div>
                            </section>
                            <div class="corte"></div>    
                            <section class="divisiones_texto cuerpo_academico center">
                                <figure><img src="${pageContext.request.contextPath}/img/divisiones/procesos/cuerpo_academico3-min.png" alt="Cuerpo académico: Mantenimiento industrial"/></figure><br/>
                                <header><h3>Cuerpo académico: mantenimiento industrial</h3></header><br/>
                                <article>
                                    <h4>Línea de investigación</h4>
                                    <ul>
                                        <li>Automatización de los procesos industriales y ahorro de energía</li>
                                    </ul><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>M. en I.A. Erwin Jerónimo García</li>
                                        <li>Ing. Alberto de la Fuente Ochoa</li>
                                        <li>Ing. Tarcilo Oropeza Olmos</li>
                                        <li>Ing. Luis Alberto Escobedo Cazan</li>
                                        <li>Ing. Marcelino Chuc Muñoz</li>
                                        <li>Ing. Carmen Estrada Ramírez</li>
                                    </ul>
                                </article>
                                <div class="corte"></div>
                            </section>
                        </article>
                        <div class="corte"></div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../../includePie.jsp?origen=division" flush="true" />
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/js/layerslider.kreaturamedia.jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/JQuery/jquery-easing-1.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/divisiones.min.js"></script>
    </body>
</html>