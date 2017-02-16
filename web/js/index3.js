var informacion_destacada_default = 4;
var informacion_destacada_size = 6;
var posicion_mostrar = 0;
var posicion_ocultar = 0;
var posicion_mostrar2 = 0;
var posicion_ocultar2 = 0;
var actividades_universitareas_default = 4;
var actividades_universitareas_size = 0;

$(document).ready(function () {
    $('#layerslider').layerSlider({
        navStartStop: false,
        navButtons: false,
        autoStart: true,
        skin: 'minimal',
        skinsPath: 'js/JQuery/plugins/layerslider/skins/'
    });
});


function informacionDestacadaAdelante()
{
    if (posicion_mostrar === 0)
    {
        posicion_mostrar = informacion_destacada_default;
        posicion_mostrar = posicion_mostrar + 1;
        posicion_ocultar = posicion_mostrar - informacion_destacada_default;

    } else
    {
        if (posicion_mostrar < informacion_destacada_size)
        {
            posicion_mostrar = posicion_mostrar + 1;
            posicion_ocultar = posicion_mostrar - informacion_destacada_default;
        } else
        {
            return 0;
        }

    }

    $("main section#informacion_destacada div.row:nth-child(2) div:nth-child(1) div.informacion_destacada:nth-child(" + posicion_ocultar + ")").fadeOut("fast", function () {
        $("main section#informacion_destacada div.row:nth-child(2) div:nth-child(1) div.informacion_destacada:nth-child(" + posicion_mostrar + ")").fadeIn("fast");
    });


}

function informacionDestacadaAtras()
{
    if (posicion_mostrar === 0 || posicion_ocultar === 0)
    {
        return 0;
    } else
    {
        $("main section#informacion_destacada div.row:nth-child(2) div:nth-child(1) div.informacion_destacada:nth-child(" + posicion_mostrar + ")").fadeOut("fast", function () {
            $("main section#informacion_destacada div.row:nth-child(2) div:nth-child(1) div.informacion_destacada:nth-child(" + posicion_ocultar + ")").fadeIn("fast", function () {
                posicion_mostrar = posicion_mostrar - 1;
                posicion_ocultar = posicion_ocultar - 1;
            });
        });
    }
}

function actividadesUniversitariasAdelante()
{
    if (posicion_mostrar2 === 0 && (actividades_universitareas_size !== actividades_universitareas_default))
    {
        posicion_mostrar2 = actividades_universitareas_default;
        posicion_mostrar2 = posicion_mostrar2 + 1;
        posicion_ocultar2 = posicion_mostrar2 - actividades_universitareas_default;

    } else
    {
        if (posicion_mostrar2 < actividades_universitareas_size)
        {
            posicion_mostrar2 = posicion_mostrar2 + 1;
            posicion_ocultar2 = posicion_mostrar2 - actividades_universitareas_default;
        } else
        {
            return 0;
        }

    }

    $("main section#actividades_universitarias div.row:nth-child(2) div:nth-child(1) div.actividad_universitaria:nth-child(" + posicion_ocultar2 + ")").fadeOut("fast", function () {
        $("main section#actividades_universitarias div.row:nth-child(2) div:nth-child(1) div.actividad_universitaria:nth-child(" + posicion_mostrar2 + ")").fadeIn("fast");
    });


}

function actividadesUniversitariasAtras()
{
    if (posicion_mostrar2 === 0 || posicion_ocultar2 === 0 || (actividades_universitareas_size === actividades_universitareas_default))
    {
        return 0;
    } else
    {
        $("main section#actividades_universitarias div.row:nth-child(2) div:nth-child(1) div.actividad_universitaria:nth-child(" + posicion_mostrar2 + ")").fadeOut("fast", function () {
            $("main section#actividades_universitarias div.row:nth-child(2) div:nth-child(1) div.actividad_universitaria:nth-child(" + posicion_ocultar2 + ")").fadeIn("fast", function () {
                posicion_mostrar2 = posicion_mostrar2 - 1;
                posicion_ocultar2 = posicion_ocultar2 - 1;
            });
        });
    }
}