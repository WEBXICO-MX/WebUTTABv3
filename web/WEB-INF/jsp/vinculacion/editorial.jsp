<%-- 
    Document   : editorial
    Created on : 12/08/2013, 10:54:29 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Editorial</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Editorial">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/vinculacion.min.css">
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=vinculacion" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_editorial"><h3>Editorial</h3></div>

            <div class="area_btn_editorial">
                <a href="ExtensionUniversitaria" target="_self"><img src="img/vinculacion/extension_universitaria/btn_extension_universitaria2.png" width="151" height="28" alt="Extensión Universitaria"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="ProduccionAudiovisual" target="_self"><img src="img/vinculacion/extension_universitaria/btn_produccion_audiovisual2.png" width="151" height="28" alt="Producción audio visual"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="PromocionUniversitaria" target="_self"><img src="img/vinculacion/extension_universitaria/btn_promocion_universitaria2.png" width="151" height="28" alt="Promocion universitaria"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Editorial" target="_self"><img src="img/vinculacion/extension_universitaria/btn_editorial.png" width="151" height="28" alt="Editorial" style="opacity:0.8;filter:alpha(opacity=80);"/></a>
            </div>
            <div class="area_info_editorial">
                <div class="area_info_editorial_1">
                    <div class="area_info_editorial_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_editorial_1_info">
                        <p><img src="img/vinculacion/editorial/Editorial_24.png" width="875" height="476" alt="Editorial"/></p><br/>
                        <p>El departamento de Editorial es responsable de asesorar, diseñar, propagar, cuidar y consolidar la imagen institucional, así como divulgar los conocimientos científicos, tecnológicos y humanísticos del quehacer universitario, a través de la Gaceta, la Pagina WEB y las redes sociales. </p><br/>
                        <p>De la misma manera, el departamento Editorial se encarga del diseño de la imagen de los eventos y de los nuevos productos que surgen a través del centro de incubación y desarrollo de negocios.</p>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>

                <div class="area_info_editorial_2">
                    <div class="area_info_editorial_2_titulo"><h4>Catálogo de servicios</h4></div>
                    <div class="area_info_editorial_2_info">
                        <ul>
                            <li>Diseño de carpetas promocionales</li>
                            <li>Diseño de carteles</li>
                            <li>Diseño de imagen gráfica a eventos especiales</li>
                            <li>Revistas</li>
                            <li>Diseño de lonas</li>
                            <li>Diseño de imagen corporativa</li>
                            <li>Banners para página web</li>
                            <li>Diseño editorial de libros, folletos y catálogos</li>
                            <li>Diseño de imagen para productos emprendedores seleccionados para concursos a nivel nacional</li>
                            <li>Convocatorias</li>
                        </ul>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>

                <div class="area_info_editorial_3">
                    <div class="area_info_extension_universitaria_2_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Friné Lara Beltrán</p>
                        <p>Jefa del departamento de Editorial</p>
                        <p>Conmutador: +52 (993) 3.58.22.22 Ext. 8006</p>
                        <p>Correo institucional: <a href="#" id="emailLink">editorial@uttab.edu.mx</a></p>
                    </div>
                </div>
            </div>

        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=vinculacion" flush="true" />
        <script>
            $(function () {
                $('#emailLink').on('click', function (event) {
                    event.preventDefault();
                    var email = 'editorial@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });
            });
        </script>
    </body>
</html>