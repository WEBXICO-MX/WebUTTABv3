<%-- 
    Document   : logros_obtenidos
    Created on : 9/07/2013, 12:02:09 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Logros Obtenidos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Logros Obtenidos">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/conocenos.min.css">
        <!--[if lte IE 8]>
        <link  rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=conocenos" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_logros"><h3>Logros Obtenidos</h3></div>
            <div class="area_btn_logros">
                <img src="img/conocenos/logros_obtenidos/btn_logros_reconocimientos.png" width="151" height="28" alt="Reconocimientos"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Certificaciones" target="_self"><img src="img/conocenos/logros_obtenidos/btn_logros_certificaciones.png" width="151" height="28" alt="Certificaciones"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="img/conocenos/logros_obtenidos/btn_logros_acreditaciones.png" width="151" height="28" alt="Acreditaciones"/>
            </div>
            <div class="area_info_logros">
                <p>Esta sección incluye  los logros más importantes que ha obtenido la comunidad universitaria. Entre los que, figuran los reconocimientos por acciones
                    académicas o institucionales, las certificaciones y acreditaciones que aseguran la calidad de los programas educativos, así como de los servicios tecnológicos
                    que se ofrecen.</p><br/>

                <p>La Universidad Tecnológica de Tabasco (UTTAB) en su conjunto, alumnos y profesores, han destacado en diversos eventos y modalidades, en
                    los ámbitos local, regional, nacional e internacional.</p><br/>

                <p>Cabe destacar que la certificación implica el cumplimiento de los requisitos de una norma, mientras que una acreditación da certeza de que la institución tiene
                    la competencia técnica para otorgar el servicio, garantizando la fiabilidad en los resultados.</p>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=conocenos" flush="true" />
    </body>
</html>
