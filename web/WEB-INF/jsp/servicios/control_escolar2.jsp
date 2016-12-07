<%-- 
    Document   : alumnos
    Created on : 11/07/2013, 12:43:50 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Control Escolar</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Control Escolar">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="css/servicios.min.css">
        <link rel="icon" href="img/favicon.ico"/>
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_control_escolar2"><h3>Control Escolar</h3></div>        
            <div class="area_info_control_escolar2">
                <!-- Inicio Texto -->
                <p><img src="img/servicios/escolares/banner_control_escolar_01.png" width="946" height="286" alt="Control Escolar"></p><br/> 
                <p>Se brinda atención a los aspirantes, alumnos, en su inscripción y reinscripción, así como a los egresados y padres de familia que requieren algún trámite relacionado con su situación académica o financiera a través de la Dirección de Servicios Escolares.</p><br/>
                <p>En las ventanillas de la Dirección se pueden solicitar los siguientes trámites y servicios (<a href="ServiciosVentanilla" target="_self" style="font-size:16px;">ver servicios en ventanilla</a>): </p><br/>
                <p>Reinscripciones en línea</p><br/>
                <p>Pago de colegiatura que deben realizar los alumnos al término del cuatrimestre, para ser considerado dentro de la matrícula escolar en el cuatrimestre siguiente.</p><br/>
                <p class="negritas"> <a href="CalendarioEscolar" target="_self" style="font-size:16px;">Consulta las fechas y actividades académicas (calendario)</a></p><br/>
                <!-- Fin Texto -->
                <br/><br/>
                <div class="area_info_control_escolar2_1">
                    <div class="area_info_control_escolar2_1_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Alicia Brown Valenzuela</p>
                        <p>Jefa del departamento de Control Escolar</p>
                        <p>Número directo: +52 (993)3.58.22.08</p>
                        <p>Conmutador: +52(993)3.58.22.22 Ext. 9049</p>
                        <p>Correo institucional: <a href="#" id="emailLink">servicios.escolares@uttab.edu.mx</a></p>
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
                    var email = 'servicios.escolares@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });

            });
        </script>
    </body>
</html>