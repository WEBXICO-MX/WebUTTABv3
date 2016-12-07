<%-- 
    Document   : index
    Created on : 20/06/2013, 09:24:03 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; División académica de Tecnologías de la Información y Comunicación &#124; Cuerpos académicos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División académica de Tecnologías de la Información y Comunicació,Cuerpos académicos">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
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
            <div class="area_titulo_division"><h3>Divisi&oacute;n Acad&eacute;mica de Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n</h3></div>
            <div class="area_botones_division">
                <a href="TIC" target="_self"><img src="img/divisionesUsoComun/infraestructura.png" width="122" height="28" alt="Infraestructura"/></a>&nbsp;&nbsp;&nbsp;
                <a href="CuerposAcademicosTIC" target="_self"><img src="img/divisionesUsoComun/btn_cuerpos_academicos.png" width="122" height="28" alt="Cuerpos académicos"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>&nbsp;&nbsp;&nbsp;
                <a href="LogrosTIC" target="_self"><img src="img/divisionesUsoComun/logros.png" width="122" height="28" alt="Logros"/></a>&nbsp;&nbsp;&nbsp;
                <a href="DirectorioTIC" target="_self"><img src="img/divisionesUsoComun/directorio.png" width="122" height="28" alt="Directorio"/></a>
            </div>
            <div class="area_cuerpos_academicos">
               <!-- <div class="area_cuerpos_academicos_1">
                    <div class="area_cuerpos_academicos_titulo"><h3>Cuerpo acad&eacute;mico: Proyectos de tecnolog&iacute;as de la informaci&oacute;n</h3></div>
                    <div class="area_cuerpos_academicos_info">
                        <p class="negritas">L&iacute;neas de investigaci&oacute;n</p>
                        <ul>
                            <li>Diseño de redes de datos, voz y video</li>
                            <li>Gestión de proyectos de tecnolog&iacute;as de la informaci&oacute;n en las  PYMES</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Integrantes</p>
                        <ul>
                            <li>M.S.I. Salvador Pérez García</li>
                            <li>M.S.I. Francisco Javier Velázquez Medellín</li>
                            <li>M.T.I. Juan Gabriel Vargas Franco</li>
                            <li>M.A.T.I. Eligio Cachón Menéndez</li>
                            <li>M.E. Candelario Méndez Olán</li>
                            <li>M.T.I. Gerardo Vera Arroyo</li>
                        </ul>
                    </div>
                    <div class="area_cuerpos_academicos_img"><img src="img/divisionesUsoComun/tics/Cuerpo_Academico1.png" width="464" height="288" alt="area_cuerpos_academicos_img"/>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>-->
                <div class="area_cuerpos_academicos_2">
                    <div class="area_cuerpos_academicos_titulo2"><h3>Cuerpo acad&eacute;mico: Aplicación de las tecnologías de la información</h3></div>
                    <div class="area_cuerpos_academicos_info">
                        <p class="negritas">L&iacute;neas de investigaci&oacute;n</p>
                        <ul>
                            <li>Sistemas digitales, adquisición, monitoreo de señales y desarrollo de interfaces</li>
                            <li>Enseñanza, desarrollo y aplicación de las tecnologías de la información</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Integrantes</p>
                        <ul>
                            <li>M. en IS. María Reyna Guillermo Guillermo</li>
                            <li>Lic. José Luis Martínez Rivera</li>
                            <li>Lic. Carlos Raúl Muñoz Rodríguez</li>
                            <li>M. en IS. Reina Hernández Ramírez</li>
                            <li>Lic. Librado Jiménez Maceda</li>
                            <li>Lic. Gladys del Carmen Calao Sánchez</li>
                            <li>M.T.E. Ana Aurora Guerrero González</li>
                            <li>M.A. Gerardo Enrique Gutiérrez Romero</li>
                            <li>M. en IS. Martha Ofelia Jiménez Velázquez</li>
                            <li>M. en IS. Octavio Elías Sánchez Aquino</li>
                        </ul>
                    </div>
                    <div class="area_cuerpos_academicos_img"><img src="img/divisionesUsoComun/tics/Cuerpo_Academico2.png" width="464" height="288" alt="area_cuerpos_academicos_img"/>
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

