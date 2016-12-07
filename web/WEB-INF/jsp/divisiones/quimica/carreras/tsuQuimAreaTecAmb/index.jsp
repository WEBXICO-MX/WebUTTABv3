<%-- 
    Document   : index
    Created on : 25/06/2013, 11:57:12 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; TSU en Química área Tecnología Ambiental</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Página web institucional de la Universidad Tecnológica de Tabasco">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
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
            <div class="area_carrera_img"><img src="img/divisionesUsoComun/quimica/Carreras/tsuQuimAreaTecAmb/QuimTecAmb.png" width="457" height="327" alt="area_carrera_img"/></div>
            <div class="area_carrera_info">
                <div class="area_carrera_info_titulo"><h3>TSU en Química área Tecnología Ambiental</h3></div>
                <div class="area_carrera_info_mision_vision">
                    <p>&nbsp;</p>
                    <p class="negritas">Misión</p>
                    <p>&nbsp;</p>
                    <p>Buscar permanentemente la calidad en la formación de TSU en Química área 
                        Tecnología Ambiental, en la prestación de servicios que respondan a los 
                        requerimientos prioritarios del sector productivo y la sociedad para trabajar con 
                        sentido innovador, ética y compromiso social en las áreas de oportunidad en 
                        materia ambiental. </p>
                    <p>&nbsp;</p>
                    <p class="negritas">Visión</p>
                    <p>&nbsp;</p>
                    <p>Ser un programa educativo, reconocido por su calidad en la formación de 
                        profesionistas y la prestación de servicios de tecnologías ambientales a nivel estatal, 
                        regional y nacional, estrechamente vinculada con el sector productivo e instituciones
                        de educación, cultura y desarrollo tecnológico. </p>
                    <p>&nbsp;</p>
                    <p class="plan_estudio"><a href="viewFile.action?i=4&d=quimica" target="_blank"><img src="img/carrerasUsoComun/btn_plan_estudio.png" width="122" height="28" alt="plan de estudios"/></a>
                    </p>
                </div>
            </div>
            <div class="area_carrera_perfiles">
                <div class="area_carrera_perfiles_titulo"><h3>Perfiles</h3></div>

                <div class="area_carrera_perfiles_ingreso">
                    <div class="area_carrera_perfiles_ingreso_titulo"><h3>De ingreso</h3></div>
                    <div class="area_carrera_perfiles_ingreso_info">
                        <ul>
                            <li>-Egresado de bachillerato</li> 
                            <li>-Habilidad y conocimientos previos en matemáticas y química</li> 
                            <li>-Interés por los trabajos de campo</li> 
                            <li>-Interés por los trabajos de laboratorio químico</li> 
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_perfiles_egreso">
                    <div class="area_carrera_perfiles_egreso_titulo"><h3>De egreso</h3></div>
                    <div class="area_carrera_perfiles_egreso_info">
                        <ul>
                            <li>-Planeación y ejecución de actividades orientadas a la protección del ambiente</li>
                            <li>-Habilidad para analizar información y toma de decisiones respecto a los efectos ambientales</li>
                            <li>-Habilidad para proponer y poner en marcha alternativas de tecnologías en la prevención y tratamiento de contaminantes</li> 
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
                            -Evaluar elementos de calidad ambiental con base en la normatividad, el uso de tecnologías y el análisis de sistemas para integrar programas ambientales de calidad, seguridad e higiene laboral
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_competencias_profesionales">
                    <div class="area_carrera_competencias_profesionales_titulo"><h3>Ocupaciones profesionales</h3></div>
                    <div class="area_carrera_competencias_profesionales_info">
                        <ul>
                            <li>-Desarrolla e implanta sistemas de administración ambiental, programas de seguridad, higiene y control ambiental</li> 
                            <li>-Gestiona y da seguimiento a las autorizaciones y permisos legales en materia ambiental</li> 
                            <li>-Manejo integral de residuos</li>   
                        </ul>
                    </div>
                </div>
            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../../../../includePie.min.jsp?origen=carrera" flush="true" />
    </body>
</html>
