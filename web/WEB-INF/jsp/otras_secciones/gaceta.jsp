<%-- 
    Document   : gaceta
    Created on : 12/09/2013, 01:32:39 PM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Gaceta</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Gaceta">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="css/otras_secciones.min.css">
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
        <jsp:include page="../includeMenu.jsp?origen=otras_secciones" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_gaceta"><h3>Gaceta de la Universidad Tecn&oacute;logica de Tabasco</h3><s:hidden name="anioSeleccionado" id="anioSeleccionado" value="0" /></div>
            <div class="area_info_gaceta">
                <div class="area_info_gaceta_1">
                    <div class="area_info_gaceta_1_info">
                        <table class="miTabla">
                            <tbody>
                                <tr>
                                    <td id="2013">
                                        <s:a id="link2013" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2013);getGacetas(parseInt($('#anioSeleccionado').val()));">2013</s:a>
                                        </td>
                                        <td id="2014">
                                        <s:a id="link2014" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2014);getGacetas(parseInt($('#anioSeleccionado').val()));" >2014</s:a>
                                        </td>
                                        <td id="2015">
                                            <s:a id="link2015" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2015);getGacetas(parseInt($('#anioSeleccionado').val()));" >2015</s:a>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="corte"></div>
                    </div>
                </div>
            </div>

            <div id="contenedor3">&nbsp;</div>
            <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=otras_secciones" flush="true" />
        <script src="js/otras_secciones/gaceta.min.js"></script>
        <script>
            $(document).ready(function() {
                // La LIC FRINE queria que se siguiera mostrando por defecto SEPTIEMBRE en las primeras semanas de Octubre por no haber info de ese mes aun.
                // Dejar en getActividadesUniversitariasAnteriores(getNumeroMes(null)); para que agarre el mes actual en curso.
                getGacetas(getAnio(null));
                //getGacetas(2013);
            });
        </script> 
    </body>
</html>
