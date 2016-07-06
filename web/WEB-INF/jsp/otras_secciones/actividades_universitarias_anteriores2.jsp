<%-- 
    Document   : actividades_universitarias_anteriores2
    Created on : 26-nov-2015, 15:42:52
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Actividades universitarias</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Actividades universitarias">
        <meta name="keywords" content="servicios,Actividades universitarias,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/otras_secciones2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="otras_secciones_section">
                <header class="otras_secciones_titulo">
                    <h2><span class="texto_resaltado">Otras secciones</span> /</h2>
                    <h1>Actividades universitarias<s:hidden name="anioSeleccionado" id="anioSeleccionado" value="0" /><s:hidden name="mesSeleccionado" id="mesSeleccionado" value="0" /></h1>
                    <div class="corte"></div>
                </header>
                <article class="otras_secciones_contenido">
                    <section class="otras_secciones_texto_full">
                        <figure><img src="${pageContext.request.contextPath}/img/otras_secciones/actividades_universitarias/actividades_universitarias1-min.png" alt="Actividades universitarias"/></figure>
                    </section>
                    <section class="otras_secciones_texto_full">
                        <table class="miTabla">
                            <tbody>
                                <tr>
                                    <td id="2013"><s:a id="link2013" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2013);getActividadesUniversitariasAnteriores(parseInt($('#anioSeleccionado').val()),$('#mesSeleccionado').val());">2013</s:a></td>
                                    <td id="2014"><s:a id="link2014" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2014);getActividadesUniversitariasAnteriores(parseInt($('#anioSeleccionado').val()),$('#mesSeleccionado').val());" >2014</s:a></td>
                                    <td id="2015"><s:a id="link2015" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2015);getActividadesUniversitariasAnteriores(parseInt($('#anioSeleccionado').val()),$('#mesSeleccionado').val());" >2015</s:a></td>
                                    <td id="2016"><s:a id="link2016" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2016);getActividadesUniversitariasAnteriores(parseInt($('#anioSeleccionado').val()),$('#mesSeleccionado').val());" >2016</s:a></td>
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
                        </table><br/>
                        <div id="contenedor2">&nbsp;</div>
                        </section>
                    </article>
                    <div class="corte"></div>
                </section>
            </main>
            <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=boletines_anteriores" flush="true" />
        <script src="${pageContext.request.contextPath}/js/otras_secciones/actividades_universitarias_anteriores.min.js"></script>
        <script>
            $(document).ready(function () {
                getActividadesUniversitariasAnteriores(getAnio(null), null);
            });
        </script>
    </body>
</html>