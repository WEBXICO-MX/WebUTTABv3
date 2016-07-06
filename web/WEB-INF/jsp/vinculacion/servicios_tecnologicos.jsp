<%-- 
    Document   : servicios_tecnologicos
    Created on : 7/08/2013, 12:31:29 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Servicios especializados</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Servicios tecnológicos">
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
            <div class="area_titulo_servicios_tecnologicos"><h3><a href="javascript:void(0);" onclick="cargarPdf(0);">Servicios Especializados</a></h3></div>
            <div class="area_btn_servicios_tecnologicos">
                <!--<a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() != -1) {
                            window.open('viewFile.action?i=1&d=servicios_tecnologicos', '_blank');
                        } else {
                            cargarPdf(1);
                        }"><img src="img/vinculacion/servicios_tecnologicos/btn_catalogo_servicios2.png" width="151" height="28" alt="Cátalogo de servicios" id="catalogo_servicios"/></a>&nbsp;&nbsp;&nbsp;&nbsp;-->
                <a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() != -1) {
                            window.open('viewFile.action?i=1&d=cecap', '_blank');
                        } else {
                            cargarPdf(1);
                        }"><img src="img/vinculacion/educacion_continua/btn_catalogo_servicios2.png" width="151" height="28" alt="Catálogo de servicios" id="catalogo_servicios"/></a>
            </div>
            <div class="area_info_servicios_tecnologicos" id="area_info_servicios_tecnologicos">
                <div class="area_info_servicios_tecnologicos_1">
                    <div class="area_info_servicios_tecnologicos_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_servicios_tecnologicos_1_info">
                        <p><img src="img/vinculacion/servicios_tecnologicos/Servicios-Tecnologicos_15.png" width="878" height="345" alt="Servicios tecnológicos"/></p><br/>
                        <p>En este departamento gestionamos los servicios que dan solución a los problemas y oportunidades que se presentan en las organizaciones de los sectores productivos privado y social, así  como de las dependencias gubernamentales.</p><br/>
                        <p>Los servicios tecnológicos es uno de los procesos certificados de esta institución del Sistema de Gestión de la Calidad ISO 9001:2008.</p>
                    </div>
                </div>

                <div class="area_info_servicios_tecnologicos_2">
                    <div class="area_info_servicios_tecnologicos_2_titulo"><h4>Servicios especializados</h4></div>
                    <div class="area_info_servicios_tecnologicos_2_info">
                        <ul style=" list-style: none;">
                            <li>-Pruebas de laboratorio </li>
                            <li>-Maquila</li>
                            <li>-Producción audiovisual</li> 
                            <li>-Consultorías</li>
                            <li>-Estudios y proyectos</li>
                        </ul>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>

                <div class="area_info_servicios_tecnologicos_3">
                    <div class="area_info_extension_universitaria_2_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Diana Denissen Lugo Saldivar</p>
                        <p>Jefa del departamento de Servicios Tecnológicos</p>
                        <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2013</p>
                        <p>Correo institucional: <a href="#" id="emailLink">sertec@uttab.edu.mx</a></p>
                    </div>
                </div>
            </div>
            <div id="contenedor2" style="display: none;">
                <iframe src="about:blank" style="width:941px; height:800px;" frameborder="0" id="mypdf"></iframe>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=vinculacion" flush="true" />
        <script src="${pageContext.request.contextPath}/js/comun.min.js"></script>
        <script>
            $(function () {
                $('#emailLink').on('click', function (event) {
                    event.preventDefault();
                    var email = 'sertec@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });
            });
            
            function cargarPdf(valor)
            {
                var url = "";
                switch (valor)
                {
                    case 1:
                        url = "viewFile.action?i=1&d=servicios_tecnologicos";
                        $("#mypdf").prop("src", url);
                        $("#area_info_servicios_tecnologicos").css("display", "none");
                        $("#contenedor2").css("display", "block");
                        $("#catalogo_servicios").css("opacity", "0.8");
                        $("#catalogo_servicios").css("filter", "alpha(opacity=80)");
                        break;
                    default:
                        $("#mypdf").prop("src", 'about:blank');
                        $("#area_info_servicios_tecnologicos").css("display", "block");
                        $("#contenedor2").css("display", "none");
                        $("#catalogo_servicios").css("opacity", "1");
                        $("#catalogo_servicios").css("filter", "alpha(opacity=100)");
                        break;
                }

            }
        </script>
    </body>
</html>