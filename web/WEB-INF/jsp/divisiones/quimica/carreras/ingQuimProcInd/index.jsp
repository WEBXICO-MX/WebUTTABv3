<%-- 
    Document   : index
    Created on : 25/06/2013, 11:57:12 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Ingeniería en Química de Procesos Industriales</title>
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
            <div class="area_carrera_img"><img src="img/divisionesUsoComun/quimica/Carreras/ingQuimProcInd/QuimProcInd.png" width="457" height="327" alt="area_carrera_img"/></div>
            <div class="area_carrera_info">
                <div class="area_carrera_info_titulo"><h3>Ingeniería en Química de Procesos Industriales</h3></div>
                <div class="area_carrera_info_mision_vision">
                    <p>&nbsp;</p>
                    <p class="negritas">Misión</p>
                    <p>&nbsp;</p>
                    <p>Buscar permanentemente la calidad en la formación del Ingeniero Químico de 
                        Procesos Industriales con las capacidades y habilidades para diseñar y supervisar 
                        procesos químicos empleando los principios de las operaciones unitarias y de las 
                        reacciones químicas de una manera competitiva y sustentable para obtener productos de calidad. </p>
                    <p>&nbsp;</p>
                    <p class="negritas">Visión</p>
                    <p>&nbsp;</p>
                    <p>Ser un programa educativo reconocido por su calidad en la formación de 
                        profesionistas y la prestación de servicios a la industria química, estrechamente
                        vinculado con el sector productivo e instituciones nacionales e internacionales de
                        educación, cultura y desarrollo tecnológico que promueva constantemente el
                        desarrollo sustentable. </p>
                    <p class="plan_estudio"><a href="viewFile.action?i=5&d=quimica" target="_blank"><img src="img/carrerasUsoComun/btn_plan_estudio.png" width="122" height="28" alt="plan de estudios"/></a>
                    </p>
                </div>
            </div>
            <div class="area_carrera_perfiles">
                <div class="area_carrera_perfiles_titulo"><h3>Perfiles</h3></div>

                <div class="area_carrera_perfiles_ingreso">
                    <div class="area_carrera_perfiles_ingreso_titulo"><h3>De ingreso</h3></div>
                    <div class="area_carrera_perfiles_ingreso_info">
                        <ul>
                            <li>-Egresado de TSU en Prevención de Corrosión o TSU en Química área Industrial</li> 
                            <li>-Conocimientos de química, física, álgebra y cálculo</li> 
                            <li>-Habilidad de expresión oral y escrita en español</li> 
                            <li>-Conocimientos básicos del idioma inglés</li> 
                            <li>-Habilidad de análisis y síntesis de información </li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_perfiles_egreso">
                    <div class="area_carrera_perfiles_egreso_titulo"><h3>De egreso</h3></div>
                    <div class="area_carrera_perfiles_egreso_info">
                        <ul>
                            <li>-Controlar procesos químicos industriales</li> 
                            <li>-Supervisar procesos de refinación de hidrocarburos</li> 
                            <li>-Diseñar y controlar procesos en plantas industriales </li>
                            <li>-Optimizar procesos industriales</li> 
                            <li>-Supervisar la seguridad industrial</li> 
                            <li>-Supervisor de calidad</li> 
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
                            <li>-Diseñar y supervisar procesos qu&iacute;micos empleando los principios de las operaciones unitarias y de las reacciones químicas de una manera competitiva y sustentable para obtener productos de calidad </li>
                            <li>-Administrar los recursos aplicables a los procesos a través de la planeación, organización, ejecución, evaluación y retroalimentación para asegurar la competitividad de la empresa</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_competencias_profesionales">
                    <div class="area_carrera_competencias_profesionales_titulo"><h3>Ocupaciones profesionales</h3></div>
                    <div class="area_carrera_competencias_profesionales_info">
                        <ul>
                            <li>-Ingeniero de producción en plantas de procesos</li> 
                            <li>-Ingeniero de control de calidad</li> 
                            <li>-Ingeniero de seguridad industrial</li> 
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
