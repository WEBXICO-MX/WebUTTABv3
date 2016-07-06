<%-- 
    Document   : index
    Created on : 25/06/2013, 11:57:12 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Ingeniería en Tecnologías de la Información</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Ingeniería en Tecnologías de la Información">
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
            <div class="area_carrera_img"><img src="img/divisionesUsoComun/tics/Carreras/ingTic/ingTic.png" width="457" height="327" alt="area_carrera_img"/></div>
            <div class="area_carrera_info">
                <div class="area_carrera_info_titulo"><h3>Ingenier&iacute;a en Tecnolog&iacute;as de la Informaci&oacute;n</h3></div>
                <div class="area_carrera_info_mision_vision">
                    <p>&nbsp;</p>
                    <p class="negritas">Misión</p>
                    <p>&nbsp;</p>
                    <p>Formar especialistas de alto nivel que sean capaces de realizar innovación, investigación y desarrollo tecnológico, para el análisis y la solución de problemas relacionados con las tecnologías de la información, y que contribuyan a un desarrollo sustentable del país considerando la demanda existente en las empresas.</p>
                    <p>&nbsp;</p>            
                    <p class="negritas">Visión</p>
                    <p>&nbsp;</p>
                    <p>Cumplir satisfactoriamente con los estándares de clase mundial en el área de Tecnología de Información, ofreciendo siempre la mejor alternativa profesional y capaces de integrarse al desarrollo tecnológico con altos niveles de calidad al servicio de la comunidad.</p>
                    <p>&nbsp;</p>
                    <p class="plan_estudio"><a href="viewFile.action?i=3&d=tics" target="_blank"><img src="img/carrerasUsoComun/btn_plan_estudio.png" width="122" height="28" alt="plan de estudios"/></a>
                    </p>
                </div>
            </div>
            <div class="area_carrera_perfiles">
                <div class="area_carrera_perfiles_titulo"><h3>Perfiles</h3></div>

                <div class="area_carrera_perfiles_ingreso">
                    <div class="area_carrera_perfiles_ingreso_titulo"><h3>De ingreso</h3></div>
                    <div class="area_carrera_perfiles_ingreso_info">
                        <ul>
                            <li>-Egresado de TSU  en TIC área Redes y Telecomunicaciones o Sistemas Informáticos o Telemática</li>
                            <li>-Conocimientos en matemáticas y lógica</li>
                            <li>-Capacidad de análisis</li>
                            <li>-Capacidad en la toma de decisiones</li>
                            <li>-Capacidad en la resolución de problemas</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_perfiles_egreso">
                    <div class="area_carrera_perfiles_egreso_titulo"><h3>De egreso</h3></div>
                    <div class="area_carrera_perfiles_egreso_info">
                        <ul>
                            <li>-El ingeniero en tecnologías de la información será capaz de dirigir proyectos de tecnologías de información, utilizando las metodologías apropiadas, así como evaluar sistemas de tecnologías de información para establecer acciones de mejora e innovación en las organizaciones</li>
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
                            <li>-Formular y planear proyectos de tecnologías de información, mediante procesos estándares y modelos de calidad para contribuir con el logro de los objetivos estratégicos de las organizaciones</li>
                            <li>-Dirigir el proceso de implementación de proyectos de tecnologías de información mediante su correcta ejecución para alcanzar las metas y objetivos empleando habilidades gerenciales</li>
                        </ul>

                    </div>
                </div>

                <div class="area_carrera_competencias_profesionales">
                    <div class="area_carrera_competencias_profesionales_titulo"><h3>Ocupaciones profesionales</h3></div>
                    <div class="area_carrera_competencias_profesionales_info">
                        <ul>
                            <li>-Diseñador de sistemas de información</li>
                            <li>-Administrador de proyectos y servicios de TI</li>
                            <li>-Consultor de servicios de TI</li>
                            <li>-Director/gerente de tecnologías de información</li>
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
