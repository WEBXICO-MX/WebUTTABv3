<%-- 
    Document   : cecap
    Created on : 12/08/2013, 03:10:04 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Calibración y Pruebas</title>
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
            <div class="area_titulo_cecap"><h3><a href="javascript:void(0);" onclick="cargarPdf(0);">Centro de Calibración y Pruebas</a></h3></div>
            <div class="area_btn_cecap">
                <a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() !== -1) {
                            window.open('viewFile.action?i=1&d=cecap', '_blank');
                        } else {
                            cargarPdf(1);
                        }"><img src="img/unidades_negocio/cecap/btn_catalogo_servicios2.png" width="151" height="28" alt="Catálogo de servicios" id="servicios"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() !== -1) {
                            window.open('viewFile.action?i=2&d=cecap', '_blank');
                        } else {
                            cargarPdf(2);
                        }"><img src="img/unidades_negocio/cecap/btn_catalogo_capacitacion2.png" width="151" height="28" alt="Catálogo de capacitación" id="capacitaciones"/></a>
            </div>
            <div class="area_info_cecap" id="area_info_cecap">
                <div class="area_info_cecap_1">
                    <div class="area_info_cecap_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_cecap_1_info">
                        <p><img src="img/unidades_negocio/cecap/CECAP_18.png" width="876" height="276" alt="CECAP"/></p><br/>
                        <p>El Centro de Calibración y Pruebas - UT (CECAP-UT) brinda servicios confiables de ensayos, calibraciones, asesorías, consultorías, auditorías y capacitaciones con la finalidad de satisfacer las necesidades de los clientes, cumpliendo con lo establecido en la norma ISO/IEC 17025. </p><br/>
                        <p>El CECAP cuenta con un laboratorio de evaluación de la conformidad con reconocimiento de la entidad mexicana de acreditación, a.c. (ema), personal especializado, capacitado y comprometido en el sistema de gestión de la calidad.</p><br/>
                        <p>La entidad mexicana de acreditación, a. c. acredita a la: Universidad Tecnológica de Tabasco/Centro de Calibración y Pruebas -UT como:</p><br/>
                        <ul>
                            <li style="margin-bottom: 10px;">Laboratorio de ensayo de acuerdo a los requerimientos establecidos en la Norma Mexicana NMX-EC-17025-IMNC-2006 (ISO/IEC 17025:2005) para la actividad de evaluación de la conformidad en la rama de fuentes fijas no. de acreditación FF-0036-008/09, vigente a partir del 2009-03-20</li>
                            <li style="margin-bottom: 10px;">Laboratorio de ensayo de acuerdo a los requerimientos establecidos en la Norma Mexicana NMX-EC-17025-IMNC-2006 (ISO/IEC 17025:2005) para la actividad de evaluación de la conformidad en la rama de ambiente laboral no. de acreditación No. AL-0475-036/13, vigente a partir del 2013-07-19</li>
                            <li>Laboratorio de calibración de acuerdo a los requerimientos establecidos en la Norma Mexicana NMX-EC-17025-IMNC-2006 (ISO/IEC 17025:2005) para las actividades de evaluación de la conformidad en el área dimensional no. de acreditación D-128, vigente a partir del 2013-06-22</li>
                        </ul><br/>
                        <p>Otros: (aprobación, certificación y registro)</p><br/>
                        <ul style="line-height: 20px;">
                            <li>Aprobación de la PROFEPA PFPA-APR-LP-FF-08/10</li>
                            <li>Registro de la STPS: UTT 960520R61-0013</li>   
                        </ul><br/><br/>
                        <p><img src="img/unidades_negocio/cecap/CECAP_26.png" width="875" height="275" alt="CECAP"/></p><br/><br/>
                    </div>
                </div>


                <div class="area_info_cecap_2">
                    <div class="area_info_cecap_2_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Laura Guzmán Priego</p>
                        <p>Directora del Centro de Calibración y Pruebas</p>
                        <p>Número directo: +52 (993) 3.58.24.81 | 3.58.24.82</p>
                        <p>Conmutador: +52 (993) 3.58.22.22 Ext. 8200 | 8201</p>
                        <p>Correo institucional: <a href="#" id="emailLink">cecap@uttab.edu.mx</a> | <a href="#" id="emailLink2">d.especializados@uttab.edu.mx</a></p>                    
                    </div>
                </div>
            </div>
            <div id="contenedor2" style="display: none;">
                <iframe src="about:blank" style="width:941px; height:800px;" frameborder="0" id="mypdf"></iframe>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=unidades_negocio" flush="true" />
        <script src="${pageContext.request.contextPath}/js/comun.min.js"></script>
        <script>
                    $(function () {
                        $('#emailLink').on('click', function (event) {
                            event.preventDefault();
                            var email = 'cecap@uttab.edu.mx';
                            window.location = 'mailto:' + email;
                        });

                        $('#emailLink2').on('click', function (event) {
                            event.preventDefault();
                            var email = 'd.especializados@uttab.edu.mx';
                            window.location = 'mailto:' + email;
                        });

                    });

                    function cargarPdf(valor)
                    {
                        var url = "";
                        switch (valor)
                        {
                            case 1:
                                url = "viewFile.action?i=1&d=cecap";
                                $("#mypdf").prop("src", url);
                                $("#area_info_cecap").css("display", "none");
                                $("#contenedor2").css("display", "block");
                                $("#servicios").css("opacity", "0.8");
                                $("#servicios").css("filter", "alpha(opacity=80)");
                                $("#capacitaciones").css("opacity", "1");
                                $("#capacitaciones").css("filter", "alpha(opacity=100)");
                                break;
                            case 2:
                                url = "viewFile.action?i=2&d=cecap";
                                $("#mypdf").prop("src", url);
                                $("#area_info_cecap").css("display", "none");
                                $("#contenedor2").css("display", "block");
                                $("#capacitaciones").css("opacity", "0.8");
                                $("#capacitaciones").css("filter", "alpha(opacity=80)");
                                $("#servicios").css("opacity", "1");
                                $("#servicios").css("filter", "alpha(opacity=100)");
                                break;
                            default:
                                $("#mypdf").prop("src", 'about:blank');
                                $("#area_info_cecap").css("display", "block");
                                $("#contenedor2").css("display", "none");
                                $("#capacitaciones").css("opacity", "1");
                                $("#capacitaciones").css("filter", "alpha(opacity=100)");
                                $("#servicios").css("opacity", "1");
                                $("#servicios").css("filter", "alpha(opacity=100)");
                                break;
                        }

                    }
        </script>
    </body>
</html>