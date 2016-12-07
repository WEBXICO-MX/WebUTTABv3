<%-- 
    Document   : index
    Created on : 25/06/2013, 11:57:12 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; TSU en Química área Industrial</title>
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
            <div class="area_carrera_img"><img src="img/divisionesUsoComun/quimica/Carreras/tsuQuimAreaInd/QuimInd.png" width="457" height="327" alt="area_carrera_img"/></div>
            <div class="area_carrera_info">
                <div class="area_carrera_info_titulo"><h3>TSU en Química área Industrial</h3></div>
                <div class="area_carrera_info_mision_vision">
                    <p>&nbsp;</p>
                    <p class="negritas">Misión</p>
                    <p>&nbsp;</p>
                    <p>Buscar permanentemente la calidad en la formación de TSU en Química área
                        Industrial, con habilidades y sentido innovador para operar y mantener en óptimas
                        condiciones sistemas de producción en la industria química, empleando tecnología
                        de punta que respondan a las demandas del sector productivo y de la sociedad.</p>
                    <p>&nbsp;</p>
                    <p class="negritas">Visión</p>
                    <p>&nbsp;</p>
                    <p>Ser un programa educativo líder en la formación de TSU en Química área Industrial,
                        para impulsar el sector productivo obteniendo de este y la sociedad, el
                        reconocimiento que nos permita promover de manera creativa, innovadora y con
                        calidad el desarrollo sustentable del estado de la región y el país.</p>
                    <p>&nbsp;</p>
                    <p class="plan_estudio"><a href="viewFile.action?i=2&d=quimica" target="_blank"><img src="img/carrerasUsoComun/btn_plan_estudio.png" width="122" height="28" alt="plan de estudios"/></a>
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
                            <li>-Interés por la química, física y matemáticas</li> 
                            <li>-Interés por las actividades industriales</li> 
                            <li>-Preocupación por el medio ambiente</li> 
                            <li>-Preocupación por el desarrollo sustentable</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_perfiles_egreso">
                    <div class="area_carrera_perfiles_egreso_titulo"><h3>De egreso</h3></div>
                    <div class="area_carrera_perfiles_egreso_info">
                        <ul>
                            <li>-Preparar la materia prima a través de procesos químicos de acuerdo a los procedimientos</li> 
                            <li>-Controlar las condiciones de reactores y equipos de separación</li> 
                            <li>-Monitoreo y control de procesos en laboratorios</li> 
                            <li>-Verificar el producto terminado mediante pruebas de calidad</li>
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
                            <li>-Coordinar la transformación de materias primas a través de la aplicación
                                de los procesos fisicoquímicos y termodinámicos para la obtención de
                                productos químicos, petroquímicos, alimentos y farmacéuticos</li> 
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_competencias_profesionales">
                    <div class="area_carrera_competencias_profesionales_titulo"><h3>Ocupaciones profesionales</h3></div>
                    <div class="area_carrera_competencias_profesionales_info">
                        <ul>
                            <li>-Prestador de servicios de control</li> 
                            <li>-Evaluador y seleccionador de insumos y equipos</li>  
                            <li>-Proveedor de materiales y equipo de sistemas de protección anticorrosiva</li>  
                            <li>-Administrador de recursos de mantenimiento</li>  
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
