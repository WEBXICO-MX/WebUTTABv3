<%-- 
    Document   : reglamento_escolar
    Created on : 30/07/2013, 01:44:43 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
         <!--[if IE]>
           <link rel="shortcut icon"  href=""img/favicon.ico"/> 
         <![endif]-->

        <link rel="icon" href="img/favicon.ico"/>
        <title>UTTAB &#124; Reglamento Escolar</title>
        <!-- Meta data -->
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Reglamento Escolar">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link media="all" type="text/css" href="css/servicios.min.css" id="stylesheet-css" rel="stylesheet">
        <!--<meta http-equiv="refresh" content="30">-->
        <!--[if lte IE 8]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <link type="text/css" href="css/ie.min.css" rel="stylesheet">
        <![endif]-->
    <body>
<jsp:include page="../includeMenu.jsp?origen=servicios" flush="true"  />
<!-- Cuerpo -->
<div id="contenedor2" style="position: relative;">
    <object id="objeto_embebido" data="http://saiiut.uttab.edu.mx/doctos/legislacion_universitaria/REGLAMENTO_ESCOLAR.pdf" width="1002" height="800">
        <param name="wmode" value="opaque">
    </object>
</div>
<!-- Cuerpo -->
<jsp:include page="../includePie.jsp?origen=servicios" flush="true" />
    </body>
</html>
