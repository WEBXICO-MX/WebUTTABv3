<%-- 
    Document   : index
    Created on : 25/06/2013, 11:57:12 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Licenciatura en Gastronomía</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Licenciatura en Gastronomía">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/carreras.min.css"/>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/> 
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../../../../includeMenu.jsp?origen=carrera" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_carrera_img"><img src="img/divisionesUsoComun/turismoGastronomia/Carreras/licGastr/licGastr.png" width="457" height="327" alt="area_carrera_img"/></div>
            <div class="area_carrera_info">
                <div class="area_carrera_info_titulo"><h3>Licenciatura en Gastronomía</h3></div>
                <div class="area_carrera_info_mision_vision">
                    <p>&nbsp;</p>
                    <p class="negritas">Misión</p>
                    <p>&nbsp;</p>
                    <p>Formar profesionales con habilidades y competencias en la administración, 
                        innovación e investigación del área gastronómica, con una visión emprendedora, 
                        capaces de transformar su entorno social y económico a través de proyectos del 
                        desarrollo de la cultura culinaria en la zona y la región. </p>
                    <p>&nbsp;</p>
                    <p class="negritas">Visión</p>
                    <p>&nbsp;</p>
                    <p>Ser un programa educativo de educación superior pertinente en el ramo 
                        gastronómico que ofrezca una visión del profesional en el área de alimentos 
                        y bebidas, con reconocimiento social y económico en la región; líder en el fomento de 
                        los valores culturales locales, nacionales e internacionales.</p>
                    <p>&nbsp;</p>
                    <p class="plan_estudio"><a href="viewFile.action?i=3&d=turismoGastronomia" target="_blank"><img src="img/carrerasUsoComun/btn_plan_estudio.png" width="122" height="28" alt="plan de estudios"/></a>
                    </p>
                </div>
            </div>
            <div class="area_carrera_perfiles">
                <div class="area_carrera_perfiles_titulo"><h3>Perfiles</h3></div>

                <div class="area_carrera_perfiles_ingreso">
                    <div class="area_carrera_perfiles_ingreso_titulo"><h3>De ingreso</h3></div>
                    <div class="area_carrera_perfiles_ingreso_info">
                        <ul>
                            <li>-Egresado de TSU en Gastronomía</li> 
                            <li>-Bases culinarias</li> 
                            <li>-Conocimientos en seguridad e higiene</li> 
                            <li>-Cultura gastronómica local, nacional e internacional</li> 
                            <li>-Conocimiento de técnicas y servicio al cliente</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_perfiles_egreso">
                    <div class="area_carrera_perfiles_egreso_titulo"><h3>De egreso</h3></div>
                    <div class="area_carrera_perfiles_egreso_info">
                        <ul>
                            <li>-Controlará recursos financieros, materiales y tecnológicos, mejorando la productividad e incrementando el rendimiento de establecimientos de alimentos y bebidas</li> 
                            <li>-Dirigirá equipos de trabajo dinámicos y gestionará negociaciones estratégicas redituables</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="area_carrera_competencias">
                <div class="area_carrera_competencias_titulo"><h3>Competencias</h3></div>
                <div class="area_carrera_competencias_especificas">
                    <div class="area_carrera_competencias_especificas_titulo"><h3>Competencias espec&iacute;ficas</h3></div>
                    <div class="area_carrera_competencias_especificas_info">
                        <ul>
                            <li>-Crear conceptos gastronómicos innovadores, mediante el diseño de productos, servicios y espacios, para satisfacer las necesidades del mercado, contribuir a la rentabilidad de los establecimientos y bebidas y al desarrollo gastronómico de la zona</li> 
                            <li>-Administrar establecimientos de alimentos y bebidas, a través del control y dirección de sus recursos, para optimizarlos y contribuir a la rentabilidad y productividad de la organización</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_competencias_profesionales">
                    <div class="area_carrera_competencias_profesionales_titulo"><h3>Ocupaciones profesionales</h3></div>
                    <div class="area_carrera_competencias_profesionales_info">
                        <ul>
                            <li>-Chef ejecutivo</li> 
                            <li>-Empresario</li> 
                            <li>-Gerente de alimentos y bebidas</li>
                            <li>-Gerente general</li> 
                            <li>-Director de banquetes</li> 
                            <li>-Consultor de diseño de proyectos gastronómicos sustentables</li> 
                        </ul>
                    </div>
                </div>
            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../../../../includePie.jsp?origen=carrera" flush="true" />
    </body>
</html>
