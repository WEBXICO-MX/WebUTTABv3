var arreglo_categorias = [];
$(document).ready(function () {

    arreglo_categorias = ['inicioDeCurso', 'finDeCurso', 'inscripcionesAlumnosNuevoIngresoTSU', 'inscripcionesAlumnosNuevoIngresoLIC', 'reinscripcionesContinuidadInmediata', 'limiteDeBajasTemporales', 'inicioDeCapturaDeCargasAcademicasNuevoIngresoTSU', 'inicioDeCapturaDeCargasAcademicasNuevoIngresoLIC', 'pagoDeColegiaturasYReinscripcionesEnLinea', 'limiteDeCaptutaDeEvaluaciones', 'limiteCapturaDelProyectoFinal', 'limiteRecepcionActasFinalesIncluyendoEstadia', 'limiteDeEntregaDeSolicitudesDeReingresosDivisionesAcademicas', 'limiteDeRecepcionDeSolicitudesDeReingresosControlEscolar', 'limiteEntregaDeHorarios', 'inicioDeCapturaDeCargasAcademicas', 'ceremoniaDeGraduacion', 'limiteTramitesTitulacion', 'diasNoLaborables', 'vacaciones', 'diaDelSindicato', 'diaDelTSU', 'aniversarioUTTAB', 'diasNoLaborablesMadresTrabajadoras'];
    repintar('escolarizado');
});
function repintar(e) {

    $(function () {
        if (e === "escolarizado")
        {

            $('#datepicker').datepicker({
                numberOfMonths: [5, 3],
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
                dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                dateFormat: "dd/mm/yy",
                minDate: new Date(2016, 8, 1),
                maxDate: new Date(2017, 09, 0),
                beforeShowDay: Sept16Sept17
            });
            $("#datepicker").datepicker("setDate", "01/01/2017");
        }

//pinta_cotas_calendario();
        $(".ui-datepicker-next,.ui-datepicker-prev").remove();
        $(".ui-datepicker-calendar td a").click(function (e) {
            e.stopPropagation();
        });
    });
}

function repinta_todo(tipocal, obj)
{
    if (obj.is(':checked'))
    {
        $('input[name="radiocat"]').each(function () {
            $(this).prop('checked', true);
        });
        //alert($('input[name="radiocat"]').length); 
        arreglo_categorias = ['inicioDeCurso', 'finDeCurso', 'inscripcionesAlumnosNuevoIngresoTSU', 'inscripcionesAlumnosNuevoIngresoLIC', 'reinscripcionesContinuidadInmediata', 'limiteDeBajasTemporales', 'inicioDeCapturaDeCargasAcademicasNuevoIngresoTSU', 'inicioDeCapturaDeCargasAcademicasNuevoIngresoLIC', 'pagoDeColegiaturasYReinscripcionesEnLinea', 'limiteDeCaptutaDeEvaluaciones', 'limiteCapturaDelProyectoFinal', 'limiteRecepcionActasFinalesIncluyendoEstadia', 'limiteDeEntregaDeSolicitudesDeReingresosDivisionesAcademicas', 'limiteDeRecepcionDeSolicitudesDeReingresosControlEscolar', 'limiteEntregaDeHorarios', 'inicioDeCapturaDeCargasAcademicas', 'ceremoniaDeGraduacion', 'limiteTramitesTitulacion', 'diasNoLaborables', 'vacaciones', 'diaDelSindicato', 'diaDelTSU', 'aniversarioUTTAB', 'diasNoLaborablesMadresTrabajadoras'];
    } else
    {
        $('input[name="radiocat"]').each(function () {
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
    $('[name="radiocat"]').each(function () {
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
    $(".inscripcionesAlumnosNuevoIngresoTSU").removeClass("inscripcionesAlumnosNuevoIngresoTSU").find("a").addClass("inscripcionesAlumnosNuevoIngresoTSU ui-corner-all");
    $(".inscripcionesAlumnosNuevoIngresoLIC").removeClass("inscripcionesAlumnosNuevoIngresoLIC").find("a").addClass("inscripcionesAlumnosNuevoIngresoLIC ui-corner-all");
    $(".reinscripcionesContinuidadInmediata").removeClass("reinscripcionesContinuidadInmediata").find("a").addClass("reinscripcionesContinuidadInmediata ui-corner-all");
    $(".limiteDeBajasTemporales").removeClass("limiteDeBajasTemporales").find("a").addClass("limiteDeBajasTemporales ui-corner-all");
    $(".inicioDeCapturaDeCargasAcademicasNuevoIngresoTSU").removeClass("inicioDeCapturaDeCargasAcademicasNuevoIngresoTSU").find("a").addClass("inicioDeCapturaDeCargasAcademicasNuevoIngresoTSU ui-corner-all");
    $(".inicioDeCapturaDeCargasAcademicasNuevoIngresoLIC").removeClass("inicioDeCapturaDeCargasAcademicasNuevoIngresoLIC").find("a").addClass("inicioDeCapturaDeCargasAcademicasNuevoIngresoLIC ui-corner-all");
    $(".pagoDeColegiaturasYReinscripcionesEnLinea").removeClass("pagoDeColegiaturasYReinscripcionesEnLinea").find("a").addClass("pagoDeColegiaturasYReinscripcionesEnLinea ui-corner-all");
    $(".limiteDeCaptutaDeEvaluaciones").removeClass("limiteDeCaptutaDeEvaluaciones").find("a").addClass("limiteDeCaptutaDeEvaluaciones ui-corner-all");
    $(".limiteCapturaDelProyectoFinal").removeClass("limiteCapturaDelProyectoFinal").find("a").addClass("limiteCapturaDelProyectoFinal ui-corner-all");
    $(".limiteRecepcionActasFinalesIncluyendoEstadia").removeClass("limiteRecepcionActasFinalesIncluyendoEstadia").find("a").addClass("limiteRecepcionActasFinalesIncluyendoEstadia ui-corner-all");
    $(".limiteDeEntregaDeSolicitudesDeReingresosDivisionesAcademicas").removeClass("limiteDeEntregaDeSolicitudesDeReingresosDivisionesAcademicas").find("a").addClass("limiteDeEntregaDeSolicitudesDeReingresosDivisionesAcademicas ui-corner-all");
    $(".limiteDeRecepcionDeSolicitudesDeReingresosControlEscolar").removeClass("limiteDeRecepcionDeSolicitudesDeReingresosControlEscolar").find("a").addClass("limiteDeRecepcionDeSolicitudesDeReingresosControlEscolar ui-corner-all");
    $(".limiteEntregaDeHorarios").removeClass("limiteEntregaDeHorarios").find("a").addClass("limiteEntregaDeHorarios ui-corner-all");
    $(".inicioDeCapturaDeCargasAcademicas").removeClass("inicioDeCapturaDeCargasAcademicas").find("a").addClass("inicioDeCapturaDeCargasAcademicas ui-corner-all");
    $(".ceremoniaDeGraduacion").removeClass("ceremoniaDeGraduacion").find("a").addClass("ceremoniaDeGraduacion ui-corner-all");
    $(".limiteTramitesTitulacion").removeClass("limiteTramitesTitulacion").find("a").addClass("limiteTramitesTitulacion ui-corner-all");
    $(".diasNoLaborables").removeClass("diasNoLaborables").find("a").addClass("diasNoLaborables ui-corner-all");
    $(".vacaciones").removeClass("vacaciones").find("a").addClass("vacaciones ui-corner-all");
    $(".diaDelSindicato").removeClass("diaDelSindicato").find("a").addClass("diaDelSindicato ui-corner-all");
    $(".diaDelTSU").removeClass("diaDelTSU").find("a").addClass("diaDelTSU ui-corner-all");
    $(".aniversarioUTTAB").removeClass("aniversarioUTTAB").find("a").addClass("aniversarioUTTAB ui-corner-all");
    $(".diasNoLaborablesMadresTrabajadoras").removeClass("diasNoLaborablesMadresTrabajadoras").find("a").addClass("diasNoLaborablesMadresTrabajadoras ui-corner-all");
    $("a").removeClass("ui-state-active");
}

function Sept16Sept17(e) {
    var a = inicioDeCurso;
    var b = finDeCurso;
    var c = inscripcionesAlumnosNuevoIngresoTSU;
    var d = inscripcionesAlumnosNuevoIngresoLIC;
    var f = reinscripcionesContinuidadInmediata;
    var g = limiteDeBajasTemporales;
    var h = inicioDeCapturaDeCargasAcademicasNuevoIngresoTSU;
    var i = inicioDeCapturaDeCargasAcademicasNuevoIngresoLIC;
    var j = pagoDeColegiaturasYReinscripcionesEnLinea;
    var k = limiteDeCaptutaDeEvaluaciones;
    var l = limiteCapturaDelProyectoFinal;
    var m = limiteRecepcionActasFinalesIncluyendoEstadia;
    var n = limiteDeEntregaDeSolicitudesDeReingresosDivisionesAcademicas;
    var o = limiteDeRecepcionDeSolicitudesDeReingresosControlEscolar;
    var p = limiteEntregaDeHorarios;
    var q = inicioDeCapturaDeCargasAcademicas;
    var r = ceremoniaDeGraduacion;
    var s = limiteTramitesTitulacion;
    var t = diasNoLaborables;
    var u = vacaciones;
    var v = diaDelSindicato;
    var w = diaDelTSU;
    var y = aniversarioUTTAB;
    var z = diasNoLaborablesMadresTrabajadoras;

    if ($.inArray("inicioDeCurso", arreglo_categorias) !== -1) {
        for (var x = 0; x < a.length; x++) {
            if ((new Date(a[x])).toString() === e.toString()) {
                return[true, "inicioDeCurso"];
            }
        }
    }

    if ($.inArray("finDeCurso", arreglo_categorias) !== -1) {
        for (var x = 0; x < b.length; x++) {
            if ((new Date(b[x])).toString() === e.toString()) {
                return[true, "finDeCurso"];
            }
        }
    }

    if ($.inArray("inscripcionesAlumnosNuevoIngresoTSU", arreglo_categorias) !== -1) {
        for (var x = 0; x < c.length; x++) {
            if ((new Date(c[x])).toString() === e.toString()) {
                return[true, "inscripcionesAlumnosNuevoIngresoTSU"];
            }
        }
    }

    if ($.inArray("inscripcionesAlumnosNuevoIngresoLIC", arreglo_categorias) !== -1) {
        for (var x = 0; x < d.length; x++) {
            if ((new Date(d[x])).toString() === e.toString()) {
                return[true, "inscripcionesAlumnosNuevoIngresoLIC"];
            }
        }
    }

    if ($.inArray("reinscripcionesContinuidadInmediata", arreglo_categorias) !== -1) {
        for (var x = 0; x < f.length; x++) {
            if ((new Date(f[x])).toString() === e.toString()) {
                return[true, "reinscripcionesContinuidadInmediata"];
            }
        }
    }

    if ($.inArray("limiteDeBajasTemporales", arreglo_categorias) !== -1) {
        for (var x = 0; x < g.length; x++) {
            if ((new Date(g[x])).toString() === e.toString()) {
                return[true, "limiteDeBajasTemporales"];
            }
        }
    }

    if ($.inArray("inicioDeCapturaDeCargasAcademicasNuevoIngresoTSU", arreglo_categorias) !== -1) {
        for (var x = 0; x < h.length; x++) {
            if ((new Date(h[x])).toString() === e.toString()) {
                return[true, "inicioDeCapturaDeCargasAcademicasNuevoIngresoTSU"];
            }
        }
    }

    if ($.inArray("inicioDeCapturaDeCargasAcademicasNuevoIngresoLIC", arreglo_categorias) !== -1) {
        for (var x = 0; x < i.length; x++) {
            if ((new Date(i[x])).toString() === e.toString()) {
                return[true, "inicioDeCapturaDeCargasAcademicasNuevoIngresoLIC"];
            }
        }
    }

    if ($.inArray("pagoDeColegiaturasYReinscripcionesEnLinea", arreglo_categorias) !== -1) {
        for (var x = 0; x < j.length; x++) {
            if ((new Date(j[x])).toString() === e.toString()) {
                return[true, "pagoDeColegiaturasYReinscripcionesEnLinea"];
            }
        }
    }

    if ($.inArray("limiteDeCaptutaDeEvaluaciones", arreglo_categorias) !== -1) {
        for (var x = 0; x < k.length; x++) {
            if ((new Date(k[x])).toString() === e.toString()) {
                return[true, "limiteDeCaptutaDeEvaluaciones"];
            }
        }
    }

    if ($.inArray("limiteCapturaDelProyectoFinal", arreglo_categorias) !== -1) {
        for (var x = 0; x < l.length; x++) {
            if ((new Date(l[x])).toString() === e.toString()) {
                return[true, "limiteCapturaDelProyectoFinal"];
            }
        }
    }

    if ($.inArray("limiteRecepcionActasFinalesIncluyendoEstadia", arreglo_categorias) !== -1) {
        for (var x = 0; x < m.length; x++) {
            if ((new Date(m[x])).toString() === e.toString()) {
                return[true, "limiteRecepcionActasFinalesIncluyendoEstadia"];
            }
        }
    }

    if ($.inArray("limiteDeEntregaDeSolicitudesDeReingresosDivisionesAcademicas", arreglo_categorias) !== -1) {
        for (var x = 0; x < n.length; x++) {
            if ((new Date(n[x])).toString() === e.toString()) {
                return[true, "limiteDeEntregaDeSolicitudesDeReingresosDivisionesAcademicas"];
            }
        }
    }

    if ($.inArray("limiteDeRecepcionDeSolicitudesDeReingresosControlEscolar", arreglo_categorias) !== -1) {
        for (var x = 0; x < o.length; x++) {
            if ((new Date(o[x])).toString() === e.toString()) {
                return[true, "limiteDeRecepcionDeSolicitudesDeReingresosControlEscolar"];
            }
        }
    }

    if ($.inArray("limiteEntregaDeHorarios", arreglo_categorias) !== -1) {
        for (var x = 0; x < p.length; x++) {
            if ((new Date(p[x])).toString() === e.toString()) {
                return[true, "limiteEntregaDeHorarios"];
            }
        }
    }

    if ($.inArray("inicioDeCapturaDeCargasAcademicas", arreglo_categorias) !== -1) {
        for (var x = 0; x < q.length; x++) {
            if ((new Date(q[x])).toString() === e.toString()) {
                return[true, "inicioDeCapturaDeCargasAcademicas"];
            }
        }
    }

    if ($.inArray("ceremoniaDeGraduacion", arreglo_categorias) !== -1) {
        for (var x = 0; x < r.length; x++) {
            if ((new Date(r[x])).toString() === e.toString()) {
                return[true, "ceremoniaDeGraduacion"];
            }
        }
    }

    if ($.inArray("limiteTramitesTitulacion", arreglo_categorias) !== -1) {
        for (var x = 0; x < s.length; x++) {
            if ((new Date(s[x])).toString() === e.toString()) {
                return[true, "limiteTramitesTitulacion"];
            }
        }
    }

    if ($.inArray("diasNoLaborables", arreglo_categorias) !== -1) {
        for (var x = 0; x < t.length; x++) {
            if ((new Date(t[x])).toString() === e.toString()) {
                return[true, "diasNoLaborables"];
            }
        }
    }

    if ($.inArray("vacaciones", arreglo_categorias) !== -1) {
        for (var x = 0; x < u.length; x++) {
            if ((new Date(u[x])).toString() === e.toString()) {
                return[true, "vacaciones"];
            }
        }
    }

    if ($.inArray("diaDelSindicato", arreglo_categorias) !== -1) {
        for (var x = 0; x < v.length; x++) {
            if ((new Date(v[x])).toString() === e.toString()) {
                return[true, "diaDelSindicato"];
            }
        }
    }

    if ($.inArray("diaDelTSU", arreglo_categorias) !== -1) {
        for (var x = 0; x < w.length; x++) {
            if ((new Date(w[x])).toString() === e.toString()) {
                return[true, "diaDelTSU"];
            }
        }
    }

    if ($.inArray("aniversarioUTTAB", arreglo_categorias) !== -1) {
        for (var x = 0; x < y.length; x++) {
            if ((new Date(y[x])).toString() === e.toString()) {
                return[true, "aniversarioUTTAB"];
            }
        }
    }

    if ($.inArray("diasNoLaborablesMadresTrabajadoras", arreglo_categorias) !== -1) {
        for (var x = 0; x < z.length; x++) {
            if ((new Date(z[x])).toString() === e.toString()) {
                return[true, "diasNoLaborablesMadresTrabajadoras"];
            }
        }
    }


    return[true, ""];
}