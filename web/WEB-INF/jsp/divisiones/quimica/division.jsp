<%-- 
    Document   : division
    Created on : 19-nov-2015, 13:11:50
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Oferta educativa &#124; División Académica de Química</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Química">
        <meta name="keywords" content="oferta educativa,División Académica de Química,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>División Académica de Química</h1>
                    <div class="corte"></div>
                </header>
                <article class="divisiones_contenido">
                    <section class="divisiones_texto">
                        <figure style="float:right;">
                            <s:a action="inicio" namespace="/oferta_educativa/quimica"><img src="${pageContext.request.contextPath}/img/divisiones/btn_division-min.png" alt="División Académica de Química"/></s:a>
                            <s:a action="directorio" namespace="/oferta_educativa/quimica"><img src="${pageContext.request.contextPath}/img/divisiones/btn_directorio-min.png" alt="Directorio de la División Académica de Química"/></s:a>
                        </figure>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Logros de la división</h3></header><br/>
                        <article>
                            <section class="divisiones_texto logros_division left">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Programa educativo de TSU en Química área Tecnología Ambiental evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa (CIEES).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division right">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Programa educativo de TSU en Química área Tecnología Ambiental acreditado por el Consejo de Acreditación de la Enseñanza de la Ingeniería (CACEI).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division left">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Reconocimiento Internacional con el Premio Conciencia de Biosfera José Celestino Mutis, otorgado por la República de Colombia.</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division right">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Reconocimiento de la Secretaria de Energía, Recursos Naturales y Protección Ambiental (SERNAPAM) por participar en el foro de marco legal ambiental.</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division left">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                <p>Programa educativo de TSU en Química área Prevención de Corrosión evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior Programa (CIEES).</p>
                                <div class="corte"></div>
                            </section>
                            <section class="divisiones_texto logros_division right">
                                <figure class="left"><img src="${pageContext.request.contextPath}/img/divisiones/icono_logros-min.png" alt="Logros"/></figure>
                                    <p>Club Jóvenes Carta de la Tierra UTTAB</p>
                                    <p>Facebook: <a href="https://www.facebook.com/grupo.uttab" target="_blank">Carta de la Tierra UTTAB</a></p>
                                    <p>Email: <a href="mailto:Club-carta.de.la.tierra-uttab@hotmail.com">Club-carta.de.la.tierra-uttab@hotmail.com</a></p>
                                <div class="corte"></div>
                            </section>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Infraestructura</h3></header><br/>
                        <article class="divisiones_infraestructura">
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/quimica/infraestructura1-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/quimica/infraestructura2-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/quimica/infraestructura3-min.png" alt="Infraestructura"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/divisiones/quimica/infraestructura4-min.png" alt="Infraestructura"/></figure>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header class="centrar_texto"><h3>Cuerpos académicos</h3></header><br/>
                        <article>
                            <section class="divisiones_texto cuerpo_academico left">
                                <figure><img src="${pageContext.request.contextPath}/img/divisiones/quimica/cuerpo_academico1-min.png" alt="Cuerpo académico en consolidación: Conocimientos y tecnologías para el ambiente"/></figure><br/>
                                <header><h3>Cuerpo académico en consolidación: conocimientos y tecnologías para el ambiente</h3></header><br/>
                                <article>
                                    <h4>Líneas de investigación</h4>
                                    <ul>
                                        <li>Gestión e innovación en sistemas ambientales</li>
                                        <li>Gestión de sistemas de seguridad laboral y aplicación tecnológica</li>
                                    </ul><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>M.I.P.A. René Méndez Villegas</li>
                                        <li>M.I.P.A. Santiago Mar Balderas</li>
                                        <li>Ing. Claudia María del Carmen Ceniceros González</li>
                                        <li>Ing. José Alfredo Irineo Mijangos</li>
                                        <li>Ing. William Montiel Reyes</li>
                                        <li>M.I.P.A. Juan Ismael Ledesma Herrera</li>
                                        <li>M. en C. Petrona Gómez Rivera</li>
                                        <li>Ing. José Fernando Córdova Gómez</li>
                                    </ul><br/>
                                    <h4>Colaboradores</h4>
                                    <ul>
                                        <li>Ing. Jorge Luis Soberano Montuy</li>
                                        <li>Lic. Antonia Gómez de los Santos</li>
                                        <li>Lic. Saayde Hernández Contreras</li>
                                    </ul>
                                </article>
                            </section>
                            <section class="divisiones_texto cuerpo_academico right">
                                <figure><img src="${pageContext.request.contextPath}/img/divisiones/quimica/cuerpo_academico2-min.png" alt="Cuerpo académico en formación: Materiales y corrosión"/></figure><br/>
                                <header><h3>Cuerpo académico en formación: materiales y corrosión</h3></header><br/>
                                <article>
                                    <h4>Línea de investigación</h4>
                                    <ul>
                                        <li>Tecnologías de los materiales</li>
                                    </ul><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>Ing. Eduardo Torres Aguilar</li>
                                        <li>Ing. Daniel Gutiérrez Ramos</li>
                                        <li>Ing. José del Carmen Hernández de la Cruz</li>
                                        <li>Ing. Elsa Uicab Córdova</li>
                                        <li>Ing. Áureo Rivera Córdova</li>
                                    </ul><br/>
                                    <h4>Línea de investigación</h4>
                                    <ul>
                                        <li>Tecnologías del petróleo</li>
                                    </ul><br/>
                                    <h4>Integrantes</h4>
                                    <ul>
                                        <li>Ing. Nancy Elena Hernández Morales</li>
                                        <li>Ing. Noemí Goñi Vera</li>
                                        <li>Ing. Gabriel Ramón Hernández</li>
                                        <li>Fis. Marco Andrés Jiménez Moreno</li>
                                    </ul>
                                </article>
                                <div class="corte"></div>
                            </section>
                            <div class="corte"></div>    
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