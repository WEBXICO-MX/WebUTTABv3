var arreglo_categorias = [];

$(document).ready(function() {
    arreglo_categorias = ['CeremoniaGraduacion', 'EventoBienvenidaTSU', 'EventoBienvenidaLIC', 'DiaDelTSU', 'SesionConsejoDirectivo', 'SemanaDeLaSalud', 'CelebracionDiaDeLasMadres', 'CelebracionDiaDelMaestro', 'CelebracionDiaDelTrabajadorAdministrativo', 'DiaDeLaSecretaria', 'SemanaDeProteccionCivil', 'BrindisNavidenio', 'FestivalDelTamal', 'ConsejoVinculacionPertinencia', 'DiaDelSindicato', 'InicioDeCuatrimestre', 'FinDeCuatrimestre', 'Inscripciones', 'Reinscripciones', 'Reciclaton', 'EntregaRecepcion', 'TorneoRelampagoDeFutbol', 'AuditoriaExterna2014', 'AuditoriaInterna2014', 'ExpoUTTAB2014', 'SemanaDeLaCalidad', 'DiasNoLaborables', 'Vacaciones', 'MuestraTalleresCulturales', 'TallerEducacionAmbiental', 'ActoCivico', 'ConcursoEscoltas', 'ExposicionPictorica', 'InformeDelRector', 'InformeDelGobiernadorDelEstado', 'EntregaDeReportesUnidadAccesoInformacion', 'DiaMundialDeLaTierra', 'DiaInternacionalDelLibro', 'CursoDeInduccion', 'ExpoProyectosDivisionales', 'FeriaTabasco2014', 'InicioTorneosMultideportivos', 'FinTorneosMultideportivos', 'TallerParaPadres', 'SpellingBee', 'DesfileCivicoMilitar', 'TorneoDeRobotica', 'SegundoMaratonDeLectura2014', 'CuartoForoRegionalDeCuerposAcademicos', 'FestivalDeChocolate', 'NacionalDeportivosUT', 'DiaMundialDelTurismo', 'DiaInternacionalDelMedioAmbiente', 'DiaInternacionalDeLaMujer', 'CineDebateEnIngles', 'FestivalDeVerano', 'TraditionsAndCelebrations', '5toFestivalNavideno', 'InicioTallerDeEducacion', 'FinTallerDeEducacion', 'IniciaCursoDeInduccion', 'FinalizaCursoDeInduccion'];
    repintar('escolarizado');
});

function repintar(e) {

    $(function() {
        if (e == "escolarizado")
        {

            $('#datepicker').datepicker({
                numberOfMonths: [4, 3],
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
                dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                dateFormat: "dd/mm/yy",
                minDate: new Date(2014, 0, 1),
                maxDate: new Date(2014, 11, 31),
                beforeShowDay: Ene14Dic14
            });
            $("#datepicker").datepicker("setDate", "01/01/2014");

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
        arreglo_categorias = ['CeremoniaGraduacion', 'EventoBienvenidaTSU', 'EventoBienvenidaLIC', 'DiaDelTSU', 'SesionConsejoDirectivo', 'SemanaDeLaSalud', 'CelebracionDiaDeLasMadres', 'CelebracionDiaDelMaestro', 'CelebracionDiaDelTrabajadorAdministrativo', 'DiaDeLaSecretaria', 'SemanaDeProteccionCivil', 'BrindisNavidenio', 'FestivalDelTamal', 'ConsejoVinculacionPertinencia', 'DiaDelSindicato', 'InicioDeCuatrimestre', 'FinDeCuatrimestre', 'Inscripciones', 'Reinscripciones', 'Reciclaton', 'EntregaRecepcion', 'TorneoRelampagoDeFutbol', 'AuditoriaExterna2014', 'AuditoriaInterna2014', 'ExpoUTTAB2014', 'SemanaDeLaCalidad', 'DiasNoLaborables', 'Vacaciones', 'MuestraTalleresCulturales', 'TallerEducacionAmbiental', 'ActoCivico', 'ConcursoEscoltas', 'ExposicionPictorica', 'InformeDelRector', 'InformeDelGobiernadorDelEstado', 'EntregaDeReportesUnidadAccesoInformacion', 'DiaMundialDeLaTierra', 'DiaInternacionalDelLibro', 'CursoDeInduccion', 'ExpoProyectosDivisionales', 'FeriaTabasco2014', 'InicioTorneosMultideportivos', 'FinTorneosMultideportivos', 'TallerParaPadres', 'SpellingBee', 'DesfileCivicoMilitar', 'TorneoDeRobotica', 'SegundoMaratonDeLectura2014', 'CuartoForoRegionalDeCuerposAcademicos', 'FestivalDeChocolate', 'NacionalDeportivosUT', 'DiaMundialDelTurismo', 'DiaInternacionalDelMedioAmbiente', 'DiaInternacionalDeLaMujer', 'CineDebateEnIngles', 'FestivalDeVerano', 'TraditionsAndCelebrations', '5toFestivalNavideno', 'InicioTallerDeEducacion', 'FinTallerDeEducacion', 'IniciaCursoDeInduccion', 'FinalizaCursoDeInduccion'];
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
    $(".CeremoniaGraduacion").removeClass("CeremoniaGraduacion").find("a").addClass("CeremoniaGraduacion ui-corner-all");
    $(".EventoBienvenidaTSU").removeClass("EventoBienvenidaTSU").find("a").addClass("EventoBienvenidaTSU ui-corner-all");
    $(".EventoBienvenidaLIC").removeClass("EventoBienvenidaLIC").find("a").addClass("EventoBienvenidaLIC ui-corner-all");
    $(".DiaDelTSU").removeClass("DiaDelTSU").find("a").addClass("DiaDelTSU ui-corner-all");
    $(".SesionConsejoDirectivo").removeClass("SesionConsejoDirectivo").find("a").addClass("SesionConsejoDirectivo ui-corner-all");
    $(".SemanaDeLaSalud").removeClass("SemanaDeLaSalud").find("a").addClass("SemanaDeLaSalud ui-corner-all");
    $(".CelebracionDiaDeLasMadres").removeClass("CelebracionDiaDeLasMadres").find("a").addClass("CelebracionDiaDeLasMadres ui-corner-all");
    $(".CelebracionDiaDelMaestro").removeClass("CelebracionDiaDelMaestro").find("a").addClass("CelebracionDiaDelMaestro ui-corner-all");
    $(".CelebracionDiaDelTrabajadorAdministrativo").removeClass("CelebracionDiaDelTrabajadorAdministrativo").find("a").addClass("CelebracionDiaDelTrabajadorAdministrativo ui-corner-all");
    $(".DiaDeLaSecretaria").removeClass("DiaDeLaSecretaria").find("a").addClass("DiaDeLaSecretaria ui-corner-all");
    $(".SemanaDeProteccionCivil").removeClass("SemanaDeProteccionCivil").find("a").addClass("SemanaDeProteccionCivil ui-corner-all");
    $(".BrindisNavidenio").removeClass("BrindisNavidenio").find("a").addClass("BrindisNavidenio ui-corner-all");
    $(".FestivalDelTamal").removeClass("FestivalDelTamal").find("a").addClass("FestivalDelTamal ui-corner-all");
    $(".ConsejoVinculacionPertinencia").removeClass("ConsejoVinculacionPertinencia").find("a").addClass("ConsejoVinculacionPertinencia ui-corner-all");
    $(".DiaDelSindicato").removeClass("DiaDelSindicato").find("a").addClass("DiaDelSindicato ui-corner-all");
    $(".InicioDeCuatrimestre").removeClass("InicioDeCuatrimestre").find("a").addClass("InicioDeCuatrimestre ui-corner-all");
    $(".FinDeCuatrimestre").removeClass("FinDeCuatrimestre").find("a").addClass("FinDeCuatrimestre ui-corner-all");
    $(".Inscripciones").removeClass("Inscripciones").find("a").addClass("Inscripciones ui-corner-all");
    $(".Reinscripciones").removeClass("Reinscripciones").find("a").addClass("Reinscripciones ui-corner-all");
    $(".Reciclaton").removeClass("Reciclaton").find("a").addClass("Reciclaton ui-corner-all");
    $(".EntregaRecepcion").removeClass("EntregaRecepcion").find("a").addClass("EntregaRecepcion ui-corner-all");
    $(".TorneoRelampagoDeFutbol").removeClass("TorneoRelampagoDeFutbol").find("a").addClass("TorneoRelampagoDeFutbol ui-corner-all");
    $(".AuditoriaExterna2014").removeClass("AuditoriaExterna2014").find("a").addClass("AuditoriaExterna2014 ui-corner-all");
    $(".AuditoriaInterna2014").removeClass("AuditoriaInterna2014").find("a").addClass("AuditoriaInterna2014 ui-corner-all");
    $(".ExpoUTTAB2014").removeClass("ExpoUTTAB2014").find("a").addClass("ExpoUTTAB2014 ui-corner-all");
    $(".SemanaDeLaCalidad").removeClass("SemanaDeLaCalidad").find("a").addClass("SemanaDeLaCalidad ui-corner-all");
    $(".DiasNoLaborables").removeClass("DiasNoLaborables").find("a").addClass("DiasNoLaborables ui-corner-all");
    $(".Vacaciones").removeClass("Vacaciones").find("a").addClass("Vacaciones ui-corner-all");
    $(".MuestraTalleresCulturales").removeClass("MuestraTalleresCulturales").find("a").addClass("MuestraTalleresCulturales ui-corner-all");
    $(".TallerEducacionAmbiental").removeClass("TallerEducacionAmbiental").find("a").addClass("TallerEducacionAmbiental ui-corner-all");
    $(".ActoCivico").removeClass("ActoCivico").find("a").addClass("ActoCivico ui-corner-all");
    $(".ConcursoEscoltas").removeClass("ConcursoEscoltas").find("a").addClass("ConcursoEscoltas ui-corner-all");
    $(".ExposicionPictorica").removeClass("ExposicionPictorica").find("a").addClass("ExposicionPictorica ui-corner-all");
    $(".InformeDelRector").removeClass("InformeDelRector").find("a").addClass("InformeDelRector ui-corner-all");
    $(".InformeDelGobiernadorDelEstado").removeClass("InformeDelGobiernadorDelEstado").find("a").addClass("InformeDelGobiernadorDelEstado ui-corner-all");
    $(".EntregaDeReportesUnidadAccesoInformacion").removeClass("EntregaDeReportesUnidadAccesoInformacion").find("a").addClass("EntregaDeReportesUnidadAccesoInformacion ui-corner-all");
    $(".DiaMundialDeLaTierra").removeClass("DiaMundialDeLaTierra").find("a").addClass("DiaMundialDeLaTierra ui-corner-all");
    $(".DiaInternacionalDelLibro").removeClass("DiaInternacionalDelLibro").find("a").addClass("DiaInternacionalDelLibro ui-corner-all");
    $(".CursoDeInduccion").removeClass("CursoDeInduccion").find("a").addClass("CursoDeInduccion ui-corner-all");
    $(".ExpoProyectosDivisionales").removeClass("ExpoProyectosDivisionales").find("a").addClass("ExpoProyectosDivisionales ui-corner-all");
    $(".FeriaTabasco2014").removeClass("FeriaTabasco2014").find("a").addClass("FeriaTabasco2014 ui-corner-all");
    $(".InicioTorneosMultideportivos").removeClass("InicioTorneosMultideportivos").find("a").addClass("InicioTorneosMultideportivos ui-corner-all");
    $(".FinTorneosMultideportivos").removeClass("FinTorneosMultideportivos").find("a").addClass("FinTorneosMultideportivos ui-corner-all");
    $(".TallerParaPadres").removeClass("TallerParaPadres").find("a").addClass("TallerParaPadres ui-corner-all");
    $(".SpellingBee").removeClass("SpellingBee").find("a").addClass("SpellingBee ui-corner-all");
    $(".DesfileCivicoMilitar").removeClass("DesfileCivicoMilitar").find("a").addClass("DesfileCivicoMilitar ui-corner-all");
    $(".TorneoDeRobotica").removeClass("TorneoDeRobotica").find("a").addClass("TorneoDeRobotica ui-corner-all");
    $(".SegundoMaratonDeLectura2014").removeClass("SegundoMaratonDeLectura2014").find("a").addClass("SegundoMaratonDeLectura2014 ui-corner-all");
    $(".CuartoForoRegionalDeCuerposAcademicos").removeClass("CuartoForoRegionalDeCuerposAcademicos").find("a").addClass("CuartoForoRegionalDeCuerposAcademicos ui-corner-all");
    $(".FestivalDeChocolate").removeClass("FestivalDeChocolate").find("a").addClass("FestivalDeChocolate ui-corner-all");
    $(".NacionalDeportivosUT").removeClass("NacionalDeportivosUT").find("a").addClass("NacionalDeportivosUT ui-corner-all");
    $(".DiaMundialDelTurismo").removeClass("DiaMundialDelTurismo").find("a").addClass("DiaMundialDelTurismo ui-corner-all");
    $(".DiaInternacionalDelMedioAmbiente").removeClass("DiaInternacionalDelMedioAmbiente").find("a").addClass("DiaInternacionalDelMedioAmbiente ui-corner-all");
    $(".DiaInternacionalDeLaMujer").removeClass("DiaInternacionalDeLaMujer").find("a").addClass("DiaInternacionalDeLaMujer ui-corner-all");
    $(".CineDebateEnIngles").removeClass("CineDebateEnIngles").find("a").addClass("CineDebateEnIngles ui-corner-all");
    $(".FestivalDeVerano").removeClass("FestivalDeVerano").find("a").addClass("FestivalDeVerano ui-corner-all");
    $(".TraditionsAndCelebrations").removeClass("TraditionsAndCelebrations").find("a").addClass("TraditionsAndCelebrations ui-corner-all");
    $(".5toFestivalNavideno").removeClass("5toFestivalNavideno").find("a").addClass("5toFestivalNavideno ui-corner-all");
    $(".InicioTallerDeEducacion").removeClass("InicioTallerDeEducacion").find("a").addClass("InicioTallerDeEducacion ui-corner-all");
    $(".FinTallerDeEducacion").removeClass("FinTallerDeEducacion").find("a").addClass("FinTallerDeEducacion ui-corner-all");
    $(".IniciaCursoDeInduccion").removeClass("IniciaCursoDeInduccion").find("a").addClass("IniciaCursoDeInduccion ui-corner-all");
    $(".FinalizaCursoDeInduccion").removeClass("FinalizaCursoDeInduccion").find("a").addClass("FinalizaCursoDeInduccion ui-corner-all");
    $("a").removeClass("ui-state-active");
}


function Ene14Dic14(e) {

    var a = Ene14Dic14CeremoniaGraduacion;
    var b = Ene14Dic14EventoBienvenidaTSU;
    var c = Ene14Dic14EventoBienvenidaLIC;
    var d = Ene14Dic14DiaDelTSU;
    var f = Ene14Dic14SesionConsejoDirectivo;
    var g = Ene14Dic14SemanaDeLaSalud;
    var h = Ene14Dic14CelebracionDiaDeLasMadres;
    var i = Ene14Dic14CelebracionDiaDelMaestro;
    var j = Ene14Dic14CelebracionDiaDelTrabajadorAdministrativo;
    var k = Ene14Dic14DiaDeLaSecretaria;
    var l = Ene14Dic14SemanaDeProteccionCivil;
    var m = Ene14Dic14BrindisNavidenio;
    var n = Ene14Dic14FestivalDelTamal;
    var o = Ene14Dic14ConsejoVinculacionPertinencia;
    var p = Ene14Dic14DiaDelSindicato;
    var q = Ene14Dic14InicioDeCuatrimestre;
    var r = Ene14Dic14FinDeCuatrimestre;
    var s = Ene14Dic14Inscripciones;
    var t = Ene14Dic14Reinscripciones;
    var u = Ene14Dic14Reciclaton;
    var v = Ene14Dic14EntregaRecepcion;
    var w = Ene14Dic14ExpoUTTAB2014;
    var y = Ene14Dic14TorneoRelampagoDeFutbol;
    var z = Ene14Dic14AuditoriaExterna2014;
    var aa = Ene14Dic14AuditoriaInterna2014;
    var ab = Ene14Dic14SemanaDeLaCalidad;
    var ac = Ene14Dic14DiasNoLaborables;
    var ad = Ene14Dic14Vacaciones;
    var ae = Ene14Dic14MuestraTalleresCulturales;
    var af = Ene14Dic14TallerEducacionAmbiental;
    var ag = Ene14Dic14ActoCivico;
    var ah = Ene14Dic14ConcursoEscoltas;
    var ai = Ene14Dic14ExposicionPictorica;
    var aj = Ene14Dic14InformeDelRector;
    var ak = Ene14Dic14InformeDelGobiernadorDelEstado;
    var al = Ene14Dic14EntregaDeReportesUnidadAccesoInformacion;
    var am = Ene14Dic14DiaMundialDeLaTierra;
    var an = Ene14Dic14DiaInternacionalDelLibro;
    var ao = Ene14Dic14CursoDeInduccion;
    var ap = Ene14Dic14ExpoProyectosDivisionales;
    var aq = Ene14Dic14FeriaTabasco2014;
    var ar = Ene14Dic14InicioTorneosMultideportivos;
    var as = Ene14Dic14FinTorneosMultideportivos;
    var at = Ene14Dic14TallerParaPadres;
    var au = Ene14Dic14SpellingBee;
    var av = Ene14Dic14DesfileCivicoMilitar;
    var aw = Ene14Dic14TorneoDeRobotica;
    var ax = Ene14Dic14SegundoMaratonDeLectura2014;
    var ay = Ene14Dic14CuartoForoRegionalDeCuerposAcademicos;
    var az = Ene14Dic14FestivalDeChocolate;
    var ba = Ene14Dic14NacionalDeportivosUT;
    var bb = Ene14Dic14DiaMundialDelTurismo;
    var bc = Ene14Dic14DiaInternacionalDelMedioAmbiente;
    var bd = Ene14Dic14DiaInternacionalDeLaMujer;
    var be = Ene14Dic14CineDebateEnIngles;
    var bf = Ene14Dic14FestivalDeVerano;
    var bg = Ene14Dic14TraditionsAndCelebrations;
    var bh = Ene14Dic145toFestivalNavideno;
    var bi = Ene14Dic14InicioTallerDeEducacion;
    var bj = Ene14Dic14FinTallerDeEducacion;
    var bk = Ene14Dic14IniciaCursoDeInduccion;
    var bl = Ene14Dic14FinalizaCursoDeInduccion;

    if ($.inArray("CeremoniaGraduacion", arreglo_categorias) != -1) {
        for (var x = 0; x < a.length; x++) {
            if ((new Date(a[x])).toString() == e.toString()) {
                return[true, "CeremoniaGraduacion"];
            }
        }
    }
    if ($.inArray("EventoBienvenidaTSU", arreglo_categorias) != -1) {
        for (var x = 0; x < b.length; x++) {
            if ((new Date(b[x])).toString() == e.toString()) {
                return[true, "EventoBienvenidaTSU"];
            }
        }
    }
    if ($.inArray("EventoBienvenidaLIC", arreglo_categorias) != -1) {
        for (var x = 0; x < c.length; x++) {
            if ((new Date(c[x])).toString() == e.toString()) {
                return[true, "EventoBienvenidaLIC"];
            }
        }
    }
    if ($.inArray("DiaDelTSU", arreglo_categorias) != -1) {
        for (var x = 0; x < d.length; x++) {
            if ((new Date(d[x])).toString() == e.toString()) {
                return[true, "DiaDelTSU"];
            }
        }
    }
    if ($.inArray("SesionConsejoDirectivo", arreglo_categorias) != -1) {
        for (var x = 0; x < f.length; x++) {
            if ((new Date(f[x])).toString() == e.toString()) {
                return[true, "SesionConsejoDirectivo"];
            }
        }
    }
    if ($.inArray("SemanaDeLaSalud", arreglo_categorias) != -1) {
        for (var x = 0; x < g.length; x++) {
            if ((new Date(g[x])).toString() == e.toString()) {
                return[true, "SemanaDeLaSalud"];
            }
        }
    }
    if ($.inArray("CelebracionDiaDeLasMadres", arreglo_categorias) != -1) {
        for (var x = 0; x < h.length; x++) {
            if ((new Date(h[x])).toString() == e.toString()) {
                return[true, "CelebracionDiaDeLasMadres"];
            }
        }
    }
    if ($.inArray("CelebracionDiaDelMaestro", arreglo_categorias) != -1) {
        for (var x = 0; x < i.length; x++) {
            if ((new Date(i[x])).toString() == e.toString()) {
                return[true, "CelebracionDiaDelMaestro"];
            }
        }
    }
    if ($.inArray("CelebracionDiaDelTrabajadorAdministrativo", arreglo_categorias) != -1) {
        for (var x = 0; x < j.length; x++) {
            if ((new Date(j[x])).toString() == e.toString()) {
                return[true, "CelebracionDiaDelTrabajadorAdministrativo"];
            }
        }
    }
    if ($.inArray("DiaDeLaSecretaria", arreglo_categorias) != -1) {
        for (var x = 0; x < k.length; x++) {
            if ((new Date(k[x])).toString() == e.toString()) {
                return[true, "DiaDeLaSecretaria"];
            }
        }
    }
    if ($.inArray("SemanaDeProteccionCivil", arreglo_categorias) != -1) {
        for (var x = 0; x < l.length; x++) {
            if ((new Date(l[x])).toString() == e.toString()) {
                return[true, "SemanaDeProteccionCivil"];
            }
        }
    }
    if ($.inArray("BrindisNavidenio", arreglo_categorias) != -1) {
        for (var x = 0; x < m.length; x++) {
            if ((new Date(m[x])).toString() == e.toString()) {
                return[true, "BrindisNavidenio"];
            }
        }
    }
    if ($.inArray("FestivalDelTamal", arreglo_categorias) != -1) {
        for (var x = 0; x < n.length; x++) {
            if ((new Date(n[x])).toString() == e.toString()) {
                return[true, "FestivalDelTamal"];
            }
        }
    }
    if ($.inArray("ConsejoVinculacionPertinencia", arreglo_categorias) != -1) {
        for (var x = 0; x < o.length; x++) {
            if ((new Date(o[x])).toString() == e.toString()) {
                return[true, "ConsejoVinculacionPertinencia"];
            }
        }
    }
    if ($.inArray("DiaDelSindicato", arreglo_categorias) != -1) {
        for (var x = 0; x < p.length; x++) {
            if ((new Date(p[x])).toString() == e.toString()) {
                return[true, "DiaDelSindicato"];
            }
        }
    }
    if ($.inArray("InicioDeCuatrimestre", arreglo_categorias) != -1) {
        for (var x = 0; x < q.length; x++) {
            if ((new Date(q[x])).toString() == e.toString()) {
                return[true, "InicioDeCuatrimestre"];
            }
        }
    }
    if ($.inArray("FinDeCuatrimestre", arreglo_categorias) != -1) {
        for (var x = 0; x < r.length; x++) {
            if ((new Date(r[x])).toString() == e.toString()) {
                return[true, "FinDeCuatrimestre"];
            }
        }
    }
    if ($.inArray("Inscripciones", arreglo_categorias) != -1) {
        for (var x = 0; x < s.length; x++) {
            if ((new Date(s[x])).toString() == e.toString()) {
                return[true, "Inscripciones"];
            }
        }
    }
    if ($.inArray("Reinscripciones", arreglo_categorias) != -1) {
        for (var x = 0; x < t.length; x++) {
            if ((new Date(t[x])).toString() == e.toString()) {
                return[true, "Reinscripciones"];
            }
        }
    }
    if ($.inArray("Reciclaton", arreglo_categorias) != -1) {
        for (var x = 0; x < u.length; x++) {
            if ((new Date(u[x])).toString() == e.toString()) {
                return[true, "Reciclaton"];
            }
        }
    }
    if ($.inArray("EntregaRecepcion", arreglo_categorias) != -1) {
        for (var x = 0; x < v.length; x++) {
            if ((new Date(v[x])).toString() == e.toString()) {
                return[true, "EntregaRecepcion"];
            }
        }
    }
    if ($.inArray("ExpoUTTAB2014", arreglo_categorias) != -1) {
        for (var x = 0; x < w.length; x++) {
            if ((new Date(w[x])).toString() == e.toString()) {
                return[true, "ExpoUTTAB2014"];
            }
        }
    }
    if ($.inArray("TorneoRelampagoDeFutbol", arreglo_categorias) != -1) {
        for (var x = 0; x < y.length; x++) {
            if ((new Date(y[x])).toString() == e.toString()) {
                return[true, "TorneoRelampagoDeFutbol"];
            }
        }
    }
    if ($.inArray("AuditoriaExterna2014", arreglo_categorias) != -1) {
        for (var x = 0; x < z.length; x++) {
            if ((new Date(z[x])).toString() == e.toString()) {
                return[true, "AuditoriaExterna2014"];
            }
        }
    }
    if ($.inArray("AuditoriaInterna2014", arreglo_categorias) != -1) {
        for (var x = 0; x < aa.length; x++) {
            if ((new Date(aa[x])).toString() == e.toString()) {
                return[true, "AuditoriaInterna2014"];
            }
        }
    }
    if ($.inArray("SemanaDeLaCalidad", arreglo_categorias) != -1) {
        for (var x = 0; x < ab.length; x++) {
            if ((new Date(ab[x])).toString() == e.toString()) {
                return[true, "SemanaDeLaCalidad"];
            }
        }
    }
    if ($.inArray("DiasNoLaborables", arreglo_categorias) != -1) {
        for (var x = 0; x < ac.length; x++) {
            if ((new Date(ac[x])).toString() == e.toString()) {
                return[true, "DiasNoLaborables"];
            }
        }
    }
    if ($.inArray("Vacaciones", arreglo_categorias) != -1) {
        for (var x = 0; x < ad.length; x++) {
            if ((new Date(ad[x])).toString() == e.toString()) {
                return[true, "Vacaciones"];
            }
        }
    }
    if ($.inArray("MuestraTalleresCulturales", arreglo_categorias) != -1) {
        for (var x = 0; x < ae.length; x++) {
            if ((new Date(ae[x])).toString() == e.toString()) {
                return[true, "MuestraTalleresCulturales"];
            }
        }
    }
    if ($.inArray("TallerEducacionAmbiental", arreglo_categorias) != -1) {
        for (var x = 0; x < af.length; x++) {
            if ((new Date(af[x])).toString() == e.toString()) {
                return[true, "TallerEducacionAmbiental"];
            }
        }
    }
    if ($.inArray("ActoCivico", arreglo_categorias) != -1) {
        for (var x = 0; x < ag.length; x++) {
            if ((new Date(ag[x])).toString() == e.toString()) {
                return[true, "ActoCivico"];
            }
        }
    }
    if ($.inArray("ConcursoEscoltas", arreglo_categorias) != -1) {
        for (var x = 0; x < ah.length; x++) {
            if ((new Date(ah[x])).toString() == e.toString()) {
                return[true, "ConcursoEscoltas"];
            }
        }
    }
    if ($.inArray("ExposicionPictorica", arreglo_categorias) != -1) {
        for (var x = 0; x < ai.length; x++) {
            if ((new Date(ai[x])).toString() == e.toString()) {
                return[true, "ExposicionPictorica"];
            }
        }
    }
    if ($.inArray("InformeDelRector", arreglo_categorias) != -1) {
        for (var x = 0; x < aj.length; x++) {
            if ((new Date(aj[x])).toString() == e.toString()) {
                return[true, "InformeDelRector"];
            }
        }
    }
    if ($.inArray("InformeDelGobiernadorDelEstado", arreglo_categorias) != -1) {
        for (var x = 0; x < ak.length; x++) {
            if ((new Date(ak[x])).toString() == e.toString()) {
                return[true, "InformeDelGobiernadorDelEstado"];
            }
        }
    }
    if ($.inArray("EntregaDeReportesUnidadAccesoInformacion", arreglo_categorias) != -1) {
        for (var x = 0; x < al.length; x++) {
            if ((new Date(al[x])).toString() == e.toString()) {
                return[true, "EntregaDeReportesUnidadAccesoInformacion"];
            }
        }
    }
    if ($.inArray("DiaMundialDeLaTierra", arreglo_categorias) != -1) {
        for (var x = 0; x < am.length; x++) {
            if ((new Date(am[x])).toString() == e.toString()) {
                return[true, "DiaMundialDeLaTierra"];
            }
        }
    }
    if ($.inArray("DiaInternacionalDelLibro", arreglo_categorias) != -1) {
        for (var x = 0; x < an.length; x++) {
            if ((new Date(an[x])).toString() == e.toString()) {
                return[true, "DiaInternacionalDelLibro"];
            }
        }
    }
    if ($.inArray("CursoDeInduccion", arreglo_categorias) != -1) {
        for (var x = 0; x < ao.length; x++) {
            if ((new Date(ao[x])).toString() == e.toString()) {
                return[true, "CursoDeInduccion"];
            }
        }
    }
    if ($.inArray("ExpoProyectosDivisionales", arreglo_categorias) != -1) {
        for (var x = 0; x < ap.length; x++) {
            if ((new Date(ap[x])).toString() == e.toString()) {
                return[true, "ExpoProyectosDivisionales"];
            }
        }
    }
    if ($.inArray("FeriaTabasco2014", arreglo_categorias) != -1) {
        for (var x = 0; x < aq.length; x++) {
            if ((new Date(aq[x])).toString() == e.toString()) {
                return[true, "FeriaTabasco2014"];
            }
        }
    }
    if ($.inArray("InicioTorneosMultideportivos", arreglo_categorias) != -1) {
        for (var x = 0; x < ar.length; x++) {
            if ((new Date(ar[x])).toString() == e.toString()) {
                return[true, "InicioTorneosMultideportivos"];
            }
        }
    }
    if ($.inArray("FinTorneosMultideportivos", arreglo_categorias) != -1) {
        for (var x = 0; x < as.length; x++) {
            if ((new Date(as[x])).toString() == e.toString()) {
                return[true, "FinTorneosMultideportivos"];
            }
        }
    }
    if ($.inArray("TallerParaPadres", arreglo_categorias) != -1) {
        for (var x = 0; x < at.length; x++) {
            if ((new Date(at[x])).toString() == e.toString()) {
                return[true, "TallerParaPadres"];
            }
        }
    }
    if ($.inArray("SpellingBee", arreglo_categorias) != -1) {
        for (var x = 0; x < au.length; x++) {
            if ((new Date(au[x])).toString() == e.toString()) {
                return[true, "SpellingBee"];
            }
        }
    }
    if ($.inArray("DesfileCivicoMilitar", arreglo_categorias) != -1) {
        for (var x = 0; x < av.length; x++) {
            if ((new Date(av[x])).toString() == e.toString()) {
                return[true, "DesfileCivicoMilitar"];
            }
        }
    }
    if ($.inArray("TorneoDeRobotica", arreglo_categorias) != -1) {
        for (var x = 0; x < aw.length; x++) {
            if ((new Date(aw[x])).toString() == e.toString()) {
                return[true, "TorneoDeRobotica"];
            }
        }
    }
    if ($.inArray("SegundoMaratonDeLectura2014", arreglo_categorias) != -1) {
        for (var x = 0; x < ax.length; x++) {
            if ((new Date(ax[x])).toString() == e.toString()) {
                return[true, "SegundoMaratonDeLectura2014"];
            }
        }
    }
    if ($.inArray("CuartoForoRegionalDeCuerposAcademicos", arreglo_categorias) != -1) {
        for (var x = 0; x < ay.length; x++) {
            if ((new Date(ay[x])).toString() == e.toString()) {
                return[true, "CuartoForoRegionalDeCuerposAcademicos"];
            }
        }
    }
    if ($.inArray("FestivalDeChocolate", arreglo_categorias) != -1) {
        for (var x = 0; x < az.length; x++) {
            if ((new Date(az[x])).toString() == e.toString()) {
                return[true, "FestivalDeChocolate"];
            }
        }
    }
    if ($.inArray("NacionalDeportivosUT", arreglo_categorias) != -1) {
        for (var x = 0; x < ba.length; x++) {
            if ((new Date(ba[x])).toString() == e.toString()) {
                return[true, "NacionalDeportivosUT"];
            }
        }
    }
    if ($.inArray("DiaMundialDelTurismo", arreglo_categorias) != -1) {
        for (var x = 0; x < bb.length; x++) {
            if ((new Date(bb[x])).toString() == e.toString()) {
                return[true, "DiaMundialDelTurismo"];
            }
        }
    }
    if ($.inArray("DiaInternacionalDelMedioAmbiente", arreglo_categorias) != -1) {
        for (var x = 0; x < bc.length; x++) {
            if ((new Date(bc[x])).toString() == e.toString()) {
                return[true, "DiaInternacionalDelMedioAmbiente"];
            }
        }
    }
    if ($.inArray("DiaInternacionalDeLaMujer", arreglo_categorias) != -1) {
        for (var x = 0; x < bd.length; x++) {
            if ((new Date(bd[x])).toString() == e.toString()) {
                return[true, "DiaInternacionalDeLaMujer"];
            }
        }
    }
    if ($.inArray("CineDebateEnIngles", arreglo_categorias) != -1) {
        for (var x = 0; x < be.length; x++) {
            if ((new Date(be[x])).toString() == e.toString()) {
                return[true, "CineDebateEnIngles"];
            }
        }
    }
    if ($.inArray("FestivalDeVerano", arreglo_categorias) != -1) {
        for (var x = 0; x < bf.length; x++) {
            if ((new Date(bf[x])).toString() == e.toString()) {
                return[true, "FestivalDeVerano"];
            }
        }
    }
    if ($.inArray("TraditionsAndCelebrations", arreglo_categorias) != -1) {
        for (var x = 0; x < bg.length; x++) {
            if ((new Date(bg[x])).toString() == e.toString()) {
                return[true, "TraditionsAndCelebrations"];
            }
        }
    }
    if ($.inArray("5toFestivalNavideno", arreglo_categorias) != -1) {
        for (var x = 0; x < bh.length; x++) {
            if ((new Date(bh[x])).toString() == e.toString()) {
                return[true, "toFestivalNavideno"];
            }
        }
    }
    if ($.inArray("InicioTallerDeEducacion", arreglo_categorias) != -1) {
        for (var x = 0; x < bi.length; x++) {
            if ((new Date(bi[x])).toString() == e.toString()) {
                return[true, "InicioTallerDeEducacion"];
            }
        }
    }
    if ($.inArray("FinTallerDeEducacion", arreglo_categorias) != -1) {
        for (var x = 0; x < bj.length; x++) {
            if ((new Date(bj[x])).toString() == e.toString()) {
                return[true, "FinTallerDeEducacion"];
            }
        }
    }
    if ($.inArray("IniciaCursoDeInduccion", arreglo_categorias) != -1) {
        for (var x = 0; x < bk.length; x++) {
            if ((new Date(bk[x])).toString() == e.toString()) {
                return[true, "IniciaCursoDeInduccion"];
            }
        }
    }
    if ($.inArray("FinalizaCursoDeInduccion", arreglo_categorias) != -1) {
        for (var x = 0; x < bl.length; x++) {
            if ((new Date(bl[x])).toString() == e.toString()) {
                return[true, "FinalizaCursoDeInduccion"];
            }
        }
    }
    return[true, ""];
}
