var meses = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Augosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
var weekday = new Array("Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado");
var fechas_dias_semana = new Array();
var date = new Date();
var dia = ("0" + date.getDate()).slice(-2);
var dia_semana = weekday[date.getDay()];
var mes = ("0" + (date.getMonth() + 1)).slice(-2);
var mes_nombre = meses[date.getMonth()];
var anio = date.getFullYear();
var count_day_week = 0;

Date.prototype.yyyymmdd = function() {

    var yyyy = this.getFullYear().toString();
    var mm = (this.getMonth() + 1).toString(); // getMonth() is zero-based         
    var dd = this.getDate().toString();

    return yyyy + '-' + (mm[1] ? mm : "0" + mm[0]) + '-' + (dd[1] ? dd : "0" + dd[0]);
};


function getListadoCalendarioEventos(dia, mes, anio, dia_semana, mes_nombre) {
    var pag = "listCalendarioEventosByDiaMesAnio.action";
    $(".area_info_calendario_eventos").html("<p><img src=\"../img/ajax-loading.gif\" alt=\"Cargando\"/> Cargando ...</p>");
    $(".area_info_calendario_eventos").load(pag, {dia: dia, mes: mes, anio: anio, dayOfWeek: dia_semana, mes_nombre: mes_nombre}, function() {

        $('.next-day').on("click", function() {
            var date = $('#datepicker_calendario_eventos').datepicker('getDate');
            date.setTime(date.getTime() + (1000 * 60 * 60 * 24));
            $('#datepicker_calendario_eventos').datepicker("setDate", date);
            var next_day = $("#datepicker_calendario_eventos").datepicker("getDate");
            var dayOfWeek1 = weekday[next_day.getUTCDay()];
            getListadoCalendarioEventos(("0" + next_day.getUTCDate()).slice(-2), ("0" + (next_day.getMonth() + 1)).slice(-2), next_day.getFullYear(), dayOfWeek1, meses[next_day.getMonth()]);
        });

        $('.prev-day').on("click", function() {
            var date = $('#datepicker_calendario_eventos').datepicker('getDate');
            date.setTime(date.getTime() - (1000 * 60 * 60 * 24))
            $('#datepicker_calendario_eventos').datepicker("setDate", date);
            var prev_day = $("#datepicker_calendario_eventos").datepicker("getDate");
            var dayOfWeek2 = weekday[prev_day.getUTCDay()];
            getListadoCalendarioEventos(("0" + prev_day.getUTCDate()).slice(-2), ("0" + (prev_day.getMonth() + 1)).slice(-2), prev_day.getFullYear(), dayOfWeek2, meses[prev_day.getMonth()]);
        });
    });
}

function getListadoCalendarioEventosSemanal(inicio_semana, fin_semana)
{
    var pag = "listCalendarioEventosBySemana.action";
    $(".area_info_calendario_eventos").html("<p><img src=\"../img/ajax-loading.gif\"  alt=\"Cargando\"/> Cargando ...</p>");
    $(".area_info_calendario_eventos").load(pag, {inicio: inicio_semana, fin: fin_semana});
}

function getListadoCalendarioEventosMensual(inicio_mes, fin_mes, label)
{
    var pag = "listCalendarioEventosByMes.action";
    $(".area_info_calendario_eventos").html("<p><img src=\"../img/ajax-loading.gif\" width=\"20\" height=\"21\" alt=\"Cargando\"/> Cargando ...</p>");
    $(".area_info_calendario_eventos").load(pag, {inicio_mes: inicio_mes, fin_mes: fin_mes}, function() {
        $("#tabla_calendario_eventos thead tr th").html(label);
    });
}

function getCalendarioEventos(id) {
    var pag = "getCalendarioEventosByID.action";
    $(".area_info_calendario_eventos").html("<p><img src=\"../img/ajax-loading.gif\" alt=\"Cargando\"/> Cargando ...</p>");
    $(".area_info_calendario_eventos").load(pag, {i: id});
}

function tipoBusqueda(tipo) {
    switch (tipo) {
        case 1:
            count_day_week = 0;
            $("#menuFecha table tbody tr td:nth-child(1)").addClass("opcion_seleccionada");
            $("#menuFecha table tbody tr td:nth-child(2)").removeClass("opcion_seleccionada");
            $("#menuFecha table tbody tr td:nth-child(3)").removeClass("opcion_seleccionada");
            $("#datepicker_calendario_eventos").datepicker("destroy");
            $("#datepicker_calendario_eventos2").datepicker("destroy");
            calendarioDiario();
            getListadoCalendarioEventos(dia, mes, anio, dia_semana, mes_nombre);
            break;
        case 2:
            count_day_week = 0;
            $("#menuFecha table tbody tr td:nth-child(1)").removeClass("opcion_seleccionada");
            $("#menuFecha table tbody tr td:nth-child(2)").addClass("opcion_seleccionada");
            $("#menuFecha table tbody tr td:nth-child(3)").removeClass("opcion_seleccionada");
            $("#datepicker_calendario_eventos").datepicker("destroy");
            $("#datepicker_calendario_eventos2").datepicker("destroy");
            calendarioSemanal();
            break;
        case 3:
            count_day_week = 0;
            $("#menuFecha table tbody tr td:nth-child(1)").removeClass("opcion_seleccionada");
            $("#menuFecha table tbody tr td:nth-child(2)").removeClass("opcion_seleccionada");
            $("#menuFecha table tbody tr td:nth-child(3)").addClass("opcion_seleccionada");
            $("#datepicker_calendario_eventos").datepicker("destroy");
            $("#datepicker_calendario_eventos2").datepicker("destroy");
            var date3 = new Date();
            var label_mes_anio2 = meses[date3.getMonth()] + ' ' + date3.getFullYear();

            var firstDay = new Date(date3.getFullYear(), date3.getMonth(), 1);
            var lastDay = new Date(date3.getFullYear(), date3.getMonth() + 1, 0);
            getListadoCalendarioEventosMensual(firstDay.yyyymmdd(), lastDay.yyyymmdd(), label_mes_anio2);
            calendarioMes();
            break;
    }
}

function calendarioDiario()
{
    $('#datepicker_calendario_eventos').datepicker({
        monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
        dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
        dateFormat: "yy-mm-dd",
        onSelect: function(dateText, inst) {
            var date = $(this).datepicker('getDate');
            var dayOfWeek = weekday[date.getUTCDay()];
            getListadoCalendarioEventos(("0" + inst.selectedDay).slice(-2), ("0" + (inst.selectedMonth + 1)).slice(-2), inst.selectedYear, dayOfWeek, meses[inst.selectedMonth]);
        }
    });
}

function calendarioSemanal()
{
    $(function() {
        var startDate;
        var endDate;

        var selectCurrentWeek = function() {
            window.setTimeout(function() {
                $('#datepicker_calendario_eventos').find('.ui-datepicker-current-day a').addClass('ui-state-active');
            }, 1);
        };
        var $weekPicker = $('#datepicker_calendario_eventos');

        function updateWeekStartEnd() {
            var date = $weekPicker.datepicker('getDate') || new Date();
            startDate = new Date(date.getFullYear(), date.getMonth(), date.getDate() - date.getDay());
            endDate = new Date(date.getFullYear(), date.getMonth(), date.getDate() - date.getDay() + 6);
        }

        updateWeekStartEnd();

        function updateDateText(inst) {
            var dateFormat = "yy-mm-dd";
            $('#startDate').text($.datepicker.formatDate(dateFormat, startDate, inst.settings));
            $('#endDate').text($.datepicker.formatDate(dateFormat, endDate, inst.settings));
            count_day_week = 0;
            getListadoCalendarioEventosSemanal($.datepicker.formatDate(dateFormat, startDate, inst.settings), $.datepicker.formatDate(dateFormat, endDate, inst.settings));
        }

        updateDateText('start');

        $weekPicker.datepicker({
            monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
            dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
            dateFormat: "yy-mm-dd",
            showOtherMonths: true,
            selectOtherMonths: true,
            onSelect: function(dateText, inst) {
                updateWeekStartEnd();
                updateDateText(inst);
                selectCurrentWeek();
            },
            beforeShowDay: function(date) {
                var cssClass = '';
                if (date >= startDate && date <= endDate)
                    cssClass = 'ui-datepicker-current-day';
                return [true, cssClass];
            },
            onChangeMonthYear: function(year, month, inst) {
                selectCurrentWeek();
            }
        });

        selectCurrentWeek();

        $('#datepicker_calendario_eventos .ui-datepicker-calendar tr').on('mousemove', function() {
            $(this).find('td a').addClass('ui-state-hover');
        });
        $('#datepicker_calendario_eventos .ui-datepicker-calendar tr').on('mouseleave', function() {
            $(this).find('td a').removeClass('ui-state-hover');
        });

    });
}

function calendarioMes()
{
    $('#datepicker_calendario_eventos2').datepicker({
        monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
        dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
        dateFormat: "yy-mm-dd",
        beforeShowDay: function(date) {
            return [false, ''];
        },
        onChangeMonthYear: function(year, month, inst)
        {
            var d4 = new Date();
            d4.setMonth(month - 1);
            d4.setFullYear(year);
            var label_mes_anio = meses[month - 1] + ' ' + year;
            var firstDay4 = new Date(d4.getFullYear(), d4.getMonth(), 1);
            var lastDay4 = new Date(d4.getFullYear(), d4.getMonth() + 1, 0);
            getListadoCalendarioEventosMensual(firstDay4.yyyymmdd(), lastDay4.yyyymmdd(), label_mes_anio);
        }
    });
}

function backEventsDayWeek()
{
    if (count_day_week > 0)
    {
        count_day_week--;
        //console.log('backEventsDayWeek() ' + count_day_week);
        //$("#tabla_calendario_eventos tbody tr td.fecha_actual").html(fechas_dias_semana[count_day_week]);
        $("#tabla_calendario_eventos tbody tr td.fecha_actual").hide().html(fechas_dias_semana[count_day_week]).fadeIn('slow');
        $("#tabla_calendario_eventos tr." + fechas_dias_semana[count_day_week + 1].replace(/\ /g, '_')).hide();
        $("#tabla_calendario_eventos tr." + fechas_dias_semana[count_day_week].replace(/\ /g, '_')).fadeIn();
    }
}

function forwardEventsDayWeek()
{
    if (count_day_week < fechas_dias_semana.length - 1) {
        count_day_week++;
        //console.log('forwardEventsDayWeek() ' + count_day_week);
        //$("#tabla_calendario_eventos tbody tr td.fecha_actual").html(fechas_dias_semana[count_day_week]);
        $("#tabla_calendario_eventos tbody tr td.fecha_actual").hide().html(fechas_dias_semana[count_day_week]).fadeIn('slow');
        $("#tabla_calendario_eventos tr." + fechas_dias_semana[count_day_week - 1].replace(/\ /g, '_')).hide();
        $("#tabla_calendario_eventos tr." + fechas_dias_semana[count_day_week].replace(/\ /g, '_')).fadeIn();
    }

}


