<%-- 
    Document   : campus
    Created on : 10/07/2013, 12:21:57 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Campus</title>
        <!-- Meta data -->
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Campus">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
         <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/conocenos.min.css">
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpdw9gyXrQvIvyLrVi9FneyumQOE8_9CA&sensor=true"></script>
        <!--[if lte IE 8]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <link rel="stylesheet" href="css/ie.min.css">
        <![endif]-->
        <script>
                    
            var map;
            function initialize()
            {   var uttab = new google.maps.LatLng(17.88458917080483, -452.92301553902627);
                var opt = {zoom: 16, center: uttab, mapTypeId: google.maps.MapTypeId.ROADMAP};
                var map = new google.maps.Map(document.getElementById('google_maps'), opt);
                var marker = new google.maps.Marker({position:uttab, animation: google.maps.Animation.DROP,icon:"${pageContext.request.contextPath}/img/Map-Marker-Push-Pin-1-Left-Azure-icon.png"});
                marker.setMap(map);
                var text = "<h1>Universidad Tecnológica de Tabasco</h1><ul><li>Carretera Villahermosa - Teapa km. 14.6 S/N</li><li>Fraccionamiento Parrilla II, Parrilla, Centro, Tabasco</li><li>C.P. 86280</li><li>+52 (993) 3-58-22-22</li></ul><br/><ul ><li><img src=\"${pageContext.request.contextPath}/img/OS-Android-icon.png\" alt=\"Android app\" style=\"vertical-align: bottom\"/> <a href=\"https://play.google.com/store/apps/details?id=mx.edu.uttab.apputtab\" target=\"blank\">Android app</a></li><li><img src=\"${pageContext.request.contextPath}/img/Systems-Mac-Os-icon.png\" alt=\"iOS app\" style=\"vertical-align: bottom\"/> <a href=\"https://itunes.apple.com/mx/app/uttab/id928155133?mt=8\" target=\"blank\">iOS app</a></li></ul>";
                var info = new google.maps.InfoWindow({content:text});
                google.maps.event.addListener(marker,'click',function(){
                    info.open(map,marker);
                });
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>  
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=conocenos" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_campus"><h3>Campus</h3></div>
            <div class="area_btn_campus"><a href="RecorridoVirtual" target="_blank"><img src="img/conocenos/campus/btn_campus_recorrido_virtual2.png" width="151" height="28" alt="Recorrido virtual"/></a>
            </div>
            <div class="area_info_campus">
                <div class="area_info_campus_1">
                    <div id="google_maps">Google Maps</div>
                    <div id="contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Carr. Vhsa.-Teapa Km. 14.6 s/n Fracc. Parrilla II,</p>
                        <p>C.P. 86280, Parrilla, Centro, Tabasco.</p>
                        <p>Tel.: 01 (993) 3 58 22 22 | Fax: 3 58 22 23 |</p>
                    </div>
                </div>
                <div class="area_info_campus_2">
                    <div class="area_info_campus_2_titulo"><h4>Servicio de transporte escolar</h4></div>
                    <div class="area_info_campus_2_info">
                        <p>La Universidad ofrece de lunes a viernes a los alumnos el servicio de transporte gratuito para asistir a clases, contando con el apoyo de un minibús,
                            dos autobuses y un autobús para viajes foráneos, mismos que est&aacute;n adscritos a la Dirección de Administración y Finanzas, bajo este contexto se
                            establecieron 6 corridas diarias de lunes a viernes en los siguientes horarios y rutas de transporte:</p><br/>

                        <p><label class="negritas">06:30 Horas</label> de Wall Mart de Avenida Universidad y Ruiz Cortines a Universidad Tecnológica, directo por la avenida Luis Donaldo Colosio Murrieta.</p><br/>

                        <p><label class="negritas">06:30 Horas</label> Central Camionera, (bajando la escalera frente a zapater&iacute;a D’Class) a Universdad Tecnológica, directo por la avenida Luis Donaldo Colosio Murrieta.</p><br/>

                        <p><label class="negritas">15:15 Horas</label> de Universidad Tecnológica - Soriana - Mercado de la Sierra, directo.</p><br/>

                        <p><label class="negritas">16:15 Horas</label> de Universidad Tecnológica - Soriana - Mercado de la Sierra, directo.</p><br/>

                        <p><label class="negritas">17:15 Horas</label> de Universidad Tecnológica - Soriana - Mercado de la Sierra, directo.</p><br/>

                        <p><label class="negritas">21:15 Horas</label> de Universidad Tecnológica a (Parrilla por dentro solo si suben alumnos de esa zona) - Soriana - Mercado de la Sierra - Catedral - Paseo Mina - Central Camionera.</p><br/>

                        <p><label class="negritas">22:15 Horas</label> de Universidad Tecnológica a (Parrilla por dentro solo si suben alumnos de esa zona) - Soriana - Mercado de la Sierra - Catedral - Paseo Mina - Central Camionera.</p>
                    </div>
                </div>
                <div class="area_info_campus_3"><a href="viewFile.action?i=1&d=campus" target="_blank"><img src="img/conocenos/campus/campus_croquis.jpg" width="942" height="232" alt="UTTAB Croquis"/></a>
                </div>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=conocenos" flush="true" />
</body>
</html>
