var arreglo_categorias = [];

$(document).ready(function () {

    arreglo_categorias = ['inicioDeCurso', 'finDeCurso', 'inscripcionAlumnosDeNuevoIngresoTSU', 'inscripcionAlumnosDeNuevoIngresoLIC', 'reinscripcionesContinuidadInmediata', 'limiteDeBajasTemporales', 'pagoDeColegiaturaYreinscripcionesEnLinea', 'limiteDeCapturaDeEvaluaciones', 'limiteCapturaDelProyectoFinal', 'limiteRecepcionDeActasFinales', 'limiteDeEntregaDeSolicitudesDeReingresosDivisiones', 'limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar', 'limiteDeEntregaHorarios', 'ceremoniaDeGraduacion', 'limiteDetramitesDeTitulacion', 'diasNoLaborales', 'vacaciones', 'diaDelSindicato', 'diaDelTSU', 'aniversarioDeLaUTTAB', 'diasNoLaborablesMadresTrabajadoras'];
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
                minDate: new Date(2015, 7, 1),
                maxDate: new Date(2016, 9, 0),
                beforeShowDay: Sept14Sept15
            });
            $("#datepicker").datepicker("setDate", "01/01/2016");

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
        arreglo_categorias = ['inicioDeCurso', 'finDeCurso', 'inscripcionAlumnosDeNuevoIngresoTSU', 'inscripcionAlumnosDeNuevoIngresoLIC', 'reinscripcionesContinuidadInmediata', 'limiteDeBajasTemporales', 'pagoDeColegiaturaYreinscripcionesEnLinea', 'limiteDeCapturaDeEvaluaciones', 'limiteCapturaDelProyectoFinal', 'limiteRecepcionDeActasFinales', 'limiteDeEntregaDeSolicitudesDeReingresosDivisiones', 'limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar', 'limiteDeEntregaHorarios', 'ceremoniaDeGraduacion', 'limiteDetramitesDeTitulacion', 'diasNoLaborales', 'vacaciones', 'diaDelSindicato', 'diaDelTSU', 'aniversarioDeLaUTTAB', 'diasNoLaborablesMadresTrabajadoras'];
    }
    else
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
    $(".inscripcionAlumnosDeNuevoIngresoTSU").removeClass("inscripcionAlumnosDeNuevoIngresoTSU").find("a").addClass("inscripcionAlumnosDeNuevoIngresoTSU ui-corner-all");
    $(".inscripcionAlumnosDeNuevoIngresoLIC").removeClass("inscripcionAlumnosDeNuevoIngresoLIC").find("a").addClass("inscripcionAlumnosDeNuevoIngresoLIC ui-corner-all");
    $(".reinscripcionesContinuidadInmediata").removeClass("reinscripcionesContinuidadInmediata").find("a").addClass("reinscripcionesContinuidadInmediata ui-corner-all");
    $(".limiteDeBajasTemporales").removeClass("limiteDeBajasTemporales").find("a").addClass("limiteDeBajasTemporales ui-corner-all");
    $(".pagoDeColegiaturaYreinscripcionesEnLinea").removeClass("pagoDeColegiaturaYreinscripcionesEnLinea").find("a").addClass("pagoDeColegiaturaYreinscripcionesEnLinea ui-corner-all");
    $(".limiteDeCapturaDeEvaluaciones").removeClass("limiteDeCapturaDeEvaluaciones").find("a").addClass("limiteDeCapturaDeEvaluaciones ui-corner-all");
    $(".limiteCapturaDelProyectoFinal").removeClass("limiteCapturaDelProyectoFinal").find("a").addClass("limiteCapturaDelProyectoFinal ui-corner-all");
    $(".limiteRecepcionDeActasFinales").removeClass("limiteRecepcionDeActasFinales").find("a").addClass("limiteRecepcionDeActasFinales ui-corner-all");
    $(".limiteDeEntregaDeSolicitudesDeReingresosDivisiones").removeClass("limiteDeEntregaDeSolicitudesDeReingresosDivisiones").find("a").addClass("limiteDeEntregaDeSolicitudesDeReingresosDivisiones ui-corner-all");
    $(".limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar").removeClass("limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar").find("a").addClass("limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar ui-corner-all");
    $(".limiteDeEntregaHorarios").removeClass("limiteDeEntregaHorarios").find("a").addClass("limiteDeEntregaHorarios ui-corner-all");
    $(".ceremoniaDeGraduacion").removeClass("ceremoniaDeGraduacion").find("a").addClass("ceremoniaDeGraduacion ui-corner-all");
    $(".limiteDetramitesDeTitulacion").removeClass("limiteDetramitesDeTitulacion").find("a").addClass("limiteDetramitesDeTitulacion ui-corner-all");
    $(".diasNoLaborales").removeClass("diasNoLaborales").find("a").addClass("diasNoLaborales ui-corner-all");
    $(".vacaciones").removeClass("vacaciones").find("a").addClass("vacaciones ui-corner-all");
    $(".diaDelSindicato").removeClass("diaDelSindicato").find("a").addClass("diaDelSindicato ui-corner-all");
    $(".diaDelTSU").removeClass("diaDelTSU").find("a").addClass("diaDelTSU ui-corner-all");
    $(".aniversarioDeLaUTTAB").removeClass("aniversarioDeLaUTTAB").find("a").addClass("aniversarioDeLaUTTAB ui-corner-all");
    $(".diasNoLaborablesMadresTrabajadoras").removeClass("diasNoLaborablesMadresTrabajadoras").find("a").addClass("diasNoLaborablesMadresTrabajadoras ui-corner-all");
    $("a").removeClass("ui-state-active");
}

function Sept14Sept15(e) {
    var a = inicioDeCurso;
    var b = finDeCurso;
    var c = inscripcionAlumnosDeNuevoIngresoTSU;
    var d = inscripcionAlumnosDeNuevoIngresoLIC;
    var f = reinscripcionesContinuidadInmediata;
    var g = limiteDeBajasTemporales;
    var h = pagoDeColegiaturaYreinscripcionesEnLinea;
    var i = limiteDeCapturaDeEvaluaciones;
    var j = limiteCapturaDelProyectoFinal;
    var k = limiteRecepcionDeActasFinales;
    var l = limiteDeEntregaDeSolicitudesDeReingresosDivisiones;
    var m = limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar;
    var n = limiteDeEntregaHorarios;
    var o = ceremoniaDeGraduacion;
    var p = limiteDetramitesDeTitulacion;
    var q = diasNoLaborales;
    var r = vacaciones;
    var s = diaDelSindicato;
    var t = diaDelTSU;
    var u = aniversarioDeLaUTTAB;
    var v = diasNoLaborablesMadresTrabajadoras;

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

    if ($.inArray("inscripcionAlumnosDeNuevoIngresoTSU", arreglo_categorias) !== -1) {
        for (var x = 0; x < c.length; x++) {
            if ((new Date(c[x])).toString() === e.toString()) {
                return[true, "inscripcionAlumnosDeNuevoIngresoTSU"];
            }
        }
    }

    if ($.inArray("inscripcionAlumnosDeNuevoIngresoLIC", arreglo_categorias) !== -1) {
        for (var x = 0; x < d.length; x++) {
            if ((new Date(d[x])).toString() === e.toString()) {
                return[true, "inscripcionAlumnosDeNuevoIngresoLIC"];
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

    if ($.inArray("pagoDeColegiaturaYreinscripcionesEnLinea", arreglo_categorias) !== -1) {
        for (var x = 0; x < h.length; x++) {
            if ((new Date(h[x])).toString() === e.toString()) {
                return[true, "pagoDeColegiaturaYreinscripcionesEnLinea"];
            }
        }
    }

    if ($.inArray("limiteDeCapturaDeEvaluaciones", arreglo_categorias) !== -1) {
        for (var x = 0; x < i.length; x++) {
            if ((new Date(i[x])).toString() === e.toString()) {
                return[true, "limiteDeCapturaDeEvaluaciones"];
            }
        }
    }

    if ($.inArray("limiteCapturaDelProyectoFinal", arreglo_categorias) !== -1) {
        for (var x = 0; x < j.length; x++) {
            if ((new Date(j[x])).toString() === e.toString()) {
                return[true, "limiteCapturaDelProyectoFinal"];
            }
        }
    }

    if ($.inArray("limiteRecepcionDeActasFinales", arreglo_categorias) !== -1) {
        for (var x = 0; x < k.length; x++) {
            if ((new Date(k[x])).toString() === e.toString()) {
                return[true, "limiteRecepcionDeActasFinales"];
            }
        }
    }

    if ($.inArray("limiteDeEntregaDeSolicitudesDeReingresosDivisiones", arreglo_categorias) !== -1) {
        for (var x = 0; x < l.length; x++) {
            if ((new Date(l[x])).toString() === e.toString()) {
                return[true, "limiteDeEntregaDeSolicitudesDeReingresosDivisiones"];
            }
        }
    }

    if ($.inArray("limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar", arreglo_categorias) !== -1) {
        for (var x = 0; x < m.length; x++) {
            if ((new Date(m[x])).toString() === e.toString()) {
                return[true, "limiteDeRecepcionDeSolicitudesDeReingresosEnControlEscolar"];
            }
        }
    }

    if ($.inArray("limiteDeEntregaHorarios", arreglo_categorias) !== -1) {
        for (var x = 0; x < n.length; x++) {
            if ((new Date(n[x])).toString() === e.toString()) {
                return[true, "limiteDeEntregaHorarios"];
            }
        }
    }

    if ($.inArray("ceremoniaDeGraduacion", arreglo_categorias) !== -1) {
        for (var x = 0; x < o.length; x++) {
            if ((new Date(o[x])).toString() === e.toString()) {
                return[true, "ceremoniaDeGraduacion"];
            }
        }
    }

    if ($.inArray("limiteDetramitesDeTitulacion", arreglo_categorias) !== -1) {
        for (var x = 0; x < p.length; x++) {
            if ((new Date(p[x])).toString() === e.toString()) {
                return[true, "limiteDetramitesDeTitulacion"];
            }
        }
    }

    if ($.inArray("diasNoLaborales", arreglo_categorias) !== -1) {
        for (var x = 0; x < q.length; x++) {
            if ((new Date(q[x])).toString() === e.toString()) {
                return[true, "diasNoLaborales"];
            }
        }
    }

    if ($.inArray("vacaciones", arreglo_categorias) !== -1) {
        for (var x = 0; x < r.length; x++) {
            if ((new Date(r[x])).toString() === e.toString()) {
                return[true, "vacaciones"];
            }
        }
    }

    if ($.inArray("diaDelSindicato", arreglo_categorias) !== -1) {
        for (var x = 0; x < s.length; x++) {
            if ((new Date(s[x])).toString() === e.toString()) {
                return[true, "diaDelSindicato"];
            }
        }
    }

    if ($.inArray("diaDelTSU", arreglo_categorias) !== -1) {
        for (var x = 0; x < t.length; x++) {
            if ((new Date(t[x])).toString() === e.toString()) {
                return[true, "diaDelTSU"];
            }
        }
    }

    if ($.inArray("aniversarioDeLaUTTAB", arreglo_categorias) !== -1) {
        for (var x = 0; x < u.length; x++) {
            if ((new Date(u[x])).toString() === e.toString()) {
                return[true, "aniversarioDeLaUTTAB"];
            }
        }
    }

    if ($.inArray("diasNoLaborablesMadresTrabajadoras", arreglo_categorias) !== -1) {
        for (var x = 0; x < v.length; x++) {
            if ((new Date(v[x])).toString() === e.toString()) {
                return[true, "diasNoLaborablesMadresTrabajadoras"];
            }
        }
    }

    return[true, ""];
}