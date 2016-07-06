<%-- 
    Document   : search2
    Created on : 2/09/2013, 09:15:21 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Resultados de la busqueda</title>
        <!-- Meta data -->
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Resultados de la busqueda">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link href="http://fonts.googleapis.com/css?family=Lato:300,400|Open+Sans:300,400" rel="stylesheet" type="text/css">
        <link href="css/search.min.css"  rel="stylesheet" type="text/css" media="all">
        <link href="js/JQuery/plugins/GooglePoweredSiteSearchWithJQuery/styles.css" rel="stylesheet" type="text/css" media="all" >
        <script src="js/JQuery/jquery-1.11.3.min.js"></script>
        <script src="js/JQuery/plugins/GooglePoweredSiteSearchWithJQuery/script.js"></script>
        <script>
            $(document).ready(function() {
            <%if (request.getParameter("q") != null) {%>
                $("#s").val("<%=request.getParameter("q")%>");
                $("#searchForm").submit();
            <%}%>
            });
        </script>

        <!--[if lte IE 8]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <link type="text/css" href="../css/ie.min.css" rel="stylesheet">
        <![endif]-->
    </head>
    <body>
        <jsp:include page="includeMenu.jsp?origen=search" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <form id="searchForm" method="post">
                <fieldset>
                    <input id="s" type="text" />
                    <input type="submit" value="Submit" id="submitButton" />
                </fieldset>
            </form>

            <div id="resultsDiv"></div>

        </div>
        <!-- Cuerpo -->
        <jsp:include page="includePie.jsp?origen=search" flush="true" />
    </body>
</html>
