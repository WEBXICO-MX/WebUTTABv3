<%-- 
    Document   : contraloria_social
    Created on : 15/10/2013, 10:58:32 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Contraloría Social FOMES y FIUPEA</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Contraloría Social FOMES y FIUPEA">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/otras_secciones.min.css"/>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=otras_secciones" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_contraloria_social_fomes"><h3>Contralor&iacute;a Social</h3></div>
            <div class="area_btn_contraloria_social_fomes">
                <img src="img/otras_secciones/contraloria_social/btn_prodep.png" alt="PRODEP"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="ContraloriaSocialPROMEP" target="_self"><img src="img/otras_secciones/contraloria_social/btn_PROMEP.png" alt="PROMEP"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="ContraloriaSocialFOMES_FIUPEA" target="_self"><img src="img/otras_secciones/contraloria_social/btn_FOMES_FIUPEA.png" alt="FOMES y FIUPEA" style="opacity:0.8;filter:alpha(opacity=80);"/></a>
            </div>
            <div class="area_info_contraloria_social_fomes">
                <div class="area_info_contraloria_social_fomes_1">
                    <div class="area_info_contraloria_social_fomes_1_titulo"><h4>Fondo de Modernización para la Educación Superior (FOMES) y <br/>Fondo de Inversión de Universidades Públicas Estatales con Evaluación de la ANUIES (FIUPEA)</h4></div>   
                    <div class="area_info_contraloria_social_fomes_1_info">
                        <ul>
                            <li><a href="viewFile.action?i=1&d=fomes_fiupea" target="_blank">Esquema de Contraloría Social</a></li>
                            <li><a href="viewFile.action?i=2&d=fomes_fiupea" target="_blank">Guía operativa de Contraloría Social</a></li>
                            <li><a href="viewFile.action?i=3&d=fomes_fiupea" target="_blank">Programa institucional de trabajo de Contraloría Social</a></li>
                            <li><a href="viewFile.action?i=4&d=fomes_fiupea" target="_blank">Plan de difusión de FOMES</a></li>
                            <li><a href="viewFile.action?i=5&d=fomes_fiupea" target="_blank">Plan de difusión de FIUPEA</a></li>
                            <li><a href="viewFile.action?i=6&d=fomes_fiupea" target="_blank">Cédula de vigilancia de FOMES</a></li>
                            <li><a href="viewFile.action?i=7&d=fomes_fiupea" target="_blank">Cédula de vigilancia de FIUPEA</a></li>
                            <li><a href="viewFile.action?i=8&d=fomes_fiupea" target="_blank">Reglas de operación vigentes de FOMES</a></li>
                            <li><a href="viewFile.action?i=9&d=fomes_fiupea" target="_blank">Reglas de operación vigentes de FIUPEA</a></li>
                        </ul>
                    </div>
                    <div class="corte"></div>
                </div>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=otras_secciones" flush="true" />
    </body>

</html>
