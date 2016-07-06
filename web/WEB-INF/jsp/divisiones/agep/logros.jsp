<%-- 
    Document   : index
    Created on : 20/06/2013, 09:24:03 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; División Académica de Administración y Gestión de Proyectos  &#124; Logros</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Administración y Gestión de Proyectos,Logros">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/divisiones.min.css"/>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../../includeMenu.jsp?origen=division" flush="true"/>
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_division"><h3>División Académica de Administración y Gestión de Proyectos</h3></div>
            <div class="area_botones_division">
                <a href="AGEP" target="_self"><img src="img/divisionesUsoComun/infraestructura.png" width="122" height="28" alt="Infraestructura"/></a>&nbsp;&nbsp;&nbsp;
                <a href="CuerposAcademicosAGEP" target="_self"><img src="img/divisionesUsoComun/btn_cuerpos_academicos.png" width="122" height="28" alt="Cuerpos académicos"/></a>&nbsp;&nbsp;&nbsp;
                <a href="LogrosAGEP" target="_self"><img src="img/divisionesUsoComun/logros.png" width="122" height="28" alt="Logros" style="opacity:0.8;filter:alpha(opacity=80);"/></a>&nbsp;&nbsp;&nbsp;
                <a href="DirectorioAGEP" target="_self"><img src="img/divisionesUsoComun/directorio.png" width="122" height="28" alt="Directorio"/></a>
            </div>
            <div class="area_logros_division">
                <div class="area_logros_division_1">
                    <div class="area_logros_division_titulo"><h3>Logros de la divisi&oacute;n</h3></div>
                    <div class="area_logros_division_info">
                        <p>Programa educativo de TSU en Administración, área Administración y Evaluación de Proyectos, evaluado en nivel 1 por los Comités Interinstitucionales para la Evaluación de la Educación Superior (CIEES).</p>
                    </div>
                    <div class="area_logros_division_img"><img src="img/divisionesUsoComun/agep/Logros1 (1).jpg" width="464" height="288" alt="area_logros_division_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_logros_division_2">
                    <div class="area_logros_division_info">
                        <p>Programa Educativo de TSU en Administración, área Administración y Evaluación de Proyectos, acreditado por el organismo del Consejo de Acreditación en la Enseñanza de la Contaduría y Administración, A.C. (CACECA).</p>
                    </div>
                    <div class="area_logros_division_img"><img src="img/divisionesUsoComun/agep/Logros2.png" width="464" height="288" alt="area_logros_division_img"/>
                    </div>
                    <div class="corte"></div>
                </div>

            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../../includePie.jsp?origen=division" flush="true" />
</body>
</html>
