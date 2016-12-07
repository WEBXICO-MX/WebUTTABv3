<%-- 
    Document   : extension_universitaria
    Created on : 12/08/2013, 10:53:50 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Extensión Universitaria</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Difusión Universitaria">
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
            <div class="area_titulo_extension_universitaria"><h3>Extensión Universitaria </h3></div>

            <div class="area_btn_extension_universitaria">
                <a href="ExtensionUniversitaria" target="_self"><img src="img/vinculacion/extension_universitaria/btn_extension_universitaria2.png" width="151" height="28" alt="Extensión Universitaria" style="opacity:0.8;filter:alpha(opacity=80);"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="ProduccionAudiovisual" target="_self"><img src="img/vinculacion/extension_universitaria/btn_produccion_audiovisual2.png" width="151" height="28" alt="Producción audio visual"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="PromocionUniversitaria" target="_self"><img src="img/vinculacion/extension_universitaria/btn_promocion_universitaria2.png" width="151" height="28" alt="Promocion universitaria"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Editorial" target="_self"><img src="img/vinculacion/extension_universitaria/btn_editorial.png" width="151" height="28" alt="Editorial"/></a>
            </div>
            <div class="area_info_extension_universitaria">
                <div class="area_info_extension_universitaria_1">
                    <div class="area_info_extension_universitaria_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_extension_universitaria_1_info">
                        <p>La dirección de Extensión Universitaria  planea, organiza, autoriza, dirige y evalúa los proyectos y programas de difusión, promoción, divulgación y extensión universitaria tendiente al fortalecimiento y proyección del quehacer institucional en los sectores educativos, social y de comunicación. Para ello, esta dirección cuenta con los departamentos de promoción universitaria, editorial y producción audiovisual.</p>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>

                <div class="area_info_extension_universitaria_2">
                    <div class="area_info_extension_universitaria_2_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Lenin González Baños</p>
                        <p>Director de Extensión Universitaria </p>
                        <p>Conmutador: +52 (993) 3.58.22.22 Ext. 8002</p>
                        <p>Correo institucional: <a href="#" id="emailLink">d.euniversitaria@uttab.edu.mx</a></p>
                    </div>
                </div>
            </div>

        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=vinculacion" flush="true" />
        <script>
            $(function () {
                $('#emailLink').on('click', function (event) {
                    event.preventDefault();
                    var email = 'd.euniversitaria@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });
            });
        </script>
    </body>
</html>