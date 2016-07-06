var arreglo_categorias=[];

$(document).ready(function() {
  
arreglo_categorias=['inicio_curso','fin_curso','limite_bajas_temporales','inscripciones_alumnos_nuevo_ingreso_TSU','inscripciones_alumnos_nuevo_ingreso_LIC','inicio_clases_nuevo_ingreso_TSU','pago_colegiaturas_reinscripciones_en_linea','dia_del_TSU','dia_del_sindicato','ceremonia_graduacion','LimiteCapturaCalificacionesEstadia','LimiteEntregaSolicitudesReingresoDivisionesAcademicas','LimiteRecepcionSolicitudesReingresoControlEscolar','Vacaciones','DiasNoLaborables','LimiteTramiteTitulacion','LimiteCapturaEvaluaciones','ImpresionEntregaActasFinales','LimiteEntregaHorarios'];
repintar('escolarizado');
    
});

function repintar(e){

$(function(){
if(e=="escolarizado")
{

$('#datepicker').datepicker({
    numberOfMonths:[5,3],
    monthNames:["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"],
    dayNamesMin:["Do","Lu","Ma","Mi","Ju","Vi","Sa"],
    dateFormat:"dd/mm/yy",
    minDate:new Date(2013,8,1),
    maxDate:new Date(2014,9,0),
    beforeShowDay: Sept13Sept14
});
$("#datepicker").datepicker("setDate","01/01/2013");

}

//pinta_cotas_calendario();
$(".ui-datepicker-next,.ui-datepicker-prev").remove();
$(".ui-datepicker-calendar td a").click(function(e){e.stopPropagation();});

});
}

function repinta_todo(tipocal,obj)
{
    if(obj.is(':checked'))
    {  $('input[name="radiocat"]').each( function() { $(this).prop('checked', true); });
       //alert($('input[name="radiocat"]').length); 
       arreglo_categorias=['inicio_curso','fin_curso','limite_bajas_temporales','inscripciones_alumnos_nuevo_ingreso_TSU','inscripciones_alumnos_nuevo_ingreso_LIC','inicio_clases_nuevo_ingreso_TSU','pago_colegiaturas_reinscripciones_en_linea','dia_del_TSU','dia_del_sindicato','ceremonia_graduacion','LimiteCapturaCalificacionesEstadia','LimiteEntregaSolicitudesReingresoDivisionesAcademicas','LimiteRecepcionSolicitudesReingresoControlEscolar','Vacaciones','DiasNoLaborables','LimiteTramiteTitulacion','LimiteCapturaEvaluaciones','ImpresionEntregaActasFinales','LimiteEntregaHorarios'];
    }
    else
    {  $('input[name="radiocat"]').each( function() { $(this).prop('checked', false); });
       //alert($('input[name="radiocat"]').length);
        arreglo_categorias=[];
    }

    repintar(tipocal);
}

function repinta_calendarios(e)
{
var t=[];
var n=0;
$('[name="radiocat"]').each(function(){n++;if($(this).is(":checked")){t.push($(this).attr("data-clase"));}});
arreglo_categorias=t;
repintar(e);
}

function pinta_cotas_calendario(){
$(".limite_bajas_temporales").removeClass("limite_bajas_temporales").find("a").addClass("limite_bajas_temporales ui-corner-all");
$(".inscripciones_alumnos_nuevo_ingreso_TSU").removeClass("inscripciones_alumnos_nuevo_ingreso_TSU").find("a").addClass("inscripciones_alumnos_nuevo_ingreso_TSU ui-corner-all");
$(".inscripciones_alumnos_nuevo_ingreso_LIC").removeClass("inscripciones_alumnos_nuevo_ingreso_LIC").find("a").addClass("inscripciones_alumnos_nuevo_ingreso_LIC ui-corner-all");
$(".inicio_clases_nuevo_ingreso_TSU").removeClass("inicio_clases_nuevo_ingreso_TSU").find("a").addClass("inicio_clases_nuevo_ingreso_TSU ui-corner-all");
$(".pago_colegiaturas_reinscripciones_en_linea").removeClass("pago_colegiaturas_reinscripciones_en_linea").find("a").addClass("pago_colegiaturas_reinscripciones_en_linea ui-corner-all");
$(".dia_del_TSU").removeClass("dia_del_TSU").find("a").addClass("dia_del_TSU ui-corner-all");
$(".dia_del_sindicato").removeClass("dia_del_sindicato").find("a").addClass("dia_del_sindicato ui-corner-all");
$(".ceremonia_graduacion").removeClass("ceremonia_graduacion").find("a").addClass("ceremonia_graduacion ui-corner-all");
$(".LimiteCapturaCalificacionesEstadia").removeClass("LimiteCapturaCalificacionesEstadia").find("a").addClass("LimiteCapturaCalificacionesEstadia ui-corner-all");
$(".LimiteEntregaSolicitudesReingresoDivisionesAcademicas").removeClass("LimiteEntregaSolicitudesReingresoDivisionesAcademicas").find("a").addClass("LimiteEntregaSolicitudesReingresoDivisionesAcademicas ui-corner-all");
$(".LimiteRecepcionSolicitudesReingresoControlEscolar").removeClass("LimiteRecepcionSolicitudesReingresoControlEscolar").find("a").addClass("LimiteRecepcionSolicitudesReingresoControlEscolar ui-corner-all");
$(".Vacaciones").removeClass("Vacaciones").find("a").addClass("Vacaciones ui-corner-all");
$(".DiasNoLaborables").removeClass("DiasNoLaborables").find("a").addClass("DiasNoLaborables ui-corner-all");
$(".LimiteTramiteTitulacion").removeClass("LimiteTramiteTitulacion").find("a").addClass("LimiteTramiteTitulacion ui-corner-all");
$(".LimiteCapturaEvaluaciones").removeClass("LimiteCapturaEvaluaciones").find("a").addClass("LimiteCapturaEvaluaciones ui-corner-all");
$(".ImpresionEntregaActasFinales").removeClass("ImpresionEntregaActasFinales").find("a").addClass("ImpresionEntregaActasFinales ui-corner-all");
$(".LimiteEntregaHorarios").removeClass("LimiteEntregaHorarios").find("a").addClass("LimiteEntregaHorarios ui-corner-all");
$(".PagoColegiaturasReinscripcionesEnLinea_LimiteRecepcionSolicitudesReingresoControlEscolar").removeClass("PagoColegiaturasReinscripcionesEnLinea_LimiteRecepcionSolicitudesReingresoControlEscolar").find("a").addClass("PagoColegiaturasReinscripcionesEnLinea_LimiteRecepcionSolicitudesReingresoControlEscolar ui-corner-all");
$(".inicio_curso").find("a").remove();
$(".fin_curso").find("a").remove();
$("a").removeClass("ui-state-active");}

function Sept13Sept14(e){
var a = Sept13Sept14InicioCursos;
var b = Sept13Sept14FinCursos;
var c = Sept13Sept14LimitesBajasTemporales;
var d = Sept13Sept14InscripcionesAlumnosNuevoIngresoTSU;
var f = Sept13Sept14InscripcionesAlumnosNuevoIngresoLIC;
var g = Sept13Sept14InicioClasesNuevoIngresoTSU;
var h = Sept13Sept14PagoColegiaturasReinscripcionesEnLinea;
var i = Sept13Sept14DiaDelTSU;
var j = Sept13Sept14DiaDelSindicato;
var k = Sept13Sept14CeremoniaGraduacion;
var l = Sept13Sept14LimiteCapturaCalificacionesEstadia;
var m = Sept13Sept14LimiteEntregaSolicitudesReingresoDivisionesAcademicas;
var n = Sept13Sept14LimiteRecepcionSolicitudesReingresoControlEscolar;
var o = Sept13Sept14Vacaciones;
var p = Sept13Sept14DiasNoLaborables;
var q = Sept13Sept14LimiteTramiteTitulacion;
var r = Sept13Sept14LimiteCapturaEvaluaciones;
var s = Sept13Sept14ImpresionEntregaActasFinales;
var t = Sept13Sept14LimiteEntregaHorarios;

if($.inArray("inicio_curso",arreglo_categorias)!=-1){for(var x=0;x<a.length;x++){if((new Date(a[x])).toString()==e.toString()){return[true,"inicio_curso"];}}}
if($.inArray("fin_curso",arreglo_categorias)!=-1){for(var x=0;x<b.length;x++){if((new Date(b[x])).toString()==e.toString()){return[true,"fin_curso"];}}}
if($.inArray("limite_bajas_temporales",arreglo_categorias)!=-1){for(var x=0;x<c.length;x++){if((new Date(c[x])).toString()==e.toString()){return[true,"limite_bajas_temporales"];}}}
if($.inArray("inscripciones_alumnos_nuevo_ingreso_TSU",arreglo_categorias)!=-1){for(var x=0;x<d.length;x++){if((new Date(d[x])).toString()==e.toString()){return[true,"inscripciones_alumnos_nuevo_ingreso_TSU"];}}}
if($.inArray("inscripciones_alumnos_nuevo_ingreso_LIC",arreglo_categorias)!=-1){for(var x=0;x<f.length;x++){if((new Date(f[x])).toString()==e.toString()){return[true,"inscripciones_alumnos_nuevo_ingreso_LIC"];}}}
if($.inArray("inicio_clases_nuevo_ingreso_TSU",arreglo_categorias)!=-1){for(var x=0;x<g.length;x++){if((new Date(g[x])).toString()==e.toString()){return[true,"inicio_clases_nuevo_ingreso_TSU"];}}}
if($.inArray("pago_colegiaturas_reinscripciones_en_linea",arreglo_categorias)!=-1){for(var x=0;x<h.length;x++){if((new Date(h[x])).toString()==e.toString()){return[true,"pago_colegiaturas_reinscripciones_en_linea"];}}}
if($.inArray("dia_del_TSU",arreglo_categorias)!=-1){for(var x=0;x<i.length;x++){if((new Date(i[x])).toString()==e.toString()){return[true,"dia_del_TSU"];}}}
if($.inArray("dia_del_sindicato",arreglo_categorias)!=-1){for(var x=0;x<j.length;x++){if((new Date(j[x])).toString()==e.toString()){return[true,"dia_del_sindicato"];}}}
if($.inArray("ceremonia_graduacion",arreglo_categorias)!=-1){for(var x=0;x<k.length;x++){if((new Date(k[x])).toString()==e.toString()){return[true,"ceremonia_graduacion"];}}}
if($.inArray("LimiteCapturaCalificacionesEstadia",arreglo_categorias)!=-1){for(var x=0;x<l.length;x++){if((new Date(l[x])).toString()==e.toString()){return[true,"LimiteCapturaCalificacionesEstadia"];}}}
if($.inArray("LimiteEntregaSolicitudesReingresoDivisionesAcademicas",arreglo_categorias)!=-1){for(var x=0;x<m.length;x++){if((new Date(m[x])).toString()==e.toString()){return[true,"LimiteEntregaSolicitudesReingresoDivisionesAcademicas"];}}}
if($.inArray("LimiteRecepcionSolicitudesReingresoControlEscolar",arreglo_categorias)!=-1){for(var x=0;x<n.length;x++){if((new Date(n[x])).toString()==e.toString()){return[true,"LimiteRecepcionSolicitudesReingresoControlEscolar"];}}}
if($.inArray("Vacaciones",arreglo_categorias)!=-1){for(var x=0;x<o.length;x++){if((new Date(o[x])).toString()==e.toString()){return[true,"Vacaciones"];}}}
if($.inArray("DiasNoLaborables",arreglo_categorias)!=-1){for(var x=0;x<p.length;x++){if((new Date(p[x])).toString()==e.toString()){return[true,"DiasNoLaborables"];}}}
if($.inArray("LimiteTramiteTitulacion",arreglo_categorias)!=-1){for(var x=0;x<q.length;x++){if((new Date(q[x])).toString()==e.toString()){return[true,"LimiteTramiteTitulacion"];}}}
if($.inArray("LimiteCapturaEvaluaciones",arreglo_categorias)!=-1){for(var x=0;x<r.length;x++){if((new Date(r[x])).toString()==e.toString()){return[true,"LimiteCapturaEvaluaciones"];}}}
if($.inArray("ImpresionEntregaActasFinales",arreglo_categorias)!=-1){for(var x=0;x<s.length;x++){if((new Date(s[x])).toString()==e.toString()){return[true,"ImpresionEntregaActasFinales"];}}}
if($.inArray("LimiteEntregaHorarios",arreglo_categorias)!=-1){for(var x=0;x<t.length;x++){if((new Date(t[x])).toString()==e.toString()){return[true,"LimiteEntregaHorarios"];}}}
return[true,""];
}
