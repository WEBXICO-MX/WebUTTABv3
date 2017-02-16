<%-- 
    Document   : calendario_eventos2
    Created on : 30-nov-2015, 9:52:07
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Calendario de eventos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Calendario de eventos">
        <meta name="keywords" content="servicios,Calendario de eventos,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/otras_secciones3.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/css/smoothness/jquery-ui-1.10.4.custom.min.css"/>
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
                    <h1>Calendario de eventos</h1>
                    <div class="corte"></div>
                </header>
                <article class="otras_secciones_contenido">
                    <section class="otras_secciones_texto_full">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/calendario_eventos/calendario_eventos1-min.png" alt="Calendario de eventos"/>
                    </section>
                    <section class="otras_secciones_texto_full">
                        <div id="contenedor_calendario">
                            <div id="menuFecha">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td><a href="javascript:void(0);" onclick="tipoBusqueda(1);">Día</a></td>
                                            <td><a href="javascript:void(0);" onclick="tipoBusqueda(2);">Semana</a></td>
                                            <td><a href="javascript:void(0);" onclick="tipoBusqueda(3);">Mes</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="corte"></div>
                            </div>
                            <div id="datepicker_calendario_eventos"></div>
                            <div id="datepicker_calendario_eventos2"></div>
                        </div>
                        <div id="contenedor_eventos">
                            <div class="area_info_calendario_eventos">&nbsp;</div>
                            <div class="corte"></div>
                        </div>
                        <div class="corte"></div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  /> 
        </main>
        
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/otras_secciones/calendario_eventos.min.js"></script>
        <script>
                $(document).ready(function () {
                    $.ajaxSetup({cache: false});
                    tipoBusqueda(1);
                });
        </script>
    </body>
</html>