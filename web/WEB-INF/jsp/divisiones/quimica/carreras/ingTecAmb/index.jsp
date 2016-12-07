<%-- 
    Document   : index
    Created on : 25/06/2013, 11:57:12 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Ingeniería en Tecnología Ambiental</title>
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
            <div class="area_carrera_img"><img src="img/divisionesUsoComun/quimica/Carreras/ingTecAmb/ingTecAmb.png" width="457" height="327" alt="area_carrera_img"/></div>
            <div class="area_carrera_info">
                <div class="area_carrera_info_titulo"><h3>Ingeniería en Tecnología Ambiental</h3></div>
                <div class="area_carrera_info_mision_vision">
                    <p>&nbsp;</p>
                    <p class="negritas">Misión</p>
                    <p>&nbsp;</p>
                    <p>Buscar permanentemente la calidad en la formación de profesionales del área
                        ambiental y en la prestación de servicios que respondan a los requerimientos
                        prioritarios del sector productivo y la sociedad, para trabajar con sentido innovador,
                        ética y compromiso social en las áreas de oportunidad que en materia ambiental
                        se presente en la región.</p>
                    <p>&nbsp;</p>
                    <p class="negritas">Visión</p>
                    <p>&nbsp;</p>
                    <p>Ser un programa educativo reconocido por su calidad en la formación de
                        profesionistas y la prestación de servicios de tecnologías ambientales a nivel estatal,
                        regional y nacional, estrechamente vinculado con el sector productivo e instituciones
                        nacionales e internacionales de educación, cultural y desarrollo tecnológico.</p>
                    <p class="plan_estudio"><a href="viewFile.action?i=6&d=quimica" target="_blank"><img src="img/carrerasUsoComun/btn_plan_estudio.png" width="122" height="28" alt="plan de estudios"/></a>
                    </p>
                </div>
            </div>
            <div class="area_carrera_perfiles">
                <div class="area_carrera_perfiles_titulo"><h3>Perfiles</h3></div>

                <div class="area_carrera_perfiles_ingreso">
                    <div class="area_carrera_perfiles_ingreso_titulo"><h3>De ingreso</h3></div>
                    <div class="area_carrera_perfiles_ingreso_info">
                        <ul>
                            <li>-Egresado de TSU en Tecnología Ambiental</li> 
                            <li>-Conocimientos de química, física, álgebra y cálculo</li> 
                            <li>-Habilidad de expresión oral y escrita en español</li> 
                            <li>-Conocimientos básicos del idioma inglés</li> 
                            <li>-Habilidad de análisis y síntesis de información</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_perfiles_egreso">
                    <div class="area_carrera_perfiles_egreso_titulo"><h3>De egreso</h3></div>
                    <div class="area_carrera_perfiles_egreso_info">
                        <ul>
                            <li>-Desarrolla e implanta sistemas de administración ambiental, de seguridad, higiene y control ambiental</li> 
                            <li>-Identifica los tipos de tratamiento de agua adecuados a las necesidades</li> 
                            <li>-Optimiza la operación de las plantas de tratamiento de agua</li>
                            <li>-Colabora en equipos de evaluación de impacto y riesgo ambiental</li> 
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
                            <li>-Desarrollar soluciones de prevención, control, mitigación y remediación de
                                impactos al ambiente empleando herramientas tecnológicas y de gestión
                                innovadoras que permitan optimizar el uso de los recursos con un enfoque
                                sustentable para ser aplicado al sector industrial de bienes y servicios, a la
                                sociedad y a los tres niveles de gobierno</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_competencias_profesionales">
                    <div class="area_carrera_competencias_profesionales_titulo"><h3>Ocupaciones profesionales</h3></div>
                    <div class="area_carrera_competencias_profesionales_info">
                        <ul>
                            <li>-Ingeniero de calidad y medio ambiente</li> 
                            <li>-Consultor e inspector ambiental</li> 
                            <li>-Gerente de seguridad, salud y ambiente</li> 
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
