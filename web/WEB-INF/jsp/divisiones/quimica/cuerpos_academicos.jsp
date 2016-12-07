<%-- 
    Document   : index
    Created on : 20/06/2013, 09:24:03 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; División académica de Química  &#124; Cuerpos académicos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División académica de Química,Cuerpos académicos">
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
            <div class="area_titulo_division"><h3>División Académica de Química</h3></div>
            <div class="area_botones_division">
                <a href="Quimica" target="_self"><img src="img/divisionesUsoComun/infraestructura.png" width="122" height="28" alt="Infraestructura"/></a>&nbsp;&nbsp;&nbsp;
                <a href="CuerposAcademicosQuimica" target="_self"><img src="img/divisionesUsoComun/btn_cuerpos_academicos.png" width="122" height="28" alt="Cuerpos académicos"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>&nbsp;&nbsp;&nbsp;
                <a href="LogrosQuimica" target="_self"><img src="img/divisionesUsoComun/logros.png" width="122" height="28" alt="Logros"/></a>&nbsp;&nbsp;&nbsp;
                <a href="DirectorioQuimica" target="_self"><img src="img/divisionesUsoComun/directorio.png" width="122" height="28" alt="Directorio"/></a>
            </div>
            <div class="area_cuerpos_academicos">
                <div class="area_cuerpos_academicos_1">
                    <div class="area_cuerpos_academicos_titulo"><h3>Cuerpo académico en consolidación: Conocimientos y tecnologías para el ambiente</h3></div>
                    <div class="area_cuerpos_academicos_info">
                        <p class="negritas">L&iacute;neas de investigaci&oacute;n</p>
                        <ul>
                            <li>Gestión e innovación en sistemas ambientales </li>
                            <li>Gestión de sistemas de seguridad laboral y aplicación tecnológica</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Integrantes</p>
                        <ul>
                            <li>M.I.P.A. René Méndez Villegas</li> 
                            <li>M.I.P.A. Santiago Mar Balderas</li> 
                            <li>Ing. Claudia María del Carmen Ceniceros González</li> 
                            <li>Ing. José Alfredo Irineo Mijangos</li> 
                            <li>Ing. William Montiel Reyes</li> 
                            <li>M.I.P.A. Juan Ismael Ledesma Herrera</li> 
                            <li>M. en C. Petrona Gómez Rivera</li> 
                            <li>Ing. José Fernando Córdova Gómez</li> 
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Colaboradores:</p>
                        <ul>
                            <li>Ing. Jorge Luis Soberano Montuy</li> 
                            <li>Lic. Antonia Gómez de los Santos</li>  
                            <li>Lic. Saayde Hernández Contreras</li>  
                        </ul>
                    </div>
                    <div class="area_cuerpos_academicos_img"><img src="img/divisionesUsoComun/quimica/Cuerpo_Academico1.png" width="464" height="288" alt="area_cuerpos_academicos_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_cuerpos_academicos_2">
                    <div class="area_cuerpos_academicos_titulo2"><h3>Cuerpo académico en formación: Materiales y corrosión</h3></div>
                    <div class="area_cuerpos_academicos_info">
                        <p class="negritas">L&iacute;nea de investigaci&oacute;n</p>
                        <ul>
                            <li>Tecnologías de los materiales</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Integrantes</p>
                        <ul>
                            <li>Ing. Eduardo Torres Aguilar</li> 
                            <li>Ing. Daniel Gutiérrez Ramos</li> 
                            <li>Ing. José del Carmen Hernández de la Cruz</li> 
                            <li>Ing. Elsa Uicab Córdova</li> 
                            <li>Ing. Áureo Rivera Córdova </li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">L&iacute;nea de investigaci&oacute;n</p>
                        <ul>
                            <li>Tecnologías del petróleo</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Integrantes</p>
                        <ul>
                            <li>Ing. Nancy Elena Hernández Morales</li> 
                            <li>Ing. Noemí Goñi Vera</li> 
                            <li>Ing. Gabriel Ramón Hernández</li> 
                            <li>Fis. Marco Andrés Jiménez Moreno</li>
                        </ul>
                    </div>
                    <div class="area_cuerpos_academicos_img"><img src="img/divisionesUsoComun/quimica/Cuerpo_Academico2.png" width="464" height="288" alt="area_cuerpos_academicos_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../../includePie.min.jsp?origen=division" flush="true" />
    </body>
</html>

