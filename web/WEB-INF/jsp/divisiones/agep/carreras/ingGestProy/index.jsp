<%-- 
    Document   : index
    Created on : 25/06/2013, 11:57:12 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Ingeniería en Gestión de Proyectos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Ingeniería en Gestión de Proyectos">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="css/carreras.min.css"/>
        <!--[if lte IE 8]>
        <link  rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../../../../includeMenu.jsp?origen=carrera" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_carrera_img"><img src="img/divisionesUsoComun/agep/carreras/ingGestProy/Ing1.png" width="457" height="327" alt="area_carrera_img"/></div>
            <div class="area_carrera_info">
                <div class="area_carrera_info_titulo"><h3>Ingeniería en Gestión de Proyectos</h3></div>
                <div class="area_carrera_info_mision_vision">
                    <p>&nbsp;</p>
                    <p class="negritas">Misión</p>
                    <p>&nbsp;</p>
                    <p>Formar profesional calificado en la gerencia de proyectos productivos y 
                        empresariales con capacidades laborales para la identificación, formulación, 
                        evaluación, gerencia y operación de proyectos productivos; a través de un proceso 
                        educativo de calidad, que fomente actitudes positivas para el trabajo y valores 
                        universales. </p>
                    <p>&nbsp;</p>
                    <p class="negritas">Visión</p>
                    <p>&nbsp;</p>
                    <p>Ser un programa educativo con calidad reconocida en los sectores económicos y 
                        gubernamentales del estado para formar Ingenieros en Gestión de Proyectos.</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p class="plan_estudio"><a href="viewFile.action?i=2&d=agep" target="_blank"><img src="img/carrerasUsoComun/btn_plan_estudio.png" width="122" height="28" alt="plan de estudios"/></a>
                    </p>
                </div>
            </div>
            <div class="area_carrera_perfiles">
                <div class="area_carrera_perfiles_titulo"><h3>Perfiles</h3></div>

                <div class="area_carrera_perfiles_ingreso">
                    <div class="area_carrera_perfiles_ingreso_titulo"><h3>De ingreso</h3></div>
                    <div class="area_carrera_perfiles_ingreso_info">
                        <ul>
                            <li>-Egresado de TSU en AAyEP</li>
                            <li>-Interés por el desarrollo económico de la región</li>
                            <li>-Agrado por el análisis cualitativo y cuantitativo</li>
                            <li>-Interés por la investigación</li> 
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_perfiles_egreso">
                    <div class="area_carrera_perfiles_egreso_titulo"><h3>De egreso</h3></div>
                    <div class="area_carrera_perfiles_egreso_info">
                        <ul>
                            <li>-Identificar nichos y/a oportunidades de negocios</li>
                            <li>-Diseñar planes de negocios y proyectos de inversión</li>
                            <li>-Realizar estudios y diagnósticos organizacionales, locales y regionales</li>
                            <li>-Gestionar y administrar financiamiento</li>
                            <li>-Innovación de procesos apoyado en modelos de ingeniería y simuladores</li>
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
                            <li>-Gestionar el financiamiento y la ejecución de proyectos de inversión aplicando la normatividad y reglas de operación de los distintos organismos e instituciones de financiamiento, para la creación o expansión de empresas</li> 
                            <li>-Dirigir los procesos de consultoría financiera, de mercadotecnia y reingeniería, con base en la normatividad aplicable </li>
                            <li>-Dirigir la planeación estratégica para la toma de decisiones que asegure el logro de los objetivos de la organización</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_competencias_profesionales">
                    <div class="area_carrera_competencias_profesionales_titulo"><h3>Ocupaciones profesionales</h3></div>
                    <div class="area_carrera_competencias_profesionales_info">
                        <ul>
                            <li>-Asesor en proyectos productivos</li> 
                            <li>-Promotor de programas de desarrollo social</li> 
                            <li>-Promotor de programas de desarrollo rural y/o agrícola</li> 
                            <li>-Formulador y evaluador de proyectos</li> 
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
