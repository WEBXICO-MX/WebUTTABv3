<%-- 
    Document   : profesores
    Created on : 11/07/2013, 10:13:49 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Profesores</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro certificador de exámenes de francés DELF-DALF">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/servicios.min.css">
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_profesores"><h3>Profesores</h3></div>
            <div class="area_btn_profesores">
                <img src="img/servicios/profesores/btn_prodep.png" alt="PRODEP"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="http://saiiut.uttab.edu.mx/index.jsp" target="_blank"><img src="img/servicios/profesores/btn_saiiut.png" alt="SAIIUT"/></a>
            </div>
            <div class="area_info_profesores">
                <div class="area_info_profesores_1">
                    <div class="area_info_profesores_1_titulo"><h4>Departamento de investigaci&oacute;n y desarrollo </h4></div>
                    <div class="area_info_profesores_1_info">
                        <p>El Departamento de Investigación y Desarrollo de la Universidad Tecnológica de Tabasco tiene como objetivo realizar acciones que permitan contar con profesores dedicados a la solución de problemas mediante la investigación y el desarrollo de las Líneas Innovadoras de Investigación Aplicada y Desarrollo Tecnológico (LIIADT's) de los Cuerpos Académicos.</p><br/>
                        <p>Links de las Instituciones vinculadas a las actividades que realiza el Departamento de Investigación y Desarrollo:</p><br/>
                        <p>Investigación y Desarrollo</p><br/> 
                        <ul>
                            <li>Programa para el Desarrollo Profesional Docente</li>
                            <li class="miLi"><a href="http://dsa.sep.gob.mx/" target="_blank">http://dsa.sep.gob.mx/</a></li>
                            <li>Consejo Nacional de Ciencia y Tecnología</li>
                            <li class="miLi"><a href="http://www.conacyt.gob.mx/Paginas/InicioNueva.aspx" target="_blank">http://www.conacyt.gob.mx/Paginas/InicioNueva.aspx</a></li>
                            <li>Consejo de Ciencia y Tecnología del Estado de Tabasco</li>
                            <li class="miLi"><a href="http://www.ccytet.gob.mx" target="_blank">www.ccytet.gob.mx</a></li>
                            <li>Instituto Nacional del Derecho de Autor</li>
                            <li class="miLi"><a href="http://www.indautor.gob.mx" target="_blank">http://www.indautor.gob.mx</a></li>
                            <li>Instituto Mexicano de la Propiedad Industrial</li>
                            <li class="miLi"><a href="http://www.impi.gob.mx/" target="_blank">http://www.impi.gob.mx/</a></li>
                            <li>Sistema de Información de Fundaciones Produce (SIFUPRO)</li>
                            <li class="miLi"><a href="http://siproduce.sifupro.org.mx/" target="_blank">http://siproduce.sifupro.org.mx/</a></li>
                            <li>Coordinadora Nacional de las Fundaciones Produce, A.C. (COFUPRO)</li>
                            <li class="miLi"><a href="http://www.cofupro.org.mx/cofupro/" target="_blank">http://www.cofupro.org.mx/cofupro/</a></li> 
                        </ul>
                    </div>
                </div>
                <div class="area_info_profesores_2">
                    <div class="area_info_profesores_2_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Conmutador: +52 (993) 3.58.22.22 Ext. 1009</p>
                        <p>Correo institucional: <a href="#" id="emailLink">investigacion@uttab.edu.mx</a></p>
                    </div> 
                </div>
            </div>

        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
        <script>
            $(function () {
                $('#emailLink').on('click', function (event) {
                    event.preventDefault();
                    var email = 'investigacion@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });

            });
        </script>
    </body>
</html>
