<%-- 
    Document   : calendario_escolar_2015_2016
    Created on : 03/09/2015, 09:58:11 AM
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<!--<html lang="es" manifest="cache.appcache">-->
<html lang="es">
    <head>
        <title>UTTAB &#124; Calendario Escolar 2015-2016</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Calendario Escolar">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios/calendario_escolar_2015_2016.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/css/smoothness/jquery-ui-1.10.4.custom.min.css"/>
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <!--[if IE]>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css" >
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <%if (!(request.getParameter("d") != null)) {%>
        <jsp:include page="../includeHeader.jsp?origen=servicios" flush="true"  />
        <%}%>
        <!-- Cuerpo -->
        <div id="contenedorCaleEscInte">
            <div id="datepicker_titulo">Calendario Escolar 2015 - 2016</div>
            <div id="datepicker"></div>
            <div id="datepicker_alumnas"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/calendario_escolar_2015_2016_alumnas.png" width="415" height="272" alt="Alumnas UTTAB"/></div>
            <div id="datepicker_iconos">
                <form>
                    <div id="format1">
                        <input type="checkbox" checked="checked" onclick="repinta_todo('escolarizado', $(this));" id="r00" name="radioscat"><label style=" font-weight: bold;">MOSTRAR TODO</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r01" name="radiocat" data-clase="inicioDeCurso"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/inicioDeCurso.png" width="28" height="20" alt="Inicio de curso" /><label>Inicio de curso</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r02" name="radiocat" data-clase="finDeCurso"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/finDeCurso.png" width="28" height="20" alt="Fin de curso" /><label>Fin de curso</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r03" name="radiocat" data-clase="inscripcionAlumnosDeNuevoIngresoTSU"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/inscripcionAlumnosDeNuevoIngresoTSU.png" width="28" height="18" alt="Inscripción alumnos de nuevo ingreso TSU" /><label>Inscripción alumnos nuevo ingreso TSU</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r04" name="radiocat" data-clase="inscripcionAlumnosDeNuevoIngresoLIC"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/inscripcionAlumnosDeNuevoIngresoLIC.png" width="28" height="24" alt="Inscripción alumnos de nuevo ingreso LIC" /><label>Inscripción alumnos nuevo ingreso LIC</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r05" name="radiocat" data-clase="reinscripcionesContinuidadInmediata"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/reinscripcionesContinuidadInmediata.png" width="28" height="23" alt="Reinscripciones continuidad inmediata" /><label>Reinscripciones continuidad inmediata</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r06" name="radiocat" data-clase="limiteDeBajasTemporales"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/limiteDeBajasTemporales.png" width="28" height="28" alt="Límite de bajas temporales" /><label>Límite de bajas temporales</label><br>  
                    </div>
                    <div id="format2">
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r07" name="radiocat" data-clase="pagoDeColegiaturaYreinscripcionesEnLinea"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/pagoDeColegiaturaYreinscripcionesEnLinea.png" width="26" height="20" alt="Pago de colegiaturas y reinscripciones en línea (Semana intercuatrimestral)" /><label>Pago de colegiaturas y reinscripciones en línea (Semana intercuatrimestral)</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r08" name="radiocat" data-clase="limiteDeCapturaDeEvaluaciones"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/limiteDeCapturaDeEvaluaciones.png" width="26" height="20" alt="Límite de capturas de evaluaciones" /><label>Límite de capturas de evaluaciones</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r09" name="radiocat" data-clase="limiteCapturaDelProyectoFinal"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/limiteCapturaDelProyectoFinal.png" width="26" height="22" alt="Límite de captura del proyecto final" /><label>Límite de captura del proyecto final</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r10" name="radiocat" data-clase="limiteRecepcionDeActasFinales"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/limiteRecepcionDeActasFinales.png" width="26" height="25" alt="Límite de recepción de actas finales (incluyendo estadía)" /><label>Límite de recepción de actas finales (incluyendo estadía)</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r11" name="radiocat" data-clase="limiteDeEntregaDeSolicitudesDeReingresosDivisiones"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/limiteDeEntregaDeSolicitudesDeReingresosDivisiones.png" width="26" height="23" alt="Límite de entrega de soliccitudes de reingresos en las divisiones académicas" /><label>Límite de entrega de soliccitudes de reingresos en las divisiones académicas</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r12" name="radiocat" data-clase="limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar.png" width="26" height="25" alt="Límite de recepción de solicitudes de reingresos en el depto. de Control Escolar" /><label>Límite de recepción de solicitudes de reingresos en el depto. de Control Escolar</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r13" name="radiocat" data-clase="limiteDeEntregaHorarios"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/limiteDeEntregaHorarios.png" width="26" height="28" alt="Límite de entrega de horarios" /><label>Límite de entrega de horarios</label><br>                    </div>
                    <div id="format3">
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r14" name="radiocat" data-clase="ceremoniaDeGraduacion"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/ceremoniaDeGraduacion.png" width="30" height="20" alt="Ceremonia de graduación" /><label>Ceremonia de graduación</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r15" name="radiocat" data-clase="limiteDetramitesDeTitulacion"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/limiteDetramitesDeTitulacion.png" width="30" height="28" alt="Límite de trámites de titulación" /><label>Límite de trámites de titulación</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r16" name="radiocat" data-clase="diasNoLaborales"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/diasNoLaborales.png" width="30" height="23" alt="Días no laborables: docentes y administrativos" /><label>Días no laborables: docentes y administrativos</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r17" name="radiocat" data-clase="vacaciones"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/vacaciones.png" width="30" height="25" alt="Vacaciones" /><label>Vacaciones</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r18" name="radiocat" data-clase="diaDelSindicato"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/diaDelSindicato.png" width="30" height="24" alt="Día del Sindicato" /><label>Día del Sindicato</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r19" name="radiocat" data-clase="diaDelTSU"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/diaDelTSU.png" width="30" height="30" alt="Día del TSU" /><label>Día del TSU</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r20" name="radiocat" data-clase="aniversarioDeLaUTTAB"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/aniversarioDeLaUTTAB.png" width="30" height="25" alt="Aniversario de la UTTAB" /><label>Aniversario de la UTTAB</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r21" name="radiocat" data-clase="diasNoLaborablesMadresTrabajadoras"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2015_2016/diasNoLaborablesMadresTrabajadoras.png" width="30" height="28" alt="Día no laborables (únicamente para las madres trabajadores)" /><label>Día no laborables (únicamente para las madres trabajadores)</label><br>  
                    </div>
                </form>
            </div>
            <div id="datepicker_otras_fechas">
                <p>Captura de calificaciones del 4to. parcial de estadía</p>
                <ul>
                    <li>21 - 26 agosto 2015</li>
                    <li>11 - 16 diciembre 2015</li>
                    <li>22 - 27 abril 2016</li>
                    <li>26 - 31 agosto 2016</li>
                    <li>9 - 14 diciembre 2016</li>
                </ul>
                <p style="margin-top: 5px;">Recuperación ordinaria para competencia (todas las meterias excepto estadía)</p>
                <ul>
                    <li>20 - 21 agosto 2015</li>
                    <li>10 - 11 diciembre 2015</li>
                    <li>21 - 22 abril 2016</li>
                    <li>25 - 26 agosto 2016</li>
                    <li>8 - 9 diciembre 2016</li>
                </ul>
            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <%if (!(request.getParameter("d") != null)) {%>
        <jsp:include page="../includePie.jsp?origen=servicios" flush="true" />
        <%} else {%>
        <script src="${pageContext.request.contextPath}/js/JQuery/jquery-1.11.3.min.js"></script>
        <%}%>
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/servicios/arreglos_calendario_escolar_2015_2016.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/servicios/calendario_escolar_2015_2016.min.js"></script>
    </body>
</html>
