<%-- 
    Document   : actividades_culturales_deportivas
    Created on : 23-nov-2015, 12:33:13
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Actividades Culturales y Deportivas</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Actividades Culturales y Deportivas">
        <meta name="keywords" content="conócenos,Actividades Culturales y Deportivas,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/css/layerslider.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Alumnos</span> /</h2>
                    <h1>Actividades Culturales y Deportivas</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <figure style="float:right;">
                            <img src="${pageContext.request.contextPath}/img/servicios/actividades_culturales_deportivas/btn_horarios-min.png" alt="Horario de Actividades Culturales y Deportivas"/>
                        </figure>
                        <div class="corte"></div>
                    </section>
                    <section class="servicios_texto_full">
                        <article class="servicios_slider">
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/servicios/actividades_culturales_deportivas/actividades_culturales_deportivas_slider1-min.png" alt="Actividades Culturales y Deportivas"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/servicios/actividades_culturales_deportivas/actividades_culturales_deportivas_slider2-min.png" alt="Actividades Culturales y Deportivas"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/servicios/actividades_culturales_deportivas/actividades_culturales_deportivas_slider3-min.png" alt="Actividades Culturales y Deportivas"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/servicios/actividades_culturales_deportivas/actividades_culturales_deportivas_slider4-min.png" alt="Actividades Culturales y Deportivas"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/servicios/actividades_culturales_deportivas/actividades_culturales_deportivas_slider5-min.png" alt="Actividades Culturales y Deportivas"/></figure>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="servicios_texto">
                        <p>El Departamento de Actividades Culturales y Deportivas tiene como objetivo contribuir a la formación integral innovadora de los alumnos a través de ofertar talleres de cultura y deportes, organizar eventos que promuevan la cultura de expresiones artísticas y la actividad física como medio de desarrollo personal competitivo, integración social y mejora de la calidad de vida.</p>
                    </section>
                    <section class="servicios_texto">
                        <article class="servicios_texto1 left">
                            <figure style="display:inline-block;">
                                <img src="${pageContext.request.contextPath}/img/servicios/actividades_culturales_deportivas/icono_culturales-min.png" alt="Culturales"/>
                            </figure>
                            <h3>Culturales</h3>
                            <table style="width:100%;">
                                <tbody>
                                    <tr>
                                        <td style="width:50%;">
                                            <ul>
                                                <li>Dibujo</li>
                                                <li>Poesía</li>
                                                <li>Literatura</li>
                                                <li>Teatro</li>
                                                <li>Escolta de bandera</li>
                                            </ul>
                                        </td>
                                        <td style="width:50%;">
                                            <ul>
                                                <li>Tamborileros</li>
                                                <li>Creatividad Manual</li>
                                                <li>Banda de guerra</li>
                                                <li>Música</li>
                                            </ul>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <br/>
                            <figure style="display:inline-block;">
                                <img src="${pageContext.request.contextPath}/img/servicios/actividades_culturales_deportivas/icono_deportivos-min.png" alt="Deportivas"/>
                            </figure>
                            <h3>Deportivos</h3>
                            <table style="width:100%;">
                                <tr>
                                    <td style="width: 50%">
                                        <ul>
                                            <li>Ajedrez</li>
                                            <li>Voleibol</li>
                                            <li>Futbol rápido</li>
                                            <li>Béisbol</li>
                                        </ul>
                                    </td>
                                    <td style="width: 50%">
                                        <ul>
                                            <li>Fitness</li>
                                            <li>Futbol soccer</li>
                                            <li>Basquetbol</li>
                                            <li style="list-style: none;">&nbsp;</li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                            <br/>
                            <div class="ficha_contacto">
                                <header><h3>Contacto</h3></header>
                                <article>
                                    <p>Isabel Cristina Balcázar Peralta</p>
                                    <p>Conmutador: +52 (993) 3.58.22.22 Ext. 8100</p>
                                    <p>Correo institucional: <a href="mailto:daculturales@uttab.edu.mx">daculturales@uttab.edu.mx</a></p>
                                    <div class="corte"></div>
                                </article>
                            </div>
                            <div class="corte"></div>
                        </article>

                            <article class="servicios_texto2 right" style="height: 447px; text-align: right;">
                                <img src="${pageContext.request.contextPath}/img/servicios/actividades_culturales_deportivas/actividades_culturales_deportivas1-min.png" alt="Actividades Culturales y Deportivas 1" style="margin-bottom: 29px;"/>
                            <img src="${pageContext.request.contextPath}/img/servicios/actividades_culturales_deportivas/actividades_culturales_deportivas2-min.png" alt="Actividades Culturales y Deportivas 2"/>
                            <div class="corte"></div>
                        </article>
                        <div class="corte"></div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/js/layerslider.kreaturamedia.jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/JQuery/jquery-easing-1.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/servicios.min.js"></script>
    </body>
</html>