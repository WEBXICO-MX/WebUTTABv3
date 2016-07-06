<%-- 
    Document   : index
    Created on : 20/06/2013, 09:24:03 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; División Académica de Administración y Gestión de Proyectos &#124; Cuerpos académicos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Administración y Gestión de Proyectos,Cuerpos académicos">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/divisiones.min.css">
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
                <a href="CuerposAcademicosAGEP" target="_self"><img src="img/divisionesUsoComun/btn_cuerpos_academicos.png" width="122" height="28" alt="Cuerpos académicos"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>&nbsp;&nbsp;&nbsp;
                <a href="LogrosAGEP" target="_self"><img src="img/divisionesUsoComun/logros.png" width="122" height="28" alt="Logros"/></a>&nbsp;&nbsp;&nbsp;
                <a href="DirectorioAGEP" target="_self"><img src="img/divisionesUsoComun/directorio.png" width="122" height="28" alt="Directorio"/></a>
            </div>
            <div class="area_cuerpos_academicos">
                <div class="area_cuerpos_academicos_1">
                    <div class="area_cuerpos_academicos_titulo"><h3>Cuerpo académico: Investigación y consultoría empresarial</h3></div>
                    <div class="area_cuerpos_academicos_info">
                        <p class="negritas">L&iacute;neas de investigaci&oacute;n</p>
                        <ul>
                            <li>Diagnósticos y consultorías para la toma de decisiones en el sector productivo.</li> 
                            <li>Diseño y/o aplicación de herramientas empresariales y educativas para el desarrollo de las PyMES.</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Integrantes</p>
                        <ul>
                            <li>M. en A. Venilde Herrera Roldán (Responsable del cuerpo académico).</li> 
                            <li>M. en A. Juana Guerrero Gonzáles.</li>
                            <li>M. en A. Ramón Ramón Castillo.</li>
                            <li>M. en A. Elsy Janeth Alejandro Pantoja.</li> 
                        </ul>
                    </div>
                    <div class="area_cuerpos_academicos_img"><img src="img/divisionesUsoComun/agep/Cuerpo_Academico1.png" width="464" height="288" alt="area_cuerpos_academicos_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_cuerpos_academicos_2">
                    <div class="area_cuerpos_academicos_titulo2" style="height: 38px;padding-top: 0px;"><h3>Cuerpo académico: Sistemas de innovación tecnológica, desarrollo de competencias y gestión de sistemas de calidad</h3></div>
                    <div class="area_cuerpos_academicos_info">
                        <p class="negritas">L&iacute;neas de investigaci&oacute;n</p>
                        <ul>
                            <li>Sistemas de innovación e investigación tecnológica empresarial.</li> 
                            <li>Enseñanza de las ciencias, ingenierías y tecnologías en educación superior.</li> 
                            <li>Gestión de sistemas de calidad.</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Integrantes</p>
                        <ul>
                            <li>Dr. Sergio Valle Mijangos (Responsable del cuerpo académico).</li> 
                            <li>M. I. P. A. Juan Javier Castillo Ramiro.</li>
                            <li>M. en A. Norma Angélica Hernández Gómez.</li>
                            <li>M. en C. Ricardo Amado Moheno Barrueta.</li>
                        </ul>

                    </div>
                    <div class="area_cuerpos_academicos_img"><img src="img/divisionesUsoComun/agep/Cuerpo_Academico2.png" width="464" height="288" alt="area_cuerpos_academicos_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../../includePie.jsp?origen=division" flush="true" />
    </body>
</html>

