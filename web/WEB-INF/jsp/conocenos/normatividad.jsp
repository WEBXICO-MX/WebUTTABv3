<%-- 
    Document   : normatividad
    Created on : 8/07/2013, 01:28:42 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Normatividad</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Normatividad">
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
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=conocenos" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_normatividad"><h3>Normatividad</h3></div>
            <div class="area_info_normatividad">
                <p>Esta sección incluye diversos documentos legales que rigen el quehacer de la Universidad Tecnológica de Tabasco (UTTAB).</p><br/> 

                <p>La normatividad es el conjunto de reglas, leyes o preceptos de carácter obligatorio, emanados de una autoridad normativa, la cual tiene su fundamento de validez
                    en una norma jurídica que la autoriza con el objeto de regular las relaciones sociales y cuyo cumplimiento está garantizado por el Estado.</p><br/>

                <!--<p class="negritas">Links:</p><br/>-->
                <ul>
                    <li><img src="img/doc_acrobat.gif" width="20" height="18" alt="Pdf"/>
                        <a href="viewFile.action?i=1&d=normatividad" target="_blank">Acuerdo que Crea la Universidad Tecnológica de Tabasco</a></li>
                    <li><img src="img/doc_acrobat.gif" width="20" height="18" alt="Pdf"/>
                        <a href="viewFile.action?i=2&d=normatividad" target="_blank">Ley de educación del Estado de Tabasco</a></li>
                    <li><img src="img/doc_acrobat.gif" width="20" height="18" alt="Pdf"/>
                        <a href="viewFile.action?i=3&d=normatividad" target="_blank">Políticas para la operación, desarrollo y consolidación del subsistema</a></li>
                </ul>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=conocenos" flush="true" />
    </body>
</html>
