<%-- 
    Document   : calendario
    Created on : 10-sep-2015, 14:42:47
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Atención al Sector Energético &#124; Calendario</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Atención al Sector Energético, Calendario">
        <meta name="keywords" content="vinculación,Centro de Atención al Sector Energético,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion2.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/css/smoothness/jquery-ui-1.10.4.custom.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            .inicio_curso a {
                background-image : url('${pageContext.request.contextPath}/img/unidades_negocio/case/inicioDeCurso.png') !important;
                background-size:39px 28px !important;
                background-repeat:no-repeat !important;
                color: black !important;
                font-weight:bold !important;
            }

            div#datepicker > div { width:auto!important;}
        </style>
    </head>
    <body>
        <jsp:include page="/WEB-INF/jsp/includeHeader.jsp?origen=unidades_negocio" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Centro de Atención al Sector Energético</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                        <section class="vinculacion_texto">
                            <figure style="text-align: right;">
                            <s:a action="inicio"><img src="${pageContext.request.contextPath}/img/unidades_negocio/case/btn_regresar.png" alt="Regresar"/></s:a>
                            </figure>
                        </section>
                        <section class="vinculacion_texto">
                            <header><h3>Calendario <s:property value="capacitacion.nombre"></s:property></h3></header><br/>
                            <s:property value="capacitacion.descripcion" escapeHtml="false"></s:property>
                            <p class="negritas">Iconografía:</p>
                            <ul>
                                <li><img src="${pageContext.request.contextPath}/img/unidades_negocio/case/inicioDeCurso.png" alt="Inicio de curso" style="width:46px; height: 33px;"/>Inicio de curso</li>
                            </ul><br/>
                            <div id="datepicker" style=" width: auto;"></div><br/><br/>
                        </section>
                        <section class="vinculacion_texto">
                            <div class="ficha_contacto" style="width:500px;">
                                <header><h3>Contacto</h3></header>
                                <article>
                                    <p>Alberto de la Cruz Cruz</p>
                                    <p>Coordinador de capacitación</p>
                                    <p>Número directo: +52 (993) 3.58.22.10</p>
                                    <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2017 | 2018</p>
                                    <p>Correo institucional: <a href="coordinaciondecapacitacion@uttab.edu.mx">coordinaciondecapacitacion@uttab.edu.mx</a></p>
                                </article>
                            </div>
                        </section>
                    </article>
                    <div class="corte"></div>
                </section>
            </main>
            <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.jsp?origen=unidades_negocio" flush="true" />
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script>
            var availableDates = [];
            var find = '\'';
            var re = new RegExp(find, 'g');
            var jsonText = "{\"calendarios_cursos\":[";
            var json;

            <s:if test="calendarioList.size() > 0">
                <s:iterator value="calendarioList" status="incr">
                    <s:if test="#incr.index == calendarioList.size - 1">
            jsonText += "{\"id\":<s:property value="id"/>,\"fechas\":<s:property value="fechas" escape="false"/>}";
                    </s:if>
                    <s:else>
            jsonText += "{\"id\":<s:property value="id"/>,\"fechas\":<s:property value="fechas" escape="false"/>},";
                    </s:else>
                </s:iterator>
            </s:if>
            jsonText += "]}";

            //("0" + date.getDate()).slice(-2) PARA EL DIA        
            //("0" + (date.getMonth() + 1)).slice(-2) PARA EL MES
            function available(date) {
                mdy = ("0" + (date.getMonth() + 1)).slice(-2) + "/" + ("0" + date.getDate()).slice(-2) + "/" + date.getFullYear();
                if ($.inArray(mdy, availableDates) !== -1) {
                    return [true, "inicio_curso"];
                } else {
                    return[true, ""];
                }
            }

            function buildLink(dateText, inst) {
                var mtz = dateText.split("/");
                mdy = mtz[1] + "/" + mtz[0] + "/" + mtz[2];
                for (var i = 0; i < json.calendarios_cursos.length; i++)
                {
                    if ($.inArray(mdy, json.calendarios_cursos[i].fechas) !== -1) {
                        var url = "registro.action?id=" + json.calendarios_cursos[i].id;
                        window.location = url;
                        return;
                    }
                }

            }

            $(function () {

                jsonText = jsonText.replace(re, "\"");
                json = JSON.parse(jsonText);

                for (var i = 0; i < json.calendarios_cursos.length; i++)
                {
                    availableDates.push(json.calendarios_cursos[i].fechas[0]);
                }

                $('#datepicker').datepicker({
                    numberOfMonths: [3, 4],
                    monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
                    dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                    dateFormat: "dd/mm/yy",
                    minDate: new Date(2016, 0, 1),
                    maxDate: new Date(2016, 11, 31),
                    beforeShowDay: available,
                    onSelect: buildLink
                });
            });

        </script>
    </body>
</html>