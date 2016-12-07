<%-- 
    Document   : practicas_empresariales
    Created on : 9/08/2013, 02:33:35 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Prácticas Empresariales</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Prácticas empresariales y estadías">
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
            <div class="area_titulo_practicas_empresariales"><h3><a href="javascript:void(0);" onclick="cargarPdf(0);">Prácticas Empresariales</a></h3></div>
            <div class="area_btn_practicas_empresariales">
                <a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() != -1) {
                            window.open('viewFile.action?i=4&d=practicas', '_blank');
                        } else {
                            cargarPdf(1);
                        }"><img src="img/vinculacion/practicas_empresariales/btn_calendario_practicas2.png" width="151" height="28" alt="Calendario de prácticas" id="calendario_practicas_empresariales"/></a>
            </div>
            <div class="area_info_practicas_empresariales" id="area_info_practicas_empresariales">
                <div class="area_info_practicas_empresariales_1">
                    <div class="area_info_practicas_empresariales_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_practicas_empresariales_1_info">
                        <p>Promovemos el vínculo entre la universidad y los sectores público, privado y social a través de los procesos de visitas y estadías para contribuir a la formación profesional del alumno, reforzando los conocimientos adquiridos en su desarrollo académico.</p>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>

                <div class="area_info_practicas_empresariales_2">
                    <div class="area_info_practicas_empresariales_2_titulo"><h4>Visitas</h4></div>
                    <div class="area_info_practicas_empresariales_2_info">
                        <p>Son recorridos guiados en las empresas, organismos o instituciones para que los alumnos conozcan las actividades y/o áreas que intervienen en sus procesos.</p>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>

                <div class="area_info_practicas_empresariales_3">
                    <div class="area_info_practicas_empresariales_3_titulo"><h4>Estadías</h4></div>
                    <div class="area_info_practicas_empresariales_3_info">
                        <p>Es la estancia que realizan los alumnos durante el último cuatrimestre de su carrera en el sector empresarial, organismo o intitución acorde a su perfil académico. En este periodo deben formular o realizar un proyecto que solucione un problema o aproveche una oportunidad para la empresa, organismo o institución.	</p>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>

                <div class="area_info_practicas_empresariales_4">
                    <div class="area_info_practicas_empresariales_4_titulo"><h4>Solicitud para empresarios</h4></div>
                    <div class="area_info_practicas_empresariales_4_info">
                        <p>Estimado empresario si está  interesado en brindarles la oportunidad a los alumnos de la UTTAB para que  realicen su estadía en la empresa que usted representa, favor de requisitar los  siguientes formatos:</p>
                        <br/>
                        <ul>
                            <li><a href="viewFile.action?i=5&d=practicas" target="_blank">Formato de vinculación y actualización de empresas</a></li>
                            <li><a href="viewFile.action?i=6&d=practicas" target="_blank">Solicitud de alumnos para estadías</a></li>
                        </ul>
                        <br/>
                        <p><a href="viewFile.action?i=4&d=practicas" target="_blank">Periodos de solicitud de alumnos para estadía</a></p>
                        <br/>
                        <p>Opciones de envío:</p>
                        <br/>
                        <ul>
                            <li>Enviar el formato requisitado al  correo: <a href="mailto:eempresarial@uttab.edu.mx"><strong>eempresarial@uttab.edu.mx</strong></a></li>
                            <li>Imprimir el formato y  presentarlo firmado en la oficina de la Coordinación de Enlace ubicada en el  edificio de vinculación</li>
                            <li>Una vez recibido el formato  nos contactaremos con usted a la brevedad, para dar seguimiento a la solicitud </li>
                        </ul>
                        <p><br/>
                            <br/>
                            <br/>
                        </p>
                    </div>
                </div>
                <div class="corte"></div>
                <div class="area_info_practicas_empresariales_5">
                    <div class="area_info_practicas_empresariales_5_titulo"><h4>Solicitud para alumnos</h4></div>
                    <div class="area_info_practicas_empresariales_5_info">
                        <ul>
                            <li>Asistir a la reunión informativa agendada  en el calendario de actividades de estadía.</li>
                            <li><a href="viewFile.action?i=7&d=practicas" target="_blank">Calendario de actividades de estadías Enero – Abril 2015</a></li>
                            <li><a href="viewFile.action?i=8&d=practicas" target="_blank">Calendario de actividades de estadías Mayo – Agosto 2015</a></li>
                            <li><a href="viewFile.action?i=9&d=practicas" target="_blank">Calendario de actividades de estadías Septiembre – Diciembre 2015</a></li>
                        </ul>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="corte"></div>

                <div class="area_info_practicas_empresariales_6">
                    <div class="area_info_extension_universitaria_2_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Ana María Gómez Hernández</p>
                        <p>Jefa del departamento de Seguimiento a Egresados y Educación Continua</p>
                        <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2008  y 2009</p>
                        <p>Correo institucional: <a href="#" id="emailLink">egresadoscontinua@uttab.edu.mx</a></p>
                    </div>
                </div>
            </div>
            <div id="contenedor2" style="display: none;">
                <iframe src="about:blank" style="width:941px; height:800px;" frameborder="0" id="mypdf"></iframe>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=vinculacion" flush="true" />
        <script src="${pageContext.request.contextPath}/js/comun.min.js"></script>
        <script>
            $(function () {
                $('#emailLink').on('click', function (event) {
                    event.preventDefault();
                    var email = 'egresadoscontinua@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });
            });
            
            function cargarPdf(valor)
            {
                var url = "";
                switch (valor)
                {
                    case 1:
                        url = "viewFile.action?i=4&d=practicas";
                        $("#mypdf").prop("src", url);
                        $("#area_info_practicas_empresariales").css("display", "none");
                        $("#contenedor2").css("display", "block");
                        $("#calendario_practicas_empresariales").css("opacity", "0.8");
                        $("#calendario_practicas_empresariales").css("filter", "alpha(opacity=80)");
                        break;
                    default:
                        $("#mypdf").prop("src", 'about:blank');
                        $("#area_info_practicas_empresariales").css("display", "block");
                        $("#contenedor2").css("display", "none");
                        $("#calendario_practicas_empresariales").css("opacity", "1");
                        $("#calendario_practicas_empresariales").css("filter", "alpha(opacity=100)");
                        break;
                }

            }
        </script>
    </body>
</html>