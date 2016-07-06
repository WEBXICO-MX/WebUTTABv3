var i = 0;
var mtz = new Array("Laboratorios equipados", "Transporte escolar gratuito", "Opciones de movilidad al extranjero", "Estadía en empresas el último cuatrimestre", "Centro de idiomas dentro del campus universitario", "Cursos gratuitos para egresados");

$(document).ready(function () {

    $("#js-rotating").Morphext({
        animation: "bounceInDown",
        separator: ",",
        speed: 4000,
        complete: function () {
            if (i > 5)
            {
                i = 0;
            }
            $("#icono_beneficios").attr("src", "../../img/divisiones/carreras/" + (i + 1) + ".png");
            $("#icono_beneficios").attr("alt", mtz[i]);
            i++;
        }
    });

});

