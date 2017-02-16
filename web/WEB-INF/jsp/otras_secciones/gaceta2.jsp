<%-- 
    Document   : gaceta2
    Created on : 27-nov-2015, 12:35:20
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Gacetas</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Gacetas">
        <meta name="keywords" content="servicios,Gacetas,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/otras_secciones3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="otras_secciones_section">
                <header class="otras_secciones_titulo">
                    <h2><span class="texto_resaltado">Otras secciones</span> /</h2>
                    <h1>Gacetas<s:hidden name="anioSeleccionado" id="anioSeleccionado" value="0" /></h1>
                    <div class="corte"></div>
                </header>
                <article class="otras_secciones_contenido">
                    <section class="otras_secciones_texto_full">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/gaceta/gacetas1-min.png" alt="Gacetas"/>
                        <table class="miTabla">
                            <tbody>
                                <tr>
                                    <td id="2013"><s:a id="link2013" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2013);getGacetas(parseInt($('#anioSeleccionado').val()));">2013</s:a></td>
                                    <td id="2014"><s:a id="link2014" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2014);getGacetas(parseInt($('#anioSeleccionado').val()));" >2014</s:a></td>
                                    <td id="2015"><s:a id="link2015" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2015);getGacetas(parseInt($('#anioSeleccionado').val()));" >2015</s:a></td>
                                    <td id="2016"><s:a id="link2016" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2016);getGacetas(parseInt($('#anioSeleccionado').val()));" >2016</s:a></td>
                                    <td id="2017"><s:a id="link2017" href="javascript:void(0);" targets="contenedor2" loadingText="Cargando ..." buttonIcon="ui-icon-refresh" onclick="$('#anioSeleccionado').val(2017);getGacetas(parseInt($('#anioSeleccionado').val()));" >2017</s:a></td>
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
                        </section>
                        <section class="otras_secciones_texto">
                            <br/>
                            <div id="contenedor3">&nbsp;</div>

                        </section>
                    </article>
                    <div class="corte"></div>
                </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />                         
        </main>
        
        <script src="${pageContext.request.contextPath}/js/otras_secciones/gaceta.min.js"></script>
        <script>
            $(document).ready(function () {
                getGacetas(getAnio(null));
            });
        </script> 
    </body>
</html>