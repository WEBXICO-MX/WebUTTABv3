<%-- 
    Document   : index
    Created on : 25/06/2013, 11:57:12 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; TSU en Procesos Alimentarios</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,TSU en Procesos Alimentario">
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
            <div class="area_carrera_img"><img src="img/divisionesUsoComun/procesosIndustriales/carreras/tsuProcAlimentarios/img_tsuProsAlimentarios.png" width="457" height="327" alt="area_carrera_img"/></div>
            <div class="area_carrera_info">
                <div class="area_carrera_info_titulo"><h3>TSU en Procesos Alimentarios</h3></div>
                <div class="area_carrera_info_mision_vision">
                    <p>&nbsp;</p>
                    <p class="negritas">Misión</p>
                    <p>&nbsp;</p>
                    <p>Asegurar la competencia, el liderazgo y la formación integral mediante planes y
                        programas acreditados, laboratorios equipados y especializados a las necesidades
                        del entorno, personal docente calificado (certificado), altamente vinculado al sector
                        productivo, para garantizar una educación de calidad con la permanencia del modelo
                        educativo.</p>
                    <p>&nbsp;</p>
                    <p class="negritas">Visión</p>
                    <p>&nbsp;</p>
                    <p>Ser un programa educativo sustentable, reconocido por su calidad académica, que
                        garantice la competencia y liderazgo con base en sus planes de estudio, laboratorios
                        acreditados, cuerpos académicos consolidados, infraestructura de vanguardia, 
                        personal docente  certificado y vinculado nacional e internacionalmente.</p>
                    <p class="plan_estudio"><a href="viewFile.action?i=3&d=procesosIndustriales" target="_blank"><img src="img/carrerasUsoComun/btn_plan_estudio.png" width="122" height="28" alt="plan de estudios"/></a>
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
                            <li>-Conocimientos en matemáticas y física</li>
                            <li>-Inglés</li>
                            <li>-Dibujo industrial</li>
                            <li>-Redacción y ortografía</li>
                            <li>-Informática</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_perfiles_egreso">
                    <div class="area_carrera_perfiles_egreso_titulo"><h3>De egreso</h3></div>
                    <div class="area_carrera_perfiles_egreso_info">
                        <ul>
                            <li>-Industrializar materias primas, a través de procesos tecnológicos, para producir y conservar alimentos</li>
                            <li>-Dirigir procesos de producción alimentarios, mediante herramientas administrativas y técnicas analíticas, para la optimatización de recursos</li>
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
                            <li>-Industrializar materias primas, a través de procesos tecnológicos, para producir y conservar alimentos</li>
                            <li>-Dirigir procesos de producción alimentarios mediante herramientas administrativas y técnicas analíticas</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_competencias_profesionales">
                    <div class="area_carrera_competencias_profesionales_titulo"><h3>Ocupaciones profesionales</h3></div>
                    <div class="area_carrera_competencias_profesionales_info">
                        <ul>
                            <li>-Analista de alimentos</li>
                            <li>-Coordinador de inocuidad</li>
                            <li>-Supervisor de programas de BPM's</li>
                            <li>-Supervisor de producción</li>
                            <li>-Consultor de proyectos agroalimentarios</li>
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
