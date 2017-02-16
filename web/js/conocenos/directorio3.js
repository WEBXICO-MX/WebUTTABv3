var direccion_informatica = false;
var servicios_escolares = false;
var planeacion_evaluacion = false;
var administracion_finanzas = false;
var secretaria_vinculacion = false;
var secretaria_academica = false;

function mostrar(id)
{

    switch (id)
    {
        case 'direccion_informatica':
            console.log('direccion_informatica');
            if (direccion_informatica)
            {
                $("#areas_" + id).fadeOut('slow', function () {
                    direccion_informatica = false;
                    $("#" + id).html("Ver más (+)");
                });

            } else
            {   window.location.href = "#areas_direccion_informatica";
                $("#areas_" + id).fadeIn('slow', function () {
                    direccion_informatica = true;
                    $("#" + id).html("Ver menos (-)");
                });
            }

            break;
        case 'servicios_escolares':
            console.log('servicios_escolares');
            if (servicios_escolares)
            {
                $("#areas_" + id).fadeOut('slow', function () {
                    servicios_escolares = false;
                    $("#" + id).html("Ver más (+)");
                });

            } else
            {
                $("#areas_" + id).fadeIn('slow', function () {
                    servicios_escolares = true;
                    $("#" + id).html("Ver menos (-)");
                });
            }

            break;
        case 'planeacion_evaluacion':
            console.log('planeacion_evaluacion');
            if (planeacion_evaluacion)
            {
                $("#areas_" + id).fadeOut('slow', function () {
                    planeacion_evaluacion = false;
                    $("#" + id).html("Ver más (+)");
                });

            } else
            {
                $("#areas_" + id).fadeIn('slow', function () {
                    planeacion_evaluacion = true;
                    $("#" + id).html("Ver menos (-)");
                });
            }

            break;
        case 'administracion_finanzas':
            console.log('administracion_finanzas');
            if (administracion_finanzas)
            {
                $("#areas_" + id).fadeOut('slow', function () {
                    administracion_finanzas = false;
                    $("#" + id).html("Ver más (+)");
                });

            } else
            {
                $("#areas_" + id).fadeIn('slow', function () {
                    administracion_finanzas = true;
                    $("#" + id).html("Ver menos (-)");
                });
            }

            break;
        case 'secretaria_vinculacion':
            console.log('secretaria_vinculacion');
            if (secretaria_vinculacion)
            {
                $("#areas_enlace_empresarial").fadeOut('slow', function () {
                    secretaria_vinculacion = false;
                    $("#" + id).html("Ver más (+)");
                });

                $("#areas_servicios_especializados").fadeOut('slow');
                $("#areas_difusion_universitaria").fadeOut('slow');

            } else
            {
                $("#areas_enlace_empresarial").fadeIn('slow', function () {
                    secretaria_vinculacion = true;
                    $("#" + id).html("Ver menos (-)");
                });

                $("#areas_servicios_especializados").fadeIn('slow');
                $("#areas_difusion_universitaria").fadeIn('slow');
            }

            break;
        case 'secretaria_academica':
            console.log('secretaria_academica');
            if (secretaria_academica)
            {
                $("#areas_" + id).fadeOut('slow', function () {
                    secretaria_academica = false;
                    $("#" + id).html("Ver más (+)");
                });

            } else
            {   
                $("#areas_" + id).fadeIn('slow', function () {
                    secretaria_academica = true;
                    $("#" + id).html("Ver menos (-)");
                });
            }

            break;
    }


}