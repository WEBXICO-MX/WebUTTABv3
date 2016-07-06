<%-- 
    Document   : index
    Created on : 25/06/2013, 11:57:12 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; TSU en Tecnologías de la Información y Comunicación área Sistemas Informáticos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,TSU en Tecnologías de la Información y Comunicación área Sistemas Informáticos">
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
            <div class="area_carrera_img"><img src="img/divisionesUsoComun/tics/Carreras/tsuTicSistemas/TicSistemas.png" width="457" height="327" alt="area_carrera_img"/></div>
            <div class="area_carrera_info">
                <div class="area_carrera_info_titulo" style="height: 46px;padding-top: 0px;"><h3>TSU en Tecnologías de la Información y Comunicación área Sistemas Informáticos</h3></div>
                <div class="area_carrera_info_mision_vision">
                    <p>&nbsp;</p>
                    <p class="negritas">Misión</p>
                    <p>&nbsp;</p>
                    <p>Formar profesionistas en el desarrollo de distemas de información capaces de crear,
                        innovar e incorporar conocimientos, habilidades y competencias en el campo laboral,
                        con compromiso y ética para que satisfagan las necesidades de la región.</p>
                    <p>&nbsp;</p>
                    <p class="negritas">Visión</p>
                    <p>&nbsp;</p>
                    <p>Ser una división líder con calidad educativa en la formación integral de Técnicos
                        Superiores Universitarios en Tecnologías de la Información y Comunicación área
                        Sistemas Informáticos que impulsen el desarrollo sustentable y el crecimiento de la
                        región, el sector productivo y la sociedad.</p>
                    <p>&nbsp;</p>
                    <p class="plan_estudio"><a href="viewFile.action?i=2&d=tics" target="_blank"><img src="img/carrerasUsoComun/btn_plan_estudio.png" width="122" height="28" alt="plan de estudios"/></a>
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
                            <li>-Conocimiento en matemáticas</li>
                            <li>-Conocimiento en lógica</li>
                            <li>-Capacidad de análisis</li>
                            <li>-Capacidad en la toma de decisiones</li>
                            <li>-Capacidad en resolución de problemas</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_perfiles_egreso">
                    <div class="area_carrera_perfiles_egreso_titulo"><h3>De egreso</h3></div>
                    <div class="area_carrera_perfiles_egreso_info">
                        <ul>
                            <li>-Implementar sistemas de información de calidad a través de técnicas
                                avanzadas de desarrollo de software</li>
                            <li>-Desarrollar, implementar y administrar sistemas de base de datos</li>
                            <li>-Realizar soporte técnico a equipo de cómputo, sistemas operativos y redes
                                locales de acuerdo a las necesidades de la organización</li>
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
                            <li>-Implementar aplicaciones de software mediante técnicas de
                                programación considerando los requerimientos de la organización</li>
                            <li>-Implementar y realizar soporte técnico de equipo de cómputo, sistemas
                                operativos y redes locales de acuerdo a las necesidades técnicas de la
                                organización para garantizar el óptimo funcionamiento de sus recursos
                                infomáticos</li>
                            <li>-Implementar y administrar sistemas de información, manejadores de bases
                                de datos de calidad, a través de técnicas avanzadas de desarrollo de
                                software</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_competencias_profesionales">
                    <div class="area_carrera_competencias_profesionales_titulo"><h3>Ocupaciones profesionales</h3></div>
                    <div class="area_carrera_competencias_profesionales_info">
                        <ul>
                            <li>-Analista de sistemas</li>
                            <li>-Programador de sistemas y diseñador web</li>
                            <li>-Administrador de bases de datos</li>
                            <li>-Gestor de TI</li>
                            <li>-Técnico en soporte de sistemas</li>
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
