<%-- 
    Document   : calendario_escolar2
    Created on : 1/10/2013, 09:23:11 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<!--<html lang="es" manifest="cache.appcache">-->
<html lang="es">
    <head>
        <title>UTTAB &#124; Calendario Escolar</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Calendario Escolar">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="css/servicios.min.css"/>
        <link rel="stylesheet" href="css/calendarioEscolar.min.css"/>
        <link rel="stylesheet" href="js/JQuery/plugins/jquery-ui-1.10.4.custom/css/ui-lightness/jquery-ui-1.10.4.custom.min.css"/>
        <link rel="icon" href="img/favicon.ico"/>
        <!--[if IE]>
        <link rel="shortcut icon" href="img/favicon.ico"/> 
        <![endif]-->
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css" >
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <%if (!(request.getParameter("d") != null)) {%>
        <jsp:include page="../includeMenu.jsp?origen=servicios" flush="true"  />
        <%}%>
        <!-- Cuerpo -->
        <div id="contenedorCaleEscInte">
            <!--<div style="width:966px; height: 129px; margin-right:34px; padding-top: 38px;font-family: 'Open Sans' !important;font-style: normal;font-weight:bold; font-size: 45px;text-align:right;color:#3A3A3A;">CALENDARIO ESCOLAR<br/>2013 - 2014</div>
            <div id="datepicker_iconos">
                <form>
                    <div id="format">
                        <input type="checkbox" checked="checked" onclick="repinta_todo('escolarizado', $(this));" id="r9" name="radioscat">&nbsp;&nbsp;<label style=" font-weight: bold;">MOSTRAR TODO</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r01" name="radiocat" data-clase="inicio_curso">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/inicio_curso.png" width="17" height="16" alt="Inicio de curso" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Inicio de curso.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r02" name="radiocat" data-clase="fin_curso">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/fin_curso.png" width="17" height="16" alt="Fin de curso" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Fin de curso.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r03" name="radiocat" data-clase="limite_bajas_temporales">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/limite_bajas_temporales.png" width="17" height="16" alt="Limite bajas temporales" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de bajas temporales.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r04" name="radiocat" data-clase="inscripciones_alumnos_nuevo_ingreso_TSU">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/inscripciones_alumnos_nuevo_ingreso_TSU.png" width="17" height="16" alt="Inscripción alumnos nuevo ingreso TSU" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Inscripciones alumnos de nuevo ingreso TSU.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r05" name="radiocat" data-clase="inscripciones_alumnos_nuevo_ingreso_LIC">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/inscripciones_alumnos_nuevo_ingreso_LIC.png" width="17" height="16" alt="Inscripción alumnos nuevo ingreso LIC" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Inscripciones alumnos de nuevo ingreso LIC.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r06" name="radiocat" data-clase="inicio_clases_nuevo_ingreso_TSU">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/inicio_clases_nuevo_ingreso_TSU.png" width="17" height="16" alt="Inicio clases nuevo ingreso TSU" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Inicio de clases nuevo ingreso TSU.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r07" name="radiocat" data-clase="pago_colegiaturas_reinscripciones_en_linea">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/pago_colegiaturas_reinscripciones_en_linea.png" width="17" height="16" alt="Pago colegiaturas reinscripciones en linea" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Pago de colegiaturas y reinscripciones en línea.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r08" name="radiocat" data-clase="dia_del_TSU">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/dia_del_TSU.png" width="17" height="16" alt="dia del TSU" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Día del TSU.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r09" name="radiocat" data-clase="dia_del_sindicato">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/dia_del_sindicato.png" width="17" height="16" alt="día del sindicato" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Día del sindicato.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r10" name="radiocat" data-clase="ceremonia_graduacion">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/ceremonia_graduacion.png" width="17" height="16" alt="Ceremonia de graduación" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Ceremonia de graduación.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r11" name="radiocat" data-clase="LimiteCapturaCalificacionesEstadia">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/LimiteCapturaCalificacionesEstadia.png" width="17" height="16" alt="Limite captura calificaciones estadía" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de captura de calificaciones de estadía.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r12" name="radiocat" data-clase="LimiteEntregaSolicitudesReingresoDivisionesAcademicas">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/LimiteEntregaSolicitudesReingresoDivisionesAcademicas.png" width="17" height="16" alt="Limite entrega solicitudes reingreso divisiones academicas" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de entrega de solicitudes de reingreso.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r13" name="radiocat" data-clase="LimiteRecepcionSolicitudesReingresoControlEscolar">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/LimiteRecepcionSolicitudesReingresoControlEscolar.png" width="17" height="16" alt="Limite recepcion solicitudes reingreso control escolar" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de recepción de solicitudes de reingresos.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r14" name="radiocat" data-clase="Vacaciones">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/Vacaciones.png" width="17" height="16" alt="Vacaciones" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Vacaciones.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r15" name="radiocat" data-clase="DiasNoLaborables">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/DiasNoLaborables.png" width="17" height="16" alt="Días no laborables" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Días no laborables: docentes y administrativos.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r16" name="radiocat" data-clase="LimiteTramiteTitulacion">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/LimiteTramiteTitulacion.png" width="17" height="16" alt="Limite trámite titulación" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de trámites de titulación.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r17" name="radiocat" data-clase="LimiteCapturaEvaluaciones">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/LimiteCapturaEvaluaciones.png" width="17" height="16" alt="Límite captura evaluaciones" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de captura de evaluaciones.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r18" name="radiocat" data-clase="ImpresionEntregaActasFinales">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/ImpresionEntregaActasFinales.png" width="17" height="16" alt="Impresion entrega actas finales" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Impresión y entrega de actas finales.</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r19" name="radiocat" data-clase="LimiteEntregaHorarios">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/LimiteEntregaHorarios.png" width="17" height="16" alt="Límite entrega horarios" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de entrega de horarios.</label><br/>
                    </div><br/>
                </form>
            </div>    
            <div id="datepicker"></div>-->
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <%if (!(request.getParameter("d") != null)) {%>
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
        <%} else {%>
        <script src="js/JQuery/jquery-1.11.3.min.js"></script>
        <%}%>
        <!--<script src="js/JQuery/plugins/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="js/servicios/arreglos_calendario_escolar2.js"></script>
        <script src="js/servicios/calendario_escolar2.js"></script>-->
    </body>
</html>
