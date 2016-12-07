<%-- 
    Document   : calendario_escolar_2016_2017
    Created on : 19-ago-2016, 12:10:08
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Calendario Escolar 2016-2017</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Calendario Escolar">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios/calendario_escolar_2016_2017.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/css/smoothness/jquery-ui-1.10.4.custom.min.css"/>
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <style>
            .ui-datepicker td span, .ui-datepicker td a {
                text-align: center;
            }
        </style>
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
        <jsp:include page="../includeHeader.min.jsp?origen=servicios" flush="true"  />
        <%}%>
        <!-- Cuerpo -->
        <div id="contenedorCaleEscInte">
            <div id="datepicker_titulo">Calendario Escolar <br/>2016 - 2017</div>
            <div id="datepicker"><div style="clear: both"></div> </div>
            <div style="clear: both"></div>  
            <div id="datepicker_iconos">
                <form>
                    <div id="format1">
                        <input type="checkbox" checked="checked" onclick="repinta_todo('escolarizado', $(this));" id="r00" name="radioscat"><label style=" font-weight: bold;">Mostrar todo</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r01" name="radiocat" data-clase="inicioDeCurso"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/inicioDeCurso.png" width="28" height="20" alt="Inicio de curso" /><label>Inicio de curso</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r02" name="radiocat" data-clase="finDeCurso"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/finDeCurso.png" width="28" height="20" alt="Fin de curso" /><label>Fin de curso</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r03" name="radiocat" data-clase="inscripcionesAlumnosNuevoIngresoTSU"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/inscripcionesAlumnosNuevoIngresoTSU.png" width="28" height="18" alt="Inscripciones: alumnos de nuevo ingreso TSU" /><label>Inscripciones: alumnos de nuevo ingreso TSU</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r04" name="radiocat" data-clase="inscripcionesAlumnosNuevoIngresoLIC"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/inscripcionesAlumnosNuevoIngresoLIC.png" width="28" height="24" alt="Inscripciones alumnos de nuevo ingreso LIC" /><label>Inscripciones alumnos de nuevo ingreso LIC</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r05" name="radiocat" data-clase="reinscripcionesContinuidadInmediata"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/reinscripcionesContinuidadInmediata.png" width="28" height="23" alt="Reinscripciones: continuidad inmediata" /><label>Reinscripciones: continuidad inmediata</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r06" name="radiocat" data-clase="limiteDeBajasTemporales"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/limiteDeBajasTemporales.png" width="28" height="28" alt="Límite de bajas temporales" /><label>Límite de bajas temporales</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r07" name="radiocat" data-clase="inicioDeCapturaDeCargasAcademicasNuevoIngresoTSU"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/inicioDeCapturaDeCargasAcademicasNuevoIngresoTSU.png" width="26" height="20" alt="Inicio de captura de cargar académicas. Nuevo ingreso TSU" /><label>Inicio de captura de cargar académicas. Nuevo ingreso TSU</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r08" name="radiocat" data-clase="inicioDeCapturaDeCargasAcademicasNuevoIngresoLIC"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/inicioDeCapturaDeCargasAcademicasNuevoIngresoLIC.png" width="26" height="20" alt="Inicio de captura de cargar académicas. Nuevo ingreso LIC" /><label>Inicio de captura de cargar académicas. Nuevo ingreso LIC</label><br> 
                    </div>
                    <div id="format2">                         
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r09" name="radiocat" data-clase="pagoDeColegiaturasYReinscripcionesEnLinea"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/pagoDeColegiaturasYReinscripcionesEnLinea.png" width="26" height="22" alt="Límite de captura del proyecto final" /><label>Pago de colegiaturas y reincripciones en línea (semana intercuatrimestral)</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r10" name="radiocat" data-clase="limiteDeCaptutaDeEvaluaciones"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/limiteDeCaptutaDeEvaluaciones.png" width="26" height="25" alt="Límite de captura de evaluaciones" /><label>Límite de captura de evaluaciones</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r11" name="radiocat" data-clase="limiteCapturaDelProyectoFinal"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/limiteCapturaDelProyectoFinal.png" width="26" height="23" alt="Límite de captura del proyecto final" /><label>Límite de captura del proyecto final</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r12" name="radiocat" data-clase="limiteRecepcionActasFinalesIncluyendoEstadia"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/limiteRecepcionActasFinalesIncluyendoEstadia.png" width="26" height="25" alt="Límite de recepción de actas finales incluyendo estadía" /><label>Límite de recepción de actas finales incluyendo estadía</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r13" name="radiocat" data-clase="limiteDeEntregaDeSolicitudesDeReingresosDivisionesAcademicas"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/limiteDeEntregaDeSolicitudesDeReingresosDivisionesAcademicas.png" width="26" height="28" alt="Límite de entrega de solicitudes de reingresos en las divisiones académicas" /><label>Límite de entrega de solicitudes de reingresos en las divisiones académicas</label><br>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r14" name="radiocat" data-clase="limiteDeRecepcionDeSolicitudesDeReingresosControlEscolar"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/limiteDeRecepcionDeSolicitudesDeReingresosControlEscolar.png" width="30" height="20" alt="Límite de recepción de solicitudes de reingresos en control escolar" /><label>Límite de recepción de solicitudes de reingresos en control escolar</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r15" name="radiocat" data-clase="limiteEntregaDeHorarios"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/limiteEntregaDeHorarios.png" width="30" height="28" alt="Límite de entrega de horarios" /><label>Límite de entrega de horarios</label><br>
                    </div>
                    <div id="format3">  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r16" name="radiocat" data-clase="inicioDeCapturaDeCargasAcademicas"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/inicioDeCapturaDeCargasAcademicas.png" width="30" height="23" alt="Inicio de captura de cargar académicas. Reincripciones TSU y LIC" /><label>Inicio de captura de cargar académicas. Reincripciones TSU y LIC</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r17" name="radiocat" data-clase="ceremoniaDeGraduacion"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/ceremoniaDeGraduacion.png" width="30" height="25" alt="Ceremonia de graduación" /><label>Ceremonia de graduación</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r18" name="radiocat" data-clase="limiteTramitesTitulacion"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/limiteTramitesTitulacion.png" width="30" height="24" alt="Límite de trámites de titulación" /><label>Límite de trámites de titulación</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r19" name="radiocat" data-clase="diasNoLaborables"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/diasNoLaborables.png" width="30" height="30" alt="Días no laborables: docentes y administrativos" /><label>Días no laborables: docentes y administrativos</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r20" name="radiocat" data-clase="vacaciones"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/vacaciones.png" width="30" height="25" alt="Vacaciones" /><label>Vacaciones</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r21" name="radiocat" data-clase="diaDelSindicato"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/diaDelSindicato.png" width="30" height="28" alt="Día del Sindicato" /><label>Día del Sindicato</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r22" name="radiocat" data-clase="diaDelTSU"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/diaDelTSU.png" width="30" height="28" alt="Día del TSU" /><label>Día del TSU</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r23" name="radiocat" data-clase="aniversarioUTTAB"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/aniversarioUTTAB.png" width="30" height="28" alt="Aniversario de la UTTAB" /><label>Aniversario de la UTTAB</label><br>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r24" name="radiocat" data-clase="diasNoLaborablesMadresTrabajadoras"><img src="${pageContext.request.contextPath}/img/servicios/calendarioEscolar/calendario_escolar_2016_2017/diasNoLaborablesMadresTrabajadoras.png" width="30" height="28" alt="Día no laborable únicamente para las madres trabajadores" /><label>Día no laborable únicamente para las madres trabajadores</label><br>  
                    </div>
                </form>
                <div style="clear: both"></div> 
            </div>
            <div id="datepicker_otras_fechas">        
                <div id="fecha1">
                    <p>Captura de calificaciones del 4to. parcial de la estadía</p><br/>
                    <ul>
                        <li>09-14 diciembre 2016</li>
                        <li>07-26 abril 2016</li>
                        <li>21-29 agosto 2017</li>
                        <li>08-13 diciembre 2017</li>
                    </ul><br/>
                    <p>Análisis y compactación de grupos. Reinscripciones TSU y LIC</p><br/>
                    <ul>
                        <li>07-11 noviembre 2016</li>
                        <li>06-10 marzo 2017</li>
                        <li>10-14 julio 2017</li>
                    </ul>
                </div>
                <div id="fecha2">
                    <p>Recuperación ordinaria para competencias (todas las materias exepto estadía)</p><br/>
                    <ul>
                        <li>12-13 diciembre 2016</li>
                        <li>27-28 abril 2017</li>
                        <li>24-25 agosto 2017</li>
                        <li>07-08 diciembre 2017</li>
                    </ul><br/>
                    <p>Grupos autorizados. Nuevo ingreso TSU</p><br/>
                    <ul>
                        <li>05 diciembre 2016</li>
                        <li>21 marzo 2017</li>
                        <li>31 julio 2017</li>
                    </ul>
                </div>
                <div id="fecha3">
                    <p>Grupos autorizados. Nuevo ingreso LIC</p><br/>
                    <ul>
                        <li>05 diciembre 2016</li>
                        <li>03 abril 2017</li>
                        <li>07 agosto 2017</li>
                    </ul>
                </div>
                <div class="corte"></div>
            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <%if (!(request.getParameter("d") != null)) {%>
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
        <%} else {%>
        <script src="${pageContext.request.contextPath}/js/JQuery/jquery-1.11.3.min.js"></script>
        <%}%>
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/servicios/arreglos_calendario_escolar_2016_2017.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/servicios/calendario_escolar_2016_2017.min.js"></script>
    </body>
</html>
