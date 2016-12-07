<%-- 
    Document   : proyectos_incubados
    Created on : 28/08/2013, 01:03:31 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de incubación y desarrollo de negocios &#124; Proyectos incubados</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Editorial">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/vinculacion.min.css">
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=vinculacion" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_proyectos_incubados"><h3>Centro de Incubación y Desarrollo de Negocios</h3></div>
            <div class="area_btn_proyectos_incubados">
                <a href="CentroIncubacion" target="_self"><img src="img/vinculacion/centro_incubacion/CIDEN-UT.png" width="151" height="28" alt="CIE-UT" id="cie_ut"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="ProyectosIncubados" target="_self"><img src="img/vinculacion/centro_incubacion/btn_proyectos_incubados2.png" width="151" height="28" alt="Proyectos incubados" id="proyectos_incubados" style="opacity:0.8;filter:alpha(opacity=80);"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="https://www.youtube.com/watch?v=gpLr8aI-_xo" target="_blank"><img src="img/vinculacion/centro_incubacion/btn_video.png" width="151" height="29" alt="Video"/></a>
            </div>
            <div class="area_info_proyectos_incubados" id="area_info_proyectos_incubados">
                <div class="area_info_proyectos_incubados_1">
                    <div class="area_info_proyectos_incubados_1_titulo"><h4>Proyectos incubados</h4></div>
                    <div class="area_info_proyectos_incubados_1_info">
                        <p><img src="img/vinculacion/centro_incubacion/logos web.jpg" width="936" height="1337" alt="Centro de Incubación y Desarrollo de Negocios"/>
                        </p><br/>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=vinculacion" flush="true" />
    </body>
</html>