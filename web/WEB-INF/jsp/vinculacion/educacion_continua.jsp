<%-- 
    Document   : educacion_continua
    Created on : 7/08/2013, 12:33:06 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Educación continua</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Educación continua">
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
            <div class="area_titulo_educacion_continua"><h3><a href="javascript:void(0);" onclick="cargarPdf(0);">Educación Continua</a></h3></div>
            <div class="area_btn_educacion_continua">
                <!--<a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() != -1) {
                            window.open('viewFile.action?i=1&d=cecap', '_blank');
                        } else {
                            cargarPdf(1);
                        }"><img src="img/vinculacion/educacion_continua/btn_catalogo_servicios2.png" width="151" height="28" alt="Catálogo de servicios" id="catalogo_servicios"/></a>&nbsp;&nbsp;&nbsp;&nbsp;-->
                <!--<a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() != -1) {
                            window.open('viewFile.action?i=5&d=educacion_continua', '_blank');
                        } else {
                            cargarPdf(2);
                        }"><img src="img/vinculacion/educacion_continua/btnCalendarioCursos.png" width="151" height="28" alt="Calendario de cursos" id="calendario_cursos"/></a>-->
                <!--<a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() != -1) {
                            window.open('viewFile.action?i=8&d=educacion_continua', '_blank');
                        } else {
                            cargarPdf(3);
                        }"><img src="img/vinculacion/educacion_continua/btn_servicios.png" width="151" height="28" alt="Catálogo de servicios" id="catalogo_servicios"/></a>-->
            </div>
            <div class="area_info_educacion_continua" id="area_info_educacion_continua">
                <div class="area_info_educacion_continua_1">
                    <div class="area_info_educacion_continua_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_educacion_continua_1_info">
                        <p><img src="img/vinculacion/educacion_continua/Eduacion-Continua_16.png" width="878" height="417" alt="Educación continua"/>
                        </p><br/>
                        <p>Somos un departamento dedicado a la impartición de talleres cursos y diplomados, en modalidad presencial dirigidos a los egresados y alumnos de la UTTAB, con la finalidad de contribuir en las actividades propias de su formación profesional y/o desempeño laboral.</p>
                        <br/>
                        <p>La educación continua es uno de los procesos certificados de esta institución del Sistema de Gestión de la Calidad ISO 9001:2008.</p>
                        <br/>
                        <a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() != -1) {
                                    window.open('viewFile.action?i=8&d=educacion_continua', '_blank');
                                } else {
                                    cargarPdf(3);
                                }" style=" text-decoration: none; color:#5b5c5c;"><h2>Relación de Servicios  programados</h2></a>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="area_info_educacion_continua_2">
                    <div class="area_info_educacion_continua_2_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Ana María Gómez Hernández</p>
                        <!--<p>Jefa del departamento de Seguimiento a Egresados y Educación Continua</p>-->
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
                switch (valor)
                {
                    case 1:
                        $("#mypdf").prop("src", 'viewFile.action?i=1&d=cecap');
                        $("#area_info_educacion_continua").css("display", "none");
                        $("#contenedor2").css("display", "block");
                        $("#catalogo_servicios").css("opacity", "0.8");
                        $("#catalogo_servicios").css("filter", "alpha(opacity=80)");
                        break;
                    case 2:
                        $("#mypdf").prop("src", 'viewFile.action?i=5&d=educacion_continua');
                        $("#area_info_educacion_continua").css("display", "none");
                        $("#contenedor2").css("display", "block");
                        $("#catalogo_servicios").css("opacity", "0.8");
                        $("#catalogo_servicios").css("filter", "alpha(opacity=80)");
                        break;
                    case 3:
                        $("#mypdf").prop("src", 'viewFile.action?i=8&d=educacion_continua');
                        $("#area_info_educacion_continua").css("display", "none");
                        $("#contenedor2").css("display", "block");
                        $("#catalogo_servicios").css("opacity", "0.8");
                        $("#catalogo_servicios").css("filter", "alpha(opacity=80)");
                        break;
                    default:
                        $("#mypdf").prop("src", 'about:blank');
                        $("#area_info_educacion_continua").css("display", "block");
                        $("#contenedor2").css("display", "none");
                        $("#catalogo_servicios").css("opacity", "1");
                        $("#catalogo_servicios").css("filter", "alpha(opacity=100)");
                        break;
                }

            }
        </script>
    </body>
</html>