var streaming = "http://radiout.uttab.edu.mx:8000";
var action1 = "fecha_hora.action";
var action2 = "radio2.action";
var action3 = "getProgramacionRadio.action";
var dias = ["D", "L", "M", "Mi", "J", "V", "S", "D"];
//var result_txt = '[{"nombre":"Música mexicana","horarios":[{"horario":"00:00-02:00","dias":["L","M","Mi","J","V","S","D"]},{"horario":"07:30-09:30","dias":["L","M","Mi","J","V","S","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Bossa nova","horarios":[{"horario":"02:00-03:00","dias":["L","M","Mi","J","V","S","D"]},{"horario":"09:30-10:00","dias":["L"]},{"horario":"12:00-13:00","dias":["L"]},{"horario":"14:00-14:30","dias":["L","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Sountrack","horarios":[{"horario":"03:00-04:00","dias":["L","M","Mi","J","V","S","D"]},{"horario":"12:00-13:00","dias":["M"]},{"horario":"14:00-14:30","dias":["M"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Música instrumental","horarios":[{"horario":"04:00-05:00","dias":["L","M","Mi","J","V","S","D"]},{"horario":"12:00-13:00","dias":["Mi"]},{"horario":"14:00-14:30","dias":["Mi"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Orquestas","horarios":[{"horario":"05:00-06:00","dias":["L","M","Mi","J","V","S","D"]},{"horario":"14:00-14:30","dias":["S"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Rock and Roll","horarios":[{"horario":"06:00-07:00","dias":["L","M","Mi","J","V","S","D"]},{"horario":"11:00-12:00","dias":["L","M","Mi","J","V"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Descarga UNAM","horarios":[{"horario":"07:00-07:30","dias":["L","M","Mi","J","V","S","D"]},{"horario":"17:30-18:00","dias":["L","M","Mi","J","V","S","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Con-tacto informativo (repetición)","horarios":[{"horario":"09:30-10:00","dias":["M","Mi","J","V"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Resumen con-tacto informativo","horarios":[{"horario":"09:30-10:00","dias":["S","D"]},{"horario":"14:30-15:00","dias":["S","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Con-tacto informativo (en vivo)","horarios":[{"horario":"14:30-15:00","dias":["L","M","Mi","J","V"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Florilegio","horarios":[{"horario":"10:00-11:00","dias":["L","M","Mi","J","V"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Trova","horarios":[{"horario":"10:00-11:00","dias":["S","D"]},{"horario":"16:30-17:30","dias":["S","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Entrevista de la semana","horarios":[{"horario":"11:00-11:30","dias":["S","D"]},{"horario":"16:00-16:30","dias":["S","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Salsa","horarios":[{"horario":"11:30-13:00","dias":["S","D"]},{"horario":"20:00-21:00","dias":["M","J","S"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Intérpretes","horarios":[{"horario":"12:00-13:00","dias":["J"]},{"horario":"14:00-14:30","dias":["J"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Bell canto","horarios":[{"horario":"12:00-13:00","dias":["V"]},{"horario":"14:00-14:30","dias":["V"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Música clásicos","horarios":[{"horario":"13:00-14:00","dias":["L","Mi","V","S","D"]},{"horario":"21:00-22:00","dias":["L","M","Mi","J","V","S","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Tabasco y sus raices","horarios":[{"horario":"13:00-14:00","dias":["M","J"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Música pop en español e inglés","horarios":[{"horario":"15:00-17:30","dias":["L","M","Mi","J","V"]},{"horario":"15:00-16:00","dias":["S","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Música del mundo","horarios":[{"horario":"18:00-19:00","dias":["L","Mi","V","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"New age chill out","horarios":[{"horario":"18:00-19:00","dias":["M","J"]},{"horario":"22:00-23:00","dias":["L","M","Mi","J","V","S"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"México","horarios":[{"horario":"18:00-19:00","dias":["S"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Antaño","horarios":[{"horario":"19:00-20:00","dias":["L","Mi","V","S","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Grandes bandas","horarios":[{"horario":"19:00-20:00","dias":["M","J"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Jazz","horarios":[{"horario":"20:00-21:00","dias":["L","Mi","V","D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"Hora nacional","horarios":[{"horario":"22:00-23:00","dias":["D"]}],"color_fondo":"#ECEDED","color":"#000000"},{"nombre":"De antro: dance, electrónico y más ...","horarios":[{"horario":"23:00-00:00","dias":["L","M","Mi","J","V","S","D"]}],"color_fondo":"#ECEDED","color":"#000000"}]';
//var result = JSON.parse(result_txt);
var mi_json = "[";
var now = null;//Fecha y hora del servidor
var json = null;

var tmp = null;
var inicio = null;
var fin = null;
var horas_inicio = 0;
var minutos_inicio = 0;
var horas_fin = 0;
var minutos_fin = 0;
var hour_to_compare = null;
var t1 = null;
var t2 = null;

$(document).ready(function () {
    $.ajaxSetup({"cache": false});
    $("#sintonia_ajax").html("<img src=\"../img/ajax-loading.gif\" alt=\"Ajax\"/> Cargando ...");
    getContendView1(action2);
});

function getProgramacionRadio()
{
    $("#sintonia_ajax").load("listProgramacionRadioAjax.action", {"xAccion": "getProgramacionRadio"}, function () {
        $("#radio").html("<audio preload=\'auto\' controls style='margin-top:125px;'><source src=\"" + streaming + "\"/></audio>");
        setInterval("updateProgramacionRadio()", 60000);
    });
}

function getProgramacionRadio2()
{
    $("#sintonia_ajax").load("listProgramacionRadioAjax.action", function () {
        $("#radio").html("<audio preload=\'auto\' controls style='margin-top:125px;'><source src=\"" + streaming + "\"/></audio>");
        updateProgramacionRadio2();
        setInterval("updateProgramacionRadio2()", 60000);
    });


}

function updateProgramacionRadio()
{
    $("#programacion_radio").html("<img src=\"../img/ajax-loading.gif\" alt=\"Ajax\"/> Cargando ...");
    $("#programacion_radio").load("listProgramacionRadioAjax.action", {"xAccion": "updateProgramacionRadio"});
}

function updateProgramacionRadio2()
{   $.getJSON(action1, function (result) {
        //segundos y milisegundos establecido a cero
        now = new Date(result.anio, result.mes - 1, result.dia, result.hora, result.minutos, 0, 0);
        $("#programacion_radio").html("");
        $("#programacion_radio").html("<img src=\"../img/ajax-loading.gif\" alt=\"Ajax\"/> Cargando ...");
        $.getJSON(action3, function (result) {
            $("#programacion_radio").html("<table class=\"miTabla\" style=\"width: 100%;border-spacing:0;\"><tbody></tbody></table>");
            $.each(result, function (i, item) {
                $.each(item.horarios, function (j, item2) {
                    $.each(item2.dias, function (z, item3) {

                        tmp = item2.horario.split('-');
                        inicio = tmp[0].split(':');
                        fin = tmp[1].split(':');
                        horas_inicio = parseInt(inicio[0]);
                        minutos_inicio = parseInt(inicio[1]);
                        horas_fin = parseInt(fin[0]);
                        minutos_fin = parseInt(fin[1]);
                        //segundos y milisegundos establecido a cero
                        hour_to_compare = new Date(now.getFullYear(), now.getMonth(), now.getDate(), horas_fin, minutos_fin, 0, 0);

                        if (item3 === dias[now.getDay()])
                        {
                            if (now.getTime() < hour_to_compare.getTime() || (hour_to_compare.getHours() === 0 && hour_to_compare.getMinutes() === 0 && hour_to_compare.getSeconds() === 0))
                            {
                                mi_json += "{\"nombre\":\"" + item.nombre + "\",\"horario\":\"" + item2.horario + "\",\"horas_inicio\":\"" + horas_inicio + "\",\"minutos_inicio\":\"" + minutos_inicio + "\",\"horas_fin\":\"" + horas_fin + "\",\"minutos_fin\":\"" + minutos_fin + "\",\"dia\":\"" + item3 + "\",\"rango_horario\":false},";
                            }
                        }
                    });
                });
            });

            mi_json += "]";
            mi_json = mi_json.substring(0, mi_json.lastIndexOf(",")) + mi_json.substring(mi_json.lastIndexOf(",") + 1, mi_json.length);
            json = JSON.parse(mi_json);
            //Reinicio la variable
            mi_json = "[";
            json.sort(function (a, b) {
                t1 = new Date(0,0,0, a.horas_inicio, a.minutos_inicio, 0, 0);
                t2 = new Date(0,0,0, b.horas_inicio, b.minutos_inicio, 0, 0);
                return parseFloat(t1.getTime()) - parseFloat(t2.getTime());
            });
            //Establezco el primer item con rango_horario = true
            json[0].rango_horario = true;

            $.each(json, function (i, item) {
                if (i + 1 <= 3)
                {
                    $("div#programacion_radio table tbody").append("<tr " + (item.rango_horario ? "style=\"background-color: #1876B2;color:#FFFFFD;\"" : "") + "><td>" + item.nombre + "<br/>" + item.horario + (item.rango_horario ? "<img src=\"../img/otras_secciones/radio/btn_al_aire.png\" alt=\"Al aire\" style=\"float:right;\"/>" : "") + "</td></tr>");
                }
                else
                {
                    return;
                }

            });


        });
    });
}

function getContendView1(action)
{
    $.ajax({url: action, success: function (result) {
            var html = $(result);
            $("#programacion_sintonia").remove();
            $("#sintonia_botones").html(html[0]);
            $("#sintonia_banner").html(html[2]);
            $("#sintonia_contenido div:first").html($(html[4]).find("div:first").prop("outerHTML"));
            getProgramacionRadio2();
        }});
}

function getContendView(action)
{
    $.ajax({url: action, success: function (result) {
            var html = $(result);
            switch (action)
            {
                case 'radio2.action':
                    $("#programacion_sintonia").remove();
                    $("#sintonia_botones").html(html[0]);
                    $("#sintonia_banner").html(html[2]);
                    $("#sintonia_contenido div:first").html($(html[4]).find("div:first").prop("outerHTML"));
                    break;
                case 'quienes_somos.action':
                    $("#programacion_sintonia").remove();
                    $("#sintonia_botones").html(html[0]);
                    $("#sintonia_banner").html(html[2]);
                    $("#sintonia_contenido div:first").html($(html[4]).find("div:first").prop("outerHTML"));
                    break;
                case 'programacion.action':
                    $("#programacion_sintonia").remove();
                    $("#sintonia_botones").html(html[0]);
                    $("#sintonia_banner").html(html[2]);
                    $("#sintonia_contenido div:first").html($(html[4]).find("div:first").prop("outerHTML"));
                    $("#sintonia_contenido").append($(html[4]).find("div:nth-child(3)").prop("outerHTML"));
                    $("#sintonia_contenido").append($(html[4]).find("div:last").prop("outerHTML"));

                    break;
                case 'podcast.action':
                    $("#programacion_sintonia").remove();
                    $("#sintonia_botones").html(html[0]);
                    $("#sintonia_banner").html(html[2]);
                    $("#sintonia_contenido div:first").html($(html[4]).find("div:first").prop("outerHTML"));
                    break;
            }

        }});
}