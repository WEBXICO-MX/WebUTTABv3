<%-- 
    Document   : bolsa_trabajo
    Created on : 7/08/2013, 07:59:44 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Coordinación de bolsa de trabajo</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Coordinación de bolsa de trabajo">
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
            <div class="area_titulo_bolsa_trabajo"><h3>Coordinación de Bolsa de Trabajo</h3></div>
            <div class="area_info_bolsa_trabajo">
                <div class="area_info_bolsa_trabajo_1">
                    <div class="area_info_bolsa_trabajo_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_bolsa_trabajo_1_info">
                        <p>La coordinación de bolsa de trabajo, se encarga de mantener contacto con el sector empresarial para apoyar en su proceso de reclutamiento y selección de personal y, al mismo tiempo, apoyar a nuestros egresados a colocarse en el sector productivo.</p></div>
                </div>
                <div class="area_info_bolsa_trabajo_2">
                    <div class="area_info_bolsa_trabajo_2_titulo"><h4>Proceso de solicitud para empresarios</h4></div>
                    <div class="area_info_bolsa_trabajo_2_info">
                        <ul>
                            <li style="margin-bottom: 10px;">Descargar y requisitar formato "<a href="viewFile.action?i=1&d=bolsa_trabajo" target="_blank">SOLICITUD PARA CONTRATACIÓN DE EGRESADOS</a>"</li>
                            <li>Opciones de envío:
                                <ul style="margin-left: 20px; list-style: none;">
                                    <li>-Enviar el formato requisitado al correo: <a href="mailto:btrabajo@uttab.edu.mx">btrabajo@uttab.edu.mx</a></li>
                                    <li>-Imprimir el formato y presentarlo firmado en las oficinas de la coordinación de bolsa de trabajo ubicada en el edificio de vinculación</li>
                                    <li>-Una vez recibido el formato nos contactaremos con usted a la brevedad, para acordar el servicio solicitado</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="area_info_bolsa_trabajo_3">
                    <div class="area_info_bolsa_trabajo_3_titulo"><h4>Proceso de solicitud para egresados</h4></div>
                    <div class="area_info_bolsa_trabajo_3_info">
                        <ul style="list-style-position: inside;line-height: 20px;margin-left: 0; padding-left: 1em; text-indent: -1em;">
                            <li>Accesar al Sistema Automatizado Integral de Información de las Universidades Tecnológicas (SAIIUT), en el link <a href="http://saiiut.uttab.edu.mx" target="_blank">http://saiiut.uttab.edu.mx</a>, en el módulo de vinculación bolsa de trabajo/proceso/bolsa de trabajo. No olvides guardar tu información</li>
                            <li>Una vez que identifiquemos una oportunidad de acuerdo a tu perfil te contactaremos de inmediato</li>

                        </ul>
                    </div>
                </div>
                <div class="area_info_bolsa_trabajo_4">
                    <div class="area_info_extension_universitaria_2_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Gabriela Castillo Falcón</p>
                        <p>Encargada de la coordinación de Bolsa de Trabajo</p>
                        <p>Número directo: +52 (993) 3.58.22.07</p>
                        <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2010</p>
                        <p>Correo institucional: <a href="#" id="emailLink">btrabajo@uttab.edu.mx</a></p>
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
                    var email = 'btrabajo@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });
            });
        </script>
    </body>
</html>