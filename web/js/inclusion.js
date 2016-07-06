$(document).ready(function () {

    $('#decrease').click(function () {
        $('.contenedor *,#contenedor2,#contenedor3,#contenedor_eventos').css('font-size', function (i, v) {
            return (+v.match(/\d+/).join() - 2) + 'px';
        });
    });

    $('#normal').click(function () {
        location.reload();
    });

    $('#increase').click(function () {
        $('.contenedor *,#contenedor2,#contenedor3,#contenedor_eventos').css('font-size', function (i, v) {
            return (+v.match(/\d+/).join() + 2) + 'px';
        });
    });

    $('#texto_color').ColorPicker({
        color: '#0000ff',
        onShow: function (colpkr) {
            $(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            $(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            $('.contenedor *,#contenedor2 *,#contenedor3,#contenedor_eventos').css('color', '#' + hex);
        }
    });

    $('#fondo_color').ColorPicker({
        color: '#0000ff',
        onShow: function (colpkr) {
            $(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            $(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            $('.contenedor,#contenedor2,#contenedor3,#contenedor_eventos').css('background-color', '#' + hex);
        }
    });

    var inclusion = false;
    $('#inclusion-hover').click(function () {
        if (inclusion)
        {
            $('#inclusion-hover').animate({
                right: '0px'
            }, 250);
            $('#inclusion-main').animate({
                right: '-180px'
            }, 250);
            inclusion = false;
        }
        else
        {
            $('#inclusion-hover').animate({
                right: '180px'
            }, 250);
            $('#inclusion-main').animate({
                right: '0px'
            }, 250);
            inclusion = true;
        }
    });

});