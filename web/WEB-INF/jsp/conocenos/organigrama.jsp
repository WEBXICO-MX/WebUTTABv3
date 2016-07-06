<%-- 
    Document   : organigrama
    Created on : 9/07/2013, 11:24:22 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Organigrama</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Organigrama">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/conocenos.min.css">
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            /* styles unrelated to zoom */
            * { border:0; margin:0; padding:0; }
            #zoomp { position:absolute; top:3px; right:28px; color:#555; font:bold 13px/1 sans-serif;}

            /* these styles are for the demo, but are not required for the plugin */
            .zoom {
                display:inline-block;
                position: relative;
            }
            /* magnifying glass icon */
            .zoom:after {
                content:'';
                display:block; 
                width:33px; 
                height:33px; 
                position:absolute; 
                top:0;
                right:0;
                background:url(js/JQuery/plugins/jQuery%20Zoom/icon.png);
            }

            .zoom img {
                display: block;
            }

            .zoom img::selection { background-color: transparent; }
            #ex1 img:hover { cursor: url(js/JQuery/plugins/jQuery%20Zoom/grab.cur), default; }
            #ex1 img:active { cursor: url(js/JQuery/plugins/jQuery%20Zoom/grabbed.cur), default; }
        </style>
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=conocenos" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_organigrama"><h3>Organigrama</h3></div>
            <div class="area_info_organigrama"> 
                <span class='zoom' id='ex1'>
                    <img src="img/conocenos/organigrama/estructura_organica_3er_trimestre_2015.png" alt="Organigrama UTTAB" width="940" height="705"/>
                    <p id="zoomp">Click para activar ZOOM</p>
                </span>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=conocenos" flush="true" />
        <script src='js/JQuery/plugins/jQuery Zoom/jquery.zoom.min.js'></script>
        <script>
            $(document).ready(function() {
                $('#ex1').zoom({on: 'grab'});
            });
        </script>
    </body>
</html>
