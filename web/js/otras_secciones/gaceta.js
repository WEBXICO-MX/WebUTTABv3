function getAnio(valor)
{
    var d = new Date();
    var year;

    if (valor !== null)
    {
        year = valor;
    }
    else
    {
        year = d.getFullYear();
    }


    return year;
}

function cambiarColorAnio(year)
{   
    switch (year.toString())
    {
        case "2013":
            $("#2013").addClass("anio_seleccionado");
            $("#2014").removeClass("anio_seleccionado");
            $("#2015").removeClass("anio_seleccionado");
            $("#2016").removeClass("anio_seleccionado");
            break;
        case "2014":
            $("#2013").removeClass("anio_seleccionado");
            $("#2014").addClass("anio_seleccionado");
            $("#2015").removeClass("anio_seleccionado");
            $("#2016").removeClass("anio_seleccionado");
            break;
        case "2015":
            $("#2013").removeClass("anio_seleccionado");
            $("#2014").removeClass("anio_seleccionado");
            $("#2015").addClass("anio_seleccionado");
            $("#2016").removeClass("anio_seleccionado");
            break;
        case "2016":
            $("#2013").removeClass("anio_seleccionado");
            $("#2014").removeClass("anio_seleccionado");
            $("#2015").removeClass("anio_seleccionado");
            $("#2016").addClass("anio_seleccionado");
            break;
    }
}

function getGacetas(year) {
    var pag = "listGacetasBy.action";
    cambiarColorAnio(year);
    $("#anioSeleccionado").val(year);
    $("#contenedor3").html("<img src=\"../img/ajax-loading.gif\" width=\"20\" height=\"21\" alt=\"Cargando ...\"/>Cargando ...");
    $("#contenedor3").load(pag, {anio: year});
}