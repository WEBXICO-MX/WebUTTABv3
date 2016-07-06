<%-- 
    Document   : calendario_escolar_2014_2015
    Created on : 26/09/2014, 08:57:11 AM
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<!--<html lang="es" manifest="cache.appcache">-->
<html lang="es">
    <head>
        <title>UTTAB &#124; Calendario Escolar 2014-2015</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Calendario Escolar">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="css/servicios.min.css"/>
        <link rel="stylesheet" href="css/servicios/calendario_escolar_2014_2015.min.css"/>
        <link rel="stylesheet" href="js/JQuery/plugins/jquery-ui-1.10.4.custom/css/smoothness/jquery-ui-1.10.4.custom.min.css"/>
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
            <div id="datepicker_titulo">Calendario Escolar 2014 - 2015</div>
            <div id="datepicker"></div>
            <div id="datepicker_iconos">
                <form>
                    <div id="format1">
                        <input type="checkbox" checked="checked" onclick="repinta_todo('escolarizado', $(this));" id="r00" name="radioscat">&nbsp;&nbsp;<label style=" font-weight: bold;">MOSTRAR TODO</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r01" name="radiocat" data-clase="inicioDeCurso">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/inicioDeCurso.jpg" width="17" height="16" alt="Inicio de curso" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Inicio de curso</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r02" name="radiocat" data-clase="finDeCurso">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/finDeCurso.jpg" width="17" height="16" alt="Fin de curso" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Fin de curso</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r03" name="radiocat" data-clase="limiteDeBajasTemporales">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/limiteDeBajasTemporales.jpg" width="17" height="16" alt="Límite de bajas temporales" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de bajas temporales</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r04" name="radiocat" data-clase="inscripcionesAlumnosDeNuevoIngresoTSU">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/inscripcionesAlumnosDeNuevoIngresoTSU.jpg" width="17" height="16" alt="Inscripciones alumnos de nuevo ingreso TSU" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Inscripciones alumnos de nuevo ingreso TSU</label><br/><br/>
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r05" name="radiocat" data-clase="inscripcionesAlumnosDeNuevoIngresoLIC">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/inscripcionesAlumnosDeNuevoIngresoLIC.jpg" width="17" height="16" alt="Inscripciones alumnos de nuevo ingreso LIC" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Inscripciones alumnos de nuevo ingreso LIC</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r06" name="radiocat" data-clase="inicioDeClasesNuevoIngresoTSU">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/inicioDeClasesNuevoIngresoTSU.png" width="17" height="16" alt="Inicio de clases nuevo ingreso TSU" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Inicio de clases nuevo ingreso TSU</label><br/><br/>  
                    </div>
                    <div id="format2">
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r07" name="radiocat" data-clase="pagoDeColegiaturasyReinscripcionesEnLinea">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/pagoDeColegiaturasyReinscripcionesEnLinea.jpg" width="17" height="16" alt="Pago de colegiaturas y reinscripciones en línea (Semana intercuatrimestral)" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Pago de colegiaturas y reinscripciones en línea (Semana intercuatrimestral)</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r08" name="radiocat" data-clase="diaDelTSU">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/diaDelTSU.jpg" width="17" height="16" alt="Día del TSU" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Día del TSU</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r09" name="radiocat" data-clase="diaDelSindicato">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/diaDelSindicato.jpg" width="17" height="16" alt="Día del Sindicato" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Día del Sindicato</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r10" name="radiocat" data-clase="ceremoniaDeGraduacion">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/ceremoniaDeGraduacion.jpg" width="17" height="16" alt="Ceremonia de graduación" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Ceremonia de graduación</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r11" name="radiocat" data-clase="limiteDeCapturaDeCalificacionesDeEstadia">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/limiteDeCapturaDeCalificacionesDeEstadia.jpg" width="17" height="16" alt="Límite de captura de calificaciones de estadía" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de captura de calificaciones de estadía</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r12" name="radiocat" data-clase="limiteDeEntregaDeSolicitudesDeReingresosEnLasDivisionesAcademicas">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/limiteDeEntregaDeSolicitudesDeReingresosEnLasDivisionesAcademicas.jpg" width="17" height="16" alt="Límite de entrega de solicitudes de reingresos en las divisiones académicas" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de entrega de solicitudes de reingresos en las divisiones académicas</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r13" name="radiocat" data-clase="limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar.jpg" width="17" height="16" alt="Límite de recepción de solicitudes de reingresos en control escolar" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de recepción de solicitudes de reingresos en control escolar</label><br/><br/>                    </div>
                    <div id="format3">
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r14" name="radiocat" data-clase="vacaciones">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/vacaciones.jpg" width="17" height="16" alt="Vacaciones" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Vacaciones</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r15" name="radiocat" data-clase="diasNoLaborables">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/diasNoLaborables.jpg" width="17" height="16" alt="Días no laborables: Docentes y Administrativos" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Días no laborables: Docentes y Administrativos</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r16" name="radiocat" data-clase="limiteDeTramitesDeTitulacion">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/limiteDeTramitesDeTitulacion.jpg" width="17" height="16" alt="Límite de trámite de titulación" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de trámite de titulación</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r17" name="radiocat" data-clase="limiteDeCapturaDeEvaluaciones">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/limiteDeCapturaDeEvaluaciones.jpg" width="17" height="16" alt="Límite de captura de evaluaciones" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de captura de evaluaciones</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r18" name="radiocat" data-clase="limiteDeCapturaDelProyectoFinal">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/limiteDeCapturaDelProyectoFinal.jpg" width="17" height="16" alt="Límite de captura del proyecto final" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de captura del proyecto final</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r19" name="radiocat" data-clase="limiteDeRecepcionDeActasFinales">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/limiteDeRecepcionDeActasFinales.jpg" width="17" height="16" alt="Límite de recepción de actas finales, incluyendo estadía" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de recepción de actas finales, incluyendo estadía</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r20" name="radiocat" data-clase="limiteDeEntregaDeHorarios">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/limiteDeEntregaDeHorarios.jpg" width="17" height="16" alt="Límite de entrega de horarios" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Límite de entrega de horarios</label><br/><br/>  
                        <input type="checkbox" checked="checked" onclick="repinta_calendarios('escolarizado');" id="r21" name="radiocat" data-clase="aniversarioUTTAB">&nbsp;&nbsp;<img src="img/servicios/calendarioEscolar/calendario_escolar_2014_2015/aniversarioUTTAB.jpg" width="17" height="16" alt="Aniversario de la UTTAB" style="vertical-align: bottom;"/>&nbsp;&nbsp;<label>Aniversario de la UTTAB</label><br/><br/>  
                    </div>
                </form>
            </div>    
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <%if (!(request.getParameter("d") != null)) {%>
        <jsp:include page="../includePie.jsp?origen=servicios" flush="true" />
        <%} else {%>
        <script src="js/JQuery/jquery-1.11.3.min.js"></script>
        <%}%>
        <script src="js/JQuery/plugins/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="js/servicios/arreglos_calendario_escolar_2014_2015.min.js"></script>
        <script src="js/servicios/calendario_escolar_2014_2015.min.js"></script>
    </body>
</html>
