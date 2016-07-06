<%-- 
    Document   : division
    Created on : 18-nov-2015, 11:32:00
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Oferta educativa &#124; División Académica de Administración y Gestión de Proyectos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Administración y Gestión de Proyectos">
        <meta name="keywords" content="oferta educativa,División Académica de Administración y Gestión de Proyectos,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>División Académica de Administración y Gestión de Proyectos</h1>
                    <div class="corte"></div>
                </header>
                <article class="divisiones_contenido">
                    <section class="divisiones_texto">
                        <figure style="float:right;">
                            <s:a action="inicio" namespace="/oferta_educativa/agep"><img src="${pageContext.request.contextPath}/img/divisiones/btn_division-min.png" alt="División Académica de Administración y Gestión de Proyectos"/></s:a>
                            <s:a action="directorio" namespace="/oferta_educativa/agep"><img src="${pageContext.request.contextPath}/img/divisiones/btn_directorio-min.png" alt="Directorio de la División Académica de Administración y Gestión de Proyectos"/></s:a>
                        </figure>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Logros de la división</h3></header><br/>
                        <article>
                            <section class="divisiones_texto logros_division left">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Programa educativo de TSU en Administración, área Administración y Evaluación de Proyectos, evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior (CIEES).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division right">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Programa Educativo de TSU en Administración, área Administración y Evaluación de Proyectos, acreditado por el organismo del Consejo de Acreditación en la Enseñanza de la Contaduría y Administración, A.C. (CACECA).</p>
                                <div class="corte"></div>
                            </section>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Infraestructura</h3></header><br/>
                        <article class="divisiones_infraestructura">
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/agep/infraestructura1-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/agep/infraestructura2-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/agep/infraestructura3-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/agep/infraestructura4-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/agep/infraestructura5-min.png" alt="Infraestructura"/></figure>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Cuerpos académicos</h3></header><br/>
                        <article>
                            <section class="divisiones_texto cuerpo_academico left">
                                <figure><img src="${pageContext.request.contextPath}/img/divisiones/agep/cuerpo_academico1-min.png" alt="Cuerpo académico: Investigación y consultoría empresarial"/></figure><br/>
                                <header><h3>Cuerpo académico: investigación y consultoría empresarial</h3></header><br/><br/>
                                <article>
                                    <h4>Líneas de investigación</h4>
                                    <ul>
                                        <li>Diagnósticos y consultorías para la toma de decisiones en el sector productivo</li>
                                        <li>Diseño y/o aplicación de herramientas empresariales y educativas para el desarrollo de las PyMES</li>
                                    </ul><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>M. en A. Venilde Herrera Roldán (Responsable del cuerpo académico)</li>
                                        <li>M. en A. Juana Guerrero Gonzáles</li>
                                        <li>M. en A. Ramón Ramón Castillo</li>
                                        <li>M. en A. Elsy Janeth Alejandro Pantoja</li>
                                    </ul>
                                </article>
                            </section>
                            <section class="divisiones_texto cuerpo_academico right">
                                <figure><img src="${pageContext.request.contextPath}/img/divisiones/agep/cuerpo_academico2-min.png" alt="Cuerpo académico: Sistemas de innovación tecnológica, desarrollo de competencias y gestión de sistemas de calidad"/></figure><br/>
                                <header><h3>Cuerpo académico: sistemas de innovación tecnológica, desarrollo de competencias y gestión de sistemas de calidad</h3></header><br/>
                                <article>
                                    <h4>Líneas de investigación</h4>
                                    <ul>
                                        <li>Sistemas de innovación e investigación tecnológica empresarial</li>
                                        <li>Enseñanza de las ciencias, ingenierías y tecnologías en educación superior</li>
                                        <li>Gestión de sistemas de calidad</li>
                                    </ul><br/><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>Dr. Sergio Valle Mijangos (Responsable del cuerpo académico)</li>
                                        <li>M. I. P. A. Juan Javier Castillo Ramiro</li>
                                        <li>M. en A. Norma Angélica Hernández Gómez</li>
                                        <li>M. en C. Ricardo Amado Moheno Barrueta</li>
                                    </ul>
                                </article>
                                <div class="corte"></div>
                            </section>
                            <div class="corte"></div>    
                            <section class="divisiones_texto cuerpo_academico center">
                                <figure><img src="${pageContext.request.contextPath}/img/divisiones/agep/cuerpo_academico3-min.png" alt="Cuerpo académico: Innovación educativa para el desarrollo empresarial"/></figure><br/>
                                <header><h3>Cuerpo académico: innovación educativa para el desarrollo empresarial</h3></header><br/>
                                <article>
                                    <h4>Línea de investigación</h4>
                                    <ul>
                                        <li>Educación, innovación y desarrollo</li>
                                    </ul><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>M. en A. Claudia Fabiola Ávila Guzmán (Responsable de cuerpo académico)</li>
                                        <li>M. en A. Concepción Cáceres Ruíz</li>
                                        <li>M. en C. María Ydolina Rosales Pérez</li>
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