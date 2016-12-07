<%-- 
    Document   : case2
    Created on : 08-mar-2016, 15:43:11
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Atención al Sector Energético</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Atención al Sector Energético">
        <meta name="keywords" content="vinculación,Centro de Atención al Sector Energético,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/css/layerslider.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            .case_slider {
                width: 942px;
                height: 299px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="/WEB-INF/jsp/includeHeader.min.jsp?origen=unidades_negocio" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Centro de Atención al Sector Energético</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto"><br/>
                        <header><h3>¿Quiénes somos?</h3></header><br/>
                        <article class="case_slider">
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/1.png" alt="CASE 1" class="ls-bg"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/2.png" alt="CASE 2"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/3.png" alt="CASE 3"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/4.png" alt="CASE 4"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/5.png" alt="CASE 5"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/6.png" alt="CASE 6"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                        </article><br/>
                        <p class="primera_linea">El Centro de Atención al Sector Energético tiene como actividad sustantiva mantener una estrecha vinculación con Petróleos Mexicanos, a través de sus diversas subsidiarias, administrando proyectos de capacitación sobre la industria petrolera, capacitación sobre perforación y mantenimiento a pozos; administrando los pozos-escuelas en "El Castaño" Dos Bocas en Tabasco y "Burgos" en Reynosa, Tamaulipas.</p><br/>
                        <p class="primera_linea">Por otra parte, proporcionar servicios de ingeniería de proyectos y asistencia técnica en la construcción, operación, mantenimiento y administración; así como todo lo relacionado con tecnología de la información.</p>
                    </section>
                    <section class="vinculacion_texto">
                        <header><h3>Capacitación</h3></header><br/>
                        <p class="primera_linea">La Universidad Tecnológica de Tabasco, como organismo educativo y formativo, ofrece entrenamiento y capacitación en la rama industrial petrolera a través de planes de capacitación enfocados en 3 de las principales áreas de esta industria, tales como: servicio a pozos, mantenimiento a equipos y perforación y terminación de pozos.</p><br/>
                        <div id="ajax_resultado">
                            <img src="${pageContext.request.contextPath}/img/ajax-loading.gif" alt="Loading"/> Cargando ...
                        </div>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto" style="width:500px;">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Alberto de la Cruz Cruz</p>
                                <p>Coordinador de capacitación</p>
                                <p>Número directo: +52 (993) 3.58.22.10</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2017 | 2018</p>
                                <p>Correo institucional: <a href="coordinaciondecapacitacion@uttab.edu.mx">coordinaciondecapacitacion@uttab.edu.mx</a></p>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.min.jsp?origen=unidades_negocio" flush="true" />
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/js/layerslider.kreaturamedia.jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/JQuery/jquery-easing-1.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/unidades_negocio/case/case.min.js"></script>
        <script>
            var rest1 = "http://www.uttab.edu.mx/WebCASE/rest/tiposcapacitaciones";
            var html = "";


            $(document).ready(function () {
                $.ajaxSetup({cache: false});

                getContendView();

            });

            function getContendView()
            {
                $.getJSON(rest1, function (data) {
                    if (data.length > 0)
                    {
                        $.each(data, function (i, value) {

                            html += "<h4>" + value.nombre + "</h4>";
                            /*
                             * El JSON que se obtiene de los tipos de capacitaciones contiene un nodo llamado "capacitaciones" 
                             * que contiene un arreglo de todos los cursos relaciondados con el tipo de capacitacion lo que 
                             * facilita hacer solo un llamado a un solo web services
                             * */
                            if (value.capacitaciones.length > 0)
                            {
                                html += "<ul>";
                                $.each(value.capacitaciones, function (j, value2) {
                                    /*
                                     * A su vez el arreglo que contiene el nodo "capacitaciones" tiene objetos "Capacitacion", los cueles tambien cuenta con un nodo
                                     * llamado "calendarios_capacitaciones", el cual es un arreglo de objetos "CalendarioCapacitacion", esto facilitar que capacitaciones
                                     * tienen fechas abiertas
                                     */
                                    if (value2.calendarios_capacitaciones.length > 0)
                                    {
                                        html += "<li><a href=\"calendario.action?c=" + value2.id + "\"><strong>" + value2.nombre + "</strong></a> <img src=\"${pageContext.request.contextPath}/img/Map-Marker-Push-Pin-1-Right-Pink-icon.png\" alt=\"Tiene Calendario de capacitaciones\"></li>";
                                    }
                                    else
                                    {
                                        html += "<li>" + value2.nombre + "</li>";
                                    }

                                });
                                html += "</ul><br/>";
                            }
                        });

                        $("#ajax_resultado").html(html);
                    }
                    else
                    {
                        html += "<p>No hay datos acerca de las capacitaciones por el momento.</p>";
                    }

                });
            }
        </script>
    </body>
</html>