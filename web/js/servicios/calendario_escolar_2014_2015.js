var arreglo_categorias = [];

$(document).ready(function() {

    arreglo_categorias = ['inicioDeCurso', 'finDeCurso', 'limiteDeBajasTemporales', 'inscripcionesAlumnosDeNuevoIngresoTSU', 'inscripcionesAlumnosDeNuevoIngresoLIC', 'inicioDeClasesNuevoIngresoTSU', 'pagoDeColegiaturasyReinscripcionesEnLinea', 'diaDelTSU', 'diaDelSindicato', 'ceremoniaDeGraduacion', 'limiteDeCapturaDeCalificacionesDeEstadia', 'limiteDeEntregaDeSolicitudesDeReingresosEnLasDivisionesAcademicas', 'limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar', 'vacaciones', 'diasNoLaborables', 'limiteDeTramitesDeTitulacion', 'limiteDeCapturaDeEvaluaciones', 'limiteDeCapturaDelProyectoFinal', 'limiteDeRecepcionDeActasFinales', 'limiteDeEntregaDeHorarios', 'aniversarioUTTAB'];
    repintar('escolarizado');

});

function repintar(e) {

    $(function() {
        if (e === "escolarizado")
        {

            $('#datepicker').datepicker({
                numberOfMonths: [5, 3],
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
                dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                dateFormat: "dd/mm/yy",
                minDate: new Date(2014, 8, 1),
                maxDate: new Date(2015, 9, 0),
                beforeShowDay: Sept14Sept15
            });
            $("#datepicker").datepicker("setDate", "01/01/2015");

        }

//pinta_cotas_calendario();
        $(".ui-datepicker-next,.ui-datepicker-prev").remove();
        $(".ui-datepicker-calendar td a").click(function(e) {
            e.stopPropagation();
        });

    });
}

function repinta_todo(tipocal, obj)
{
    if (obj.is(':checked'))
    {
        $('input[name="radiocat"]').each(function() {
            $(this).prop('checked', true);
        });
        //alert($('input[name="radiocat"]').length); 
        arreglo_categorias = ['inicioDeCurso', 'finDeCurso', 'limiteDeBajasTemporales', 'inscripcionesAlumnosDeNuevoIngresoTSU', 'inscripcionesAlumnosDeNuevoIngresoLIC', 'inicioDeClasesNuevoIngresoTSU', 'pagoDeColegiaturasyReinscripcionesEnLinea', 'diaDelTSU', 'diaDelSindicato', 'ceremoniaDeGraduacion', 'limiteDeCapturaDeCalificacionesDeEstadia', 'limiteDeEntregaDeSolicitudesDeReingresosEnLasDivisionesAcademicas', 'limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar', 'vacaciones', 'diasNoLaborables', 'limiteDeTramitesDeTitulacion', 'limiteDeCapturaDeEvaluaciones', 'limiteDeCapturaDelProyectoFinal', 'limiteDeRecepcionDeActasFinales', 'limiteDeEntregaDeHorarios', 'aniversarioUTTAB'];
    }
    else
    {
        $('input[name="radiocat"]').each(function() {
            $(this).prop('checked', false);
        });
        //alert($('input[name="radiocat"]').length);
        arreglo_categorias = [];
    }

    repintar(tipocal);
}

function repinta_calendarios(e)
{
    var t = [];
    var n = 0;
    $('[name="radiocat"]').each(function() {
        n++;
        if ($(this).is(":checked")) {
            t.push($(this).attr("data-clase"));
        }
    });
    arreglo_categorias = t;
    repintar(e);
}

function pinta_cotas_calendario() {
    $(".inicioDeCurso").removeClass("inicioDeCurso").find("a").addClass("inicioDeCurso ui-corner-all");
    $(".finDeCurso").removeClass("finDeCurso").find("a").addClass("finDeCurso ui-corner-all");
    $(".limiteDeBajasTemporales").removeClass("limiteDeBajasTemporales").find("a").addClass("limiteDeBajasTemporales ui-corner-all");
    $(".inscripcionesAlumnosDeNuevoIngresoTSU").removeClass("inscripcionesAlumnosDeNuevoIngresoTSU").find("a").addClass("inscripcionesAlumnosDeNuevoIngresoTSU ui-corner-all");
    $(".inscripcionesAlumnosDeNuevoIngresoLIC").removeClass("inscripcionesAlumnosDeNuevoIngresoLIC").find("a").addClass("inscripcionesAlumnosDeNuevoIngresoLIC ui-corner-all");
    $(".inicioDeClasesNuevoIngresoTSU").removeClass("inicioDeClasesNuevoIngresoTSU").find("a").addClass("inicioDeClasesNuevoIngresoTSU ui-corner-all");
    $(".pagoDeColegiaturasyReinscripcionesEnLinea").removeClass("pagoDeColegiaturasyReinscripcionesEnLinea").find("a").addClass("pagoDeColegiaturasyReinscripcionesEnLinea ui-corner-all");
    $(".diaDelTSU").removeClass("diaDelTSU").find("a").addClass("diaDelTSU ui-corner-all");
    $(".diaDelSindicato").removeClass("diaDelSindicato").find("a").addClass("diaDelSindicato ui-corner-all");
    $(".ceremoniaDeGraduacion").removeClass("ceremoniaDeGraduacion").find("a").addClass("ceremoniaDeGraduacion ui-corner-all");
    $(".limiteDeCapturaDeCalificacionesDeEstadia").removeClass("limiteDeCapturaDeCalificacionesDeEstadia").find("a").addClass("limiteDeCapturaDeCalificacionesDeEstadia ui-corner-all");
    $(".limiteDeEntregaDeSolicitudesDeReingresosEnLasDivisionesAcademicas").removeClass("limiteDeEntregaDeSolicitudesDeReingresosEnLasDivisionesAcademicas").find("a").addClass("limiteDeEntregaDeSolicitudesDeReingresosEnLasDivisionesAcademicas ui-corner-all");
    $(".limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar").removeClass("limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar").find("a").addClass("limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar ui-corner-all");
    $(".vacaciones").removeClass("vacaciones").find("a").addClass("vacaciones ui-corner-all");
    $(".diasNoLaborables").removeClass("diasNoLaborables").find("a").addClass("diasNoLaborables ui-corner-all");
    $(".limiteDeTramitesDeTitulacion").removeClass("limiteDeTramitesDeTitulacion").find("a").addClass("limiteDeTramitesDeTitulacion ui-corner-all");
    $(".limiteDeCapturaDeEvaluaciones").removeClass("limiteDeCapturaDeEvaluaciones").find("a").addClass("limiteDeCapturaDeEvaluaciones ui-corner-all");
    $(".limiteDeCapturaDelProyectoFinal").removeClass("limiteDeCapturaDelProyectoFinal").find("a").addClass("limiteDeCapturaDelProyectoFinal ui-corner-all");
    $(".limiteDeRecepcionDeActasFinales").removeClass("limiteDeRecepcionDeActasFinales").find("a").addClass("limiteDeRecepcionDeActasFinales ui-corner-all");
    $(".limiteDeEntregaDeHorarios").removeClass("limiteDeEntregaDeHorarios").find("a").addClass("limiteDeEntregaDeHorarios ui-corner-all");
    $(".aniversarioUTTAB").removeClass("aniversarioUTTAB").find("a").addClass("aniversarioUTTAB ui-corner-all");
    $("a").removeClass("ui-state-active");
}

function Sept14Sept15(e) {
    var a = inicioDeCurso;
    var b = finDeCurso;
    var c = limiteDeBajasTemporales;
    var d = inscripcionesAlumnosDeNuevoIngresoTSU;
    var f = inscripcionesAlumnosDeNuevoIngresoLIC;
    var g = inicioDeClasesNuevoIngresoTSU;
    var h = pagoDeColegiaturasyReinscripcionesEnLinea;
    var i = diaDelTSU;
    var j = diaDelSindicato;
    var k = ceremoniaDeGraduacion;
    var l = limiteDeCapturaDeCalificacionesDeEstadia;
    var m = limiteDeEntregaDeSolicitudesDeReingresosEnLasDivisionesAcademicas;
    var n = limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar;
    var o = vacaciones;
    var p = diasNoLaborables;
    var q = limiteDeTramitesDeTitulacion;
    var r = limiteDeCapturaDeEvaluaciones;
    var s = limiteDeCapturaDelProyectoFinal;
    var t = limiteDeRecepcionDeActasFinales;
    var u = limiteDeEntregaDeHorarios;
    var v = aniversarioUTTAB;

    if ($.inArray("inicioDeCurso", arreglo_categorias) != -1) {
        for (var x = 0; x < a.length; x++) {
            if ((new Date(a[x])).toString() == e.toString()) {
                return[true, "inicioDeCurso"];
            }
        }
    }

    if ($.inArray("finDeCurso", arreglo_categorias) != -1) {
        for (var x = 0; x < b.length; x++) {
            if ((new Date(b[x])).toString() == e.toString()) {
                return[true, "finDeCurso"];
            }
        }
    }

    if ($.inArray("limiteDeBajasTemporales", arreglo_categorias) != -1) {
        for (var x = 0; x < c.length; x++) {
            if ((new Date(c[x])).toString() == e.toString()) {
                return[true, "limiteDeBajasTemporales"];
            }
        }
    }

    if ($.inArray("inscripcionesAlumnosDeNuevoIngresoTSU", arreglo_categorias) !== -1) {
        for (var x = 0; x < d.length; x++) {
            if ((new Date(d[x])).toString() === e.toString()) {
                return[true, "inscripcionesAlumnosDeNuevoIngresoTSU"];
            }
        }
    }

    if ($.inArray("inscripcionesAlumnosDeNuevoIngresoLIC", arreglo_categorias) != -1) {
        for (var x = 0; x < f.length; x++) {
            if ((new Date(f[x])).toString() == e.toString()) {
                return[true, "inscripcionesAlumnosDeNuevoIngresoLIC"];
            }
        }
    }

    if ($.inArray("inicioDeClasesNuevoIngresoTSU", arreglo_categorias) != -1) {
        for (var x = 0; x < g.length; x++) {
            if ((new Date(g[x])).toString() == e.toString()) {
                return[true, "inicioDeClasesNuevoIngresoTSU"];
            }
        }
    }

    if ($.inArray("pagoDeColegiaturasyReinscripcionesEnLinea", arreglo_categorias) != -1) {
        for (var x = 0; x < h.length; x++) {
            if ((new Date(h[x])).toString() == e.toString()) {
                return[true, "pagoDeColegiaturasyReinscripcionesEnLinea"];
            }
        }
    }

    if ($.inArray("diaDelTSU", arreglo_categorias) != -1) {
        for (var x = 0; x < i.length; x++) {
            if ((new Date(i[x])).toString() == e.toString()) {
                return[true, "diaDelTSU"];
            }
        }
    }

    if ($.inArray("diaDelSindicato", arreglo_categorias) != -1) {
        for (var x = 0; x < j.length; x++) {
            if ((new Date(j[x])).toString() == e.toString()) {
                return[true, "diaDelSindicato"];
            }
        }
    }

    if ($.inArray("ceremoniaDeGraduacion", arreglo_categorias) != -1) {
        for (var x = 0; x < k.length; x++) {
            if ((new Date(k[x])).toString() == e.toString()) {
                return[true, "ceremoniaDeGraduacion"];
            }
        }
    }

    if ($.inArray("limiteDeCapturaDeCalificacionesDeEstadia", arreglo_categorias) != -1) {
        for (var x = 0; x < l.length; x++) {
            if ((new Date(l[x])).toString() == e.toString()) {
                return[true, "limiteDeCapturaDeCalificacionesDeEstadia"];
            }
        }
    }

    if ($.inArray("limiteDeEntregaDeSolicitudesDeReingresosEnLasDivisionesAcademicas", arreglo_categorias) != -1) {
        for (var x = 0; x < m.length; x++) {
            if ((new Date(m[x])).toString() == e.toString()) {
                return[true, "limiteDeEntregaDeSolicitudesDeReingresosEnLasDivisionesAcademicas"];
            }
        }
    }

    if ($.inArray("limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar", arreglo_categorias) != -1) {
        for (var x = 0; x < n.length; x++) {
            if ((new Date(n[x])).toString() == e.toString()) {
                return[true, "limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar"];
            }
        }
    }

    if ($.inArray("vacaciones", arreglo_categorias) != -1) {
        for (var x = 0; x < o.length; x++) {
            if ((new Date(o[x])).toString() == e.toString()) {
                return[true, "vacaciones"];
            }
        }
    }

    if ($.inArray("diasNoLaborables", arreglo_categorias) != -1) {
        for (var x = 0; x < p.length; x++) {
            if ((new Date(p[x])).toString() == e.toString()) {
                return[true, "diasNoLaborables"];
            }
        }
    }

    if ($.inArray("limiteDeTramitesDeTitulacion", arreglo_categorias) != -1) {
        for (var x = 0; x < q.length; x++) {
            if ((new Date(q[x])).toString() == e.toString()) {
                return[true, "limiteDeTramitesDeTitulacion"];
            }
        }
    }

    if ($.inArray("limiteDeCapturaDeEvaluaciones", arreglo_categorias) != -1) {
        for (var x = 0; x < r.length; x++) {
            if ((new Date(r[x])).toString() == e.toString()) {
                return[true, "limiteDeCapturaDeEvaluaciones"];
            }
        }
    }

    if ($.inArray("limiteDeCapturaDelProyectoFinal", arreglo_categorias) !== -1) {
        for (var x = 0; x < s.length; x++) {
            if ((new Date(s[x])).toString() === e.toString()) {
                return[true, "limiteDeCapturaDelProyectoFinal"];
            }
        }
    }

    if ($.inArray("limiteDeRecepcionDeActasFinales", arreglo_categorias) !== -1) {
        for (var x = 0; x < t.length; x++) {
            if ((new Date(t[x])).toString() === e.toString()) {
                return[true, "limiteDeRecepcionDeActasFinales"];
            }
        }
    }

    if ($.inArray("limiteDeEntregaDeHorarios", arreglo_categorias) !== -1) {
        for (var x = 0; x < u.length; x++) {
            if ((new Date(u[x])).toString() === e.toString()) {
                return[true, "limiteDeEntregaDeHorarios"];
            }
        }
    }

    if ($.inArray("aniversarioUTTAB", arreglo_categorias) !== -1) {
        for (var x = 0; x < v.length; x++) {
            if ((new Date(v[x])).toString() === e.toString()) {
                return[true, "aniversarioUTTAB"];
            }
        }
    }

    return[true, ""];
}
