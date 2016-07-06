$(document).ready(function() {
    $('#layerslider').layerSlider({
        slideDelay: 3000,
        globalBGColor: '#FFFFFF',
        navStartStop: false,
        navButtons: false,
        autoStart: true,
        skin: 'minimal',
        skinsPath: 'js/JQuery/plugins/layerslider/skins/'
    });

    $('#layerslider_reconocimientos').layerSlider({
        slideDelay: 3000,
        globalBGColor: '#FFFFFF',
        navStartStop: false,
        navButtons: false,
        autoStart: true,
        skin: 'minimal',
        skinsPath: 'js/JQuery/plugins/layerslider/skins/'
    });



    jQuery(function($) {
        $("#tweet_del_dia").tweet({
            username: "UTTAB",
            page: 1,
            avatar_size: null,
            count: 1,
            retweets: true,
            refresh_interval: 50,
            intro_text: "Último tuit:",
            loading_text: "Traer últimos tweets ..."
        }).bind("loaded", function() {
            var ul = $(this).find(".tweet_list");
            var ticker = function() {
                setTimeout(function() {
                    var top = ul.position().top;
                    var h = ul.height();
                    var incr = (h / ul.children().length);
                    var newTop = top - incr;
                    if (h + newTop <= 0)
                        newTop = 0;
                    ul.animate({top: newTop}, 500);
                    ticker();
                }, 5000);
            };
            ticker();
        });
    });

    /*if (getInternetExplorerVersion() != -1) {
        $("#IEFix").html("Con el objetivo de lograr el ...");
    } else {
        $("#IEFix").html("Con el objetivo de lograr el uso racional de la ...");
    }*/
});

function AbrirCentrado(Url, NombreVentana, width, height)
{
    var largo = width;
    var altura = height;
    var top = (screen.height - altura) / 2;
    var izquierda = (screen.width - largo) / 2;
    nuevaVentana = window.open('' + Url + '', '' + NombreVentana + '', 'width=' + largo + ',height=' + altura + ',top=' + top + ',left=' + izquierda + ',directories=0,location=0,menubar=0,resizable=0,scrollbars=0,status=0,titlebar=0,toolbar=0,dialog=yes');
    nuevaVentana.focus();
}

function ValidaMail() {
    var mail = document.formC.txtEmail.value;
    var exr = /^[0-9a-z_\-\.]+(@hotmail\.com$)|(@hotmail\.es$)|(@gmail\.com$)|(@live\.com$)|(@live\.com\.mx$)|(@yahoo\.com$)|(@uttab\.edu\.mx$)/i;
    if (!exr.test(mail))
    {
        $("#div_switch").html("<span class='custom entrar'>La dirección de E-Mail es incorrecta !!</span>")
        document.formC.txtEmail.focus();
        return false;
    }
    else {
        return true;
    }
}

function Grabar()
{
    if ($("#txtEmail").val() === "")
    {
        $("#div_switch").html("<span class='custom entrar'>Debe proporcionar un correo valido!</span>");
        $("#txtEmail").focus();
        return;
    }
    if (ValidaMail()) {
        var datos = $("#formC").serialize();
        $.ajax({url: "SaveEmail?xAccion=GrabarTxt", type: "post", data: datos, success: function(result) {
                var n = result.trim();
                $("#div_switch").html("<span class='custom entrar'>" + n + "</span>");
                $('#div_switch').fadeOut(4000);
                $("#txtEmail").val("");
                $("#txtEmail").focus();
            }
        });
    } else {
        return;
    }
    $('#div_switch').show();
}
