<%-- 
    Document   : acreditaciones
    Created on : 11/07/2013, 07:42:09 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Certificaciones</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Certificaciones">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/conocenos.min.css"/>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=conocenos" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_acreditaciones"><h3>Certificaciones</h3></div>
            <div class="area_info_acreditaciones">
                <ul>
                    <li><a href="doctos/conocenos/logros_obtenidos/acreditaciones/CERTIFICADO ISO 9001-2008.pdf" target="_blank">Certificado ISO 9001-2008</a></li>
                    <li><a href="doctos/conocenos/logros_obtenidos/acreditaciones/Certificado ISO 14001-2004.pdf" target="_blank">Certificado ISO 14001-2004</a></li>
                </ul>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=conocenos" flush="true" />
</body>
</html>
