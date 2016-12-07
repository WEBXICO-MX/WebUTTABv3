<%-- 
    Document   : centro_atencion_pemex
    Created on : 12/08/2013, 03:10:23 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Atención al Sector Energético</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Calibración y Pruebas">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/unidades_negocio.min.css">
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=unidades_negocio" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_centro_atencion_pemex"><h3>Centro de Atención a PEMEX</h3></div>
            <div class="area_info_centro_atencion_pemex">
                <div class="area_info_centro_atencion_pemex_1">
                    <div class="area_info_centro_atencion_pemex_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_centro_atencion_pemex_1_info">
                        <p><img src="img/unidades_negocio/centro_atencion_pemex/Centro-de-atencion-a-PEMEX_13.png" width="875" height="298" alt="Centro de Atención a PEMEX"/></p><br/>
                        <p>El Centro de Atención a PEMEX tiene como actividad sustantiva mantener una estrecha vinculación con Petróleos Mexicanos, a través de sus diversas subsidiarias, administrando proyectos de capacitación sobre la industria petrolera, capacitación sobre perforación y mantenimiento a pozos; administrando los pozos-escuelas en "El Castaño" Dos Bocas en Tabasco y "Burgos" en Reynosa, Tamaulipas.</p><br/>
                        <p>Por otra parte, proporcionar servicios de ingeniería de proyectos y asistencia técnica en la construcción, operación, mantenimiento y administración; así como todo lo relacionado con tecnología de la información.</p><br/>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="area_info_centro_atencion_pemex_2">
                    <div class="area_info_centro_atencion_pemex_2_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Guillermo Oliver González Rodríguez</p>
                        <p>Coordinador del Centro de Atención a PEMEX</p>
                        <p>Número directo: +52 (993) 3.58.22.10</p>
                        <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2017 | 2018</p>
                        <p>Correo institucional: <a href="#" id="emailLink">case@uttab.edu.mx</a></p>                    
                    </div>
                </div>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=unidades_negocio" flush="true" />
        <script>
            $(function () {
                $('#emailLink').on('click', function (event) {
                    event.preventDefault();
                    var email = 'case@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });

            });
        </script>
    </body>
</html>