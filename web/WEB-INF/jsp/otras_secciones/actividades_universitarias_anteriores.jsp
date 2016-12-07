<%-- 
    Document   : actividades_universitarias_anteriores
    Created on : 18/09/2013, 03:19:07 PM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Actividades Universitarias</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Actividades Universitarias Anteriores">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/otras_secciones.min.css"/>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=boletines_anteriores" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_boletines_anteriores"><h3>Actividades Universitarias</h3><s:hidden name="anioSeleccionado" id="anioSeleccionado" value="0" /><s:hidden name="mesSeleccionado" id="mesSeleccionado" value="0" /></div>
            <div class="area_info_boletines_anteriores">
                <div class="area_info_boletines_anteriores_1">
                    <div class="area_info_boletines_anteriores_1_info">
                        <table class="miTabla">
                            <tbody>
                                <tr>
                                    <td id="2013">
                                        <s:a id="link2013" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2013);getActividadesUniversitariasAnteriores(parseInt($('#anioSeleccionado').val()),$('#mesSeleccionado').val());">2013</s:a>
                                        </td>
                                        <td id="2014">
                                        <s:a id="link2014" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2014);getActividadesUniversitariasAnteriores(parseInt($('#anioSeleccionado').val()),$('#mesSeleccionado').val());" >2014</s:a>
                                        </td>
                                        <td id="2015">
                                            <s:a id="link2015" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2015);getActividadesUniversitariasAnteriores(parseInt($('#anioSeleccionado').val()),$('#mesSeleccionado').val());" >2015</s:a>
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
                                    <tr>
                                    <td id="Enero"><s:a id="linkEne" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Enero');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),1);">ENE</s:a></td>
                                    <td id="Febrero"><s:a id="linkFeb" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Febrero');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),2);">FEB</s:a></td>
                                    <td id="Marzo"><s:a id="linkMar" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Marzo');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),3);">MAR</s:a></td>
                                    <td id="Abril"><s:a id="linkAbr" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Abril');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),4);">ABR</s:a></td>
                                    <td id="Mayo"><s:a id="linkMay" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Mayo');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),5);">MAY</s:a></td>
                                    <td id="Junio"><s:a id="linkJun" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Junio');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),6);">JUN</s:a></td>
                                    <td id="Julio"><s:a id="linkJul" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Julio');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),7);">JUL</s:a></td>
                                    <td id="Agosto"><s:a id="linkAgo" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Agosto');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),8);">AGO</s:a></td>
                                    <td id="Septiembre"><s:a id="linkSep" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Septiembre');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),9);">SEP</s:a></td>
                                    <td id="Octubre"><s:a id="linkOct" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Octubre');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),10);">OCT</s:a></td>
                                    <td id="Noviembre"><s:a id="linkNov" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Noviembre');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),11);">NOV</s:a></td>
                                    <td id="Diciembre"><s:a id="linkDic" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#mesSeleccionado').val('Diciembre');getActividadesUniversitariasAnteriores($('#anioSeleccionado').val(),12);">DIC</s:a></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="corte"></div>
                    </div>
                </div>
            </div>

            <div id="contenedor2">&nbsp;</div>
            <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=boletines_anteriores" flush="true" />
        <script src="js/otras_secciones/actividades_universitarias_anteriores.min.js"></script>
        <script>
            $(document).ready(function() {
                // La LIC FRINE queria que se siguiera mostrando por defecto SEPTIEMBRE en las primeras semanas de Octubre por no haber info de ese mes aun.
                // Dejar en getActividadesUniversitariasAnteriores(getNumeroMes(null)); para que agarre el mes actual en curso.
                getActividadesUniversitariasAnteriores(getAnio(null), null);
                //getActividadesUniversitariasAnteriores(2013,12);
            });
        </script> 
    </body>
</html>
