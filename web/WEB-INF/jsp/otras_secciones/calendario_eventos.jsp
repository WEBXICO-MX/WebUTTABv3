<%-- 
    Document   : calendario_eventos
    Created on : 17/09/2014, 08:38:28 AM
    Author     : Roberto Eder Weiss Juárez
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Calendario de eventos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Gaceta">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="css/otras_secciones.min.css">
        <link rel="stylesheet" href="js/JQuery/plugins/jquery-ui-1.10.4.custom/css/smoothness/jquery-ui-1.10.4.custom.min.css"/>
        <link rel="icon" href="img/favicon.ico"/>
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=otras_secciones" flush="true"  />
        <!-- Cuerpo -->
        <div id="contenedor_calendario_eventos">
            <div id="contenedor_calendario">
                <div id="menuFecha">
                    <ul>
                        <li><a href="javascript:void(0);" onclick="tipoBusqueda(1);">&nbsp;Día&nbsp;</a></li>
                        <li>|</li>
                        <li><a href="javascript:void(0);" onclick="tipoBusqueda(2);">&nbsp;Semana&nbsp;</a></li>
                        <li>|</li>
                        <li><a href="javascript:void(0);" onclick="tipoBusqueda(3);">&nbsp;Mes&nbsp;</a></li>
                    </ul>
                </div>
                <div id="datepicker_calendario_eventos"></div>
                <div id="datepicker_calendario_eventos2"></div>
            </div>
            <div id="contenedor_eventos">
                <div class="area_titulo_calendario_eventos"><h3>Calendario de eventos</h3></div>
                <div class="area_info_calendario_eventos">&nbsp;</div>
                <div class="corte"></div>
            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=otras_secciones" flush="true" />
        <script src="js/JQuery/plugins/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="js/otras_secciones/calendario_eventos.min.js"></script>
        <script>
                            $(document).ready(function() {
                                $.ajaxSetup({cache: false});
                                tipoBusqueda(1);
                            });
        </script>
    </body>
</html>
