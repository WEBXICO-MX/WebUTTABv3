<%-- 
    Document   : centro_certificador_delf_dalf
    Created on : 12/08/2013, 03:15:41 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro certificador de exámenes de francés DELF-DALF</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro certificador de exámenes de francés DELF-DALF">
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
            <div class="area_titulo_centro_certificador_delf_dalf"><h3><a href="javascript:void(0);" onclick="cargarPdf(0);">Centro Certificador de Exámenes de Francés DELF-DALF</a></h3></div>
            <div class="area_btn_centro_certificador_delf_dalf">
                <a href="javascript:void(0);" onclick="if (getInternetExplorerVersion() !== -1) {
                            window.open('viewFile.action?i=2&d=delf_dalf', '_blank');
                        } else {
                            cargarPdf(1);
                        }"><img src="img/unidades_negocio/centro_certificador_delf_dalf/btn_calendario_examenes2.png" width="151" height="28" alt="Calendario de exámenes" id="calendario_examenes"/></a>
            </div>
            <div class="area_info_centro_certificador_delf_dalf" id="area_info_centro_certificador_delf_dalf">
                <div class="area_info_centro_certificador_delf_dalf_1">
                    <div class="area_info_centro_certificador_delf_dalf_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_centro_certificador_delf_dalf_1_info">
                        <img src="img/unidades_negocio/centro_certificador_delf_dalf/logo3.png" alt="Centro Certificador DELF-DALF" style="float: right;"/>
                        <img src="img/unidades_negocio/centro_certificador_delf_dalf/logo2.png" alt="Centro Certificador DELF-DALF" style="float: right;"/>
                        <img src="img/unidades_negocio/centro_certificador_delf_dalf/logo1.png" alt="Centro Certificador DELF-DALF" style="float: right;"/>
                        <p>El Centro Certificador DELF-DALF de la Universidad Tecnológica de Tabasco inició funciones en 2008.</p>
                        <p>Es un proyecto producto de la cooperación entre la embajada de Francia, de México y la UTTAB.</p><br/>
                        <p>El centro certificador tiene la responsabilidad de organizar y supervisar que todas las sesiones de exámenes durante el año se realicen conforme al calendario de la Coordinación Nacional DELF-DALF con sede en el Instituto Francés de America Latina (IFAL), de acuerdo a las indicaciones de calidad emitidas desde el Centro Internacional de Estudios Pedagógicos (CIEP) del Ministerio de Educación Francés.</p>
                        <br/>
                        <br/>
                    </div>
                </div>

                <div class="area_info_centro_certificador_delf_dalf_2">
                    <div class="area_info_centro_certificador_delf_dalf_2_titulo"><h4>¿Qué son los exámenes DELF y DALF?</h4></div>
                    <div class="area_info_centro_certificador_delf_dalf_2_info">
                        <p>Son certificaciones oficiales internacionales de francés otorgados por el Ministerio Francés de Educación Nacional por medio del Centro Internacional de Estudios Pedagógicos (CIEP).</p><br/>
                        <ul>
                            <li>DELF significa: Diploma de Estudios de Lengua Francesa</li>
                            <li>DALF significa: Diploma Avanzado de Lengua Francesa</li>
                        </ul> 
                        <br/>
                        <br/>
                    </div>
                </div>

                <div class="area_info_centro_certificador_delf_dalf_3">
                    <div class="area_info_centro_certificador_delf_dalf_3_titulo"><h4>¿Por qué presentar un diploma DELF-DALF?</h4></div>
                    <div class="area_info_centro_certificador_delf_dalf_3_info">
                        <p>Porque estas certificaciones permiten el reconocimiento y la validación internacional de dominio del idioma francés en universidades y en centros de idioma, sea por motivos personales o profesionales.</p>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>

                <div class="area_info_centro_certificador_delf_dalf_4">
                    <div class="area_info_centro_certificador_delf_dalf_4_titulo"><h4>Servicios que ofrecemos</h4></div>
                    <div class="area_info_centro_certificador_delf_dalf_4_info">
                        <p>El centro DELF-DALF Villahermosa ofrece al público interno y externo la posibilidad de acreditar una certificación a nivel internacional en lengua francesa, es decir, certifica que el alumno o la persona (empleado, profesor) sea capaz de hablar, escribir, comprender y escuchar el idioma.</p><br/>
                        <p>Además de la aplicación y organización de los exámenes.</p><br/>
                        <ul>
                            <li>Gestiona la habilitación de examinadores</li>
                            <li>Ofrece asesorías y consultorías sobre las certificaciones DELF-DALF, TCF, etc</li>
                            <li>Ofrece conferencias en eventos lingüísticos y culturales</li>
                            <li>Talleres DELF a alumnos</li>
                            <li>Curso DALF a profesores</li>
                            <li>Firma de convenios para certificaciones DELF-DALF con otras instituciones</li>
                            <li>Asesoría y apoyo técnico a los estudiantes de francés del programa de movilidad Licencia Profesional a Francia Programa MEXPROTEC</li>
                        </ul><br/>
                        <p>Los diplomas DELF y DALF son entregados por el Ministerio de Educación Francés para certificar las competencias en lengua francesa. El DELF y DALF están compuestos por seis diplomas independientes que corresponden a los seis niveles del marco común europeo de referencia para las lenguas.</p><br/>
                        <table>
                            <thead>
                                <tr>
                                    <th style="width: 60px">CECR</th>
                                    <th style="width: 100px">DELF/DALF</th>
                                    <th>USUARIO</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>A1</td>
                                    <td>DELF A1</td>
                                    <td>Elemental</td>
                                </tr>
                                <tr>
                                    <td>A2</td>
                                    <td>DELF A2</td>
                                    <td>Elemental</td>
                                </tr>
                                <tr>
                                    <td>B1</td>
                                    <td>DELF B1</td>
                                    <td>Independiente</td>
                                </tr>
                                <tr>
                                    <td>B2</td>
                                    <td>DELF B2</td>
                                    <td>Independiente</td>
                                </tr>
                                <tr>
                                    <td>C1</td>
                                    <td>DALF C1</td>
                                    <td>Experimentado</td>
                                </tr>
                                <tr>
                                    <td>C2</td>
                                    <td>DALF C2</td>
                                    <td>Experimentado</td>
                                </tr>
                            </tbody>
                        </table><br/>
                        <p>Los diplomas DELF también existen en versión adaptada a jóvenes adolescentes.</p><br/>
                        <table border="0">
                            <thead>
                                <tr>
                                    <th style="width: 60px">CECR</th>
                                    <th style="width: 100px">DELF/DALF</th>
                                    <th>USUARIO</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>A1</td>
                                    <td>DELF junior A1</td>
                                    <td>Elemental</td>
                                </tr>
                                <tr>
                                    <td>A2</td>
                                    <td>DELF junior A2</td>
                                    <td>Elemental</td>
                                </tr>
                                <tr>
                                    <td>B1</td>
                                    <td>DELF junior B1</td>
                                    <td>Independiente</td>
                                </tr>
                                <tr>
                                    <td>B2</td>
                                    <td>DELF junior B2</td>
                                    <td>Independiente</td>
                                </tr>
                            </tbody>
                        </table><br/>
                        <p>¿A cuantas horas de aprendizaje equivale cada nivel?</p><br/>
                        <table>
                            <thead>
                                <tr>
                                    <th style="width: 100px">Nivel</th>
                                    <th style="width: 100px">Horas</th>
                                    <th>Tarifa</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>DELF A1</td>
                                    <td>- 90/100 h</td>
                                    <td>$ 685</td>
                                </tr>
                                <tr>
                                    <td>DELF A2</td>
                                    <td>- 190/200 h</td>
                                    <td>$ 750</td>
                                </tr>
                                <tr>
                                    <td>DELF B1</td>
                                    <td>- 350/380 h</td>
                                    <td>$ 820</td>
                                </tr>
                                <tr>
                                    <td>DELF B2</td>
                                    <td>- 600/670 h</td>
                                    <td>$ 1,380</td>
                                </tr>
                                <tr>
                                    <td>DALF C1</td>
                                    <td>- 750/780 h</td>
                                    <td>$ 2,000</td>
                                </tr>
                                <tr>
                                    <td>DALF C2</td>
                                    <td>- + de 900h</td>
                                    <td>$ 2,270</td>
                                </tr>
                            </tbody>
                        </table>
                        <br/>
                        <br/>
                    </div>
                </div><div class="corte"></div>

                <div class="area_info_centro_certificador_delf_dalf_5">
                    <div class="area_info_centro_certificador_delf_dalf_5_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Juan Carlos Olán Sánchez</p>
                        <p>Secretario del Centro Certificador DELF - DALF</p>
                        <p>Conmutador: +52 (993) 3.58.22.22 Ext. 1006|7002</p>
                        <p>Correo institucional: <a href="#" id="emailLink">cdelfdalf@uttab.edu.mx</a></p>
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
                            var email = 'cdelfdalf@uttab.edu.mx';
                            window.location = 'mailto:' + email;
                        });

                    });

                    function cargarPdf(valor)
                    {
                        var url = "";
                        switch (valor)
                        {
                            case 1:
                                url = "viewFile.action?i=2&d=delf_dalf";
                                $("#mypdf").prop("src", url);
                                $("#area_info_centro_certificador_delf_dalf").css("display", "none");
                                $("#contenedor2").css("display", "block");
                                $("#contenedor2").css("opacity", "0.8");
                                $("#contenedor2").css("filter", "alpha(opacity=80)");
                                break;
                            default:
                                $("#mypdf").prop("src", 'about:blank');
                                $("#area_info_centro_certificador_delf_dalf").css("display", "block");
                                $("#contenedor2").css("display", "none");
                                $("#contenedor2").css("opacity", "1");
                                $("#contenedor2").css("filter", "alpha(opacity=100)");
                                break;
                        }

                    }
        </script>
    </body>
</html>