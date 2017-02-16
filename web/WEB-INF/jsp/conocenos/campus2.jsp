<%-- 
    Document   : campus2
    Created on : 18-nov-2015, 9:56:38
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Campus</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Campus">
        <meta name="keywords" content="conócenos,campus,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/conocenos3.min.css"/>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpdw9gyXrQvIvyLrVi9FneyumQOE8_9CA&sensor=true"></script>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="conocenos_section">
                <header class="conocenos_titulo">
                    <h2><span class="texto_resaltado">Conócenos</span> /</h2>
                    <h1>Campus</h1>
                    <div class="corte"></div>
                </header>
                <article class="conocenos_contenido">
                    <section class="conocenos_texto">
                        <s:a action="RecorridoVirtual" namespace="" target="_blank"><img src="${pageContext.request.contextPath}/img/conocenos/campus/campus1-min.png" alt="Recorrido virtual"/></s:a>
                            <div id="google_maps">Universidad Tecnológica de Tabasco en Google Maps</div>
                            <div class="ficha_contacto" style="height: 120px;">
                                <header><h3>Contacto</h3></header>
                                <article>
                                    <p>Carr. Vhsa.-Teapa Km. 14.6 s/n Fracc. Parrilla II,C.P. 86288, Parrilla, Centro, Tabasco.</p>
                                    <p>Tel.: 01 (993) 3 58 22 22 | Fax: 3 58 22 23 |</p>
                                </article>
                            </div>
                        </section>
                        <section class="conocenos_texto">
                            <header><h3>Servicio de transporte escolar</h3></header>
                            <article>
                                <p class="primera_linea">La Universidad ofrece de lunes a viernes, a los alumnos, el servicio de transporte gratuito para asistir a clases, contando con el apoyo de un minibús y cuatro autobuses, bajo este contexto se establecieron siete corridas de lunes a viernes.</p>
                                <img src="${pageContext.request.contextPath}/img/conocenos/campus/campus2-min.png" alt="Servicio de transporte escolar"/>                       </article>
                    </section>
                    <section class="conocenos_texto">
                        <!-- Croquis -->
                        <s:url var="url_croquis" action="viewFile" namespace="">
                            <s:param name="i" value="2"></s:param>
                            <s:param name="d" value="%{'campus'}"></s:param>
                        </s:url>
                        <s:a href="%{url_croquis}" target="_blank"><img src="${pageContext.request.contextPath}/img/conocenos/campus/campus_croquis.jpg" alt="Croquis"/></s:a>
                        </section>
                    </article>
                    <div class="corte"></div>
                </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />            
        </main>
        <script>

            var map;
            function initialize()
            {
                var uttab = new google.maps.LatLng(17.88458917080483, -452.92301553902627);
                var opt = {zoom: 16, center: uttab, mapTypeId: google.maps.MapTypeId.ROADMAP};
                var map = new google.maps.Map(document.getElementById('google_maps'), opt);
                var marker = new google.maps.Marker({position: uttab, animation: google.maps.Animation.DROP});
                marker.setMap(map);
                var text = "<h3>Universidad Tecnológica de Tabasco</h3><ul><li>Carretera Villahermosa - Teapa km. 14.6 S/N</li><li>Fraccionamiento Parrilla II, Parrilla, Centro, Tabasco</li><li>C.P. 86288</li><li>+52 (993) 3-58-22-22</li></ul><br/><ul ><li><img src=\"${pageContext.request.contextPath}/img/OS-Android-icon.png\" alt=\"Android app\" style=\"vertical-align: bottom\"/> <a href=\"https://play.google.com/store/apps/details?id=mx.edu.uttab.apputtab\" target=\"blank\">Android app</a></li><li><img src=\"${pageContext.request.contextPath}/img/Systems-Mac-Os-icon.png\" alt=\"iOS app\" style=\"vertical-align: bottom\"/> <a href=\"https://itunes.apple.com/mx/app/uttab/id928155133?mt=8\" target=\"blank\">iOS app</a></li></ul>";
                var info = new google.maps.InfoWindow({content: text});
                google.maps.event.addListener(marker, 'click', function () {
                    info.open(map, marker);
                });
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
    </body>
</html>