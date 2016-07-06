function getNombreMes(b) {
    var e = new Date();
    var c;
    var a = "";
    if (b !== null) {
        c = b;
        a = b;
    } else {
        c = e.getMonth() + 1;
    }
    switch (c) {
        case 1:
            a = "Enero";
            break;
        case 2:
            a = "Febrero";
            break;
        case 3:
            a = "Marzo";
            break;
        case 4:
            a = "Abril";
            break;
        case 5:
            a = "Mayo";
            break;
        case 6:
            a = "Junio";
            break;
        case 7:
            a = "Julio";
            break;
        case 8:
            a = "Agosto";
            break;
        case 9:
            a = "Septiembre";
            break;
        case 10:
            a = "Octubre";
            break;
        case 11:
            a = "Noviembre";
            break;
        case 12:
            a = "Diciembre";
            break
    }
    return a;
}

function getNumeroMes(a) {
    var c = new Date();
    var b;
    if (a !== null) {
        b = a;
    } else {
        b = c.getMonth() + 1;
    }
    return b;
}

function getAnio(a) {
    var c = new Date();
    var b;
    if (a !== null) {
        b = a;
    } else {
        b = c.getFullYear();
    }
    return b;
}

function cambiarColorMes(a) {
    switch (a) {
        case"Enero":
            $("#Enero").addClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Febrero":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").addClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Marzo":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").addClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Abril":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").addClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Mayo":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").addClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Junio":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").addClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Julio":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").addClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Agosto":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").addClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Septiembre":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").addClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Octubre":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").addClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Noviembre":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").addClass("mes_seleccionado");
            $("#Diciembre").removeClass("mes_seleccionado");
            break;
        case"Diciembre":
            $("#Enero").removeClass("mes_seleccionado");
            $("#Febrero").removeClass("mes_seleccionado");
            $("#Marzo").removeClass("mes_seleccionado");
            $("#Abril").removeClass("mes_seleccionado");
            $("#Mayo").removeClass("mes_seleccionado");
            $("#Junio").removeClass("mes_seleccionado");
            $("#Julio").removeClass("mes_seleccionado");
            $("#Agosto").removeClass("mes_seleccionado");
            $("#Septiembre").removeClass("mes_seleccionado");
            $("#Octubre").removeClass("mes_seleccionado");
            $("#Noviembre").removeClass("mes_seleccionado");
            $("#Diciembre").addClass("mes_seleccionado");
            break
    }
}

function cambiarColorAnio(a) {
    switch (a.toString()) {
        case"2013":
            $("#2013").addClass("anio_seleccionado");
            $("#2014").removeClass("anio_seleccionado");
            $("#2015").removeClass("anio_seleccionado");
            $("#2016").removeClass("anio_seleccionado");
            break;
        case"2014":
            $("#2013").removeClass("anio_seleccionado");
            $("#2014").addClass("anio_seleccionado");
            $("#2015").removeClass("anio_seleccionado");
            $("#2016").removeClass("anio_seleccionado");
            break;
        case"2015":
            $("#2013").removeClass("anio_seleccionado");
            $("#2014").removeClass("anio_seleccionado");
            $("#2015").addClass("anio_seleccionado");
            $("#2016").removeClass("anio_seleccionado");
            break;
        case"2016":
            $("#2013").removeClass("anio_seleccionado");
            $("#2014").removeClass("anio_seleccionado");
            $("#2015").removeClass("anio_seleccionado");
            $("#2016").addClass("anio_seleccionado");
            break;
    }
}

function getActividadesUniversitariasAnteriores(c, d) {
    var b = "listActividadesUniversitariasBy.action";
    var a = getNombreMes(d);
    cambiarColorMes(a);
    cambiarColorAnio(c);
    $("#anioSeleccionado").val(c);
    $("#mesSeleccionado").val(a);
    $("#contenedor2").html('<img src="../img/ajax-loading.gif" width="20" height="21" alt="Cargando ..."/>Cargando ...');
    $("#contenedor2").load(b, {mes: a, anio: c});
}