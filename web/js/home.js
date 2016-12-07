$(document).ready(function () {
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



    jQuery(function ($) {
        $("#tweet_del_dia").tweet({
            username: "UTTAB",
            page: 1,
            avatar_size: null,
            count: 1,
            retweets: true,
            refresh_interval: 50,
            intro_text: "Último tuit:",
            loading_text: "Traer últimos tweets ..."
        }).bind("loaded", function () {
            var ul = $(this).find(".tweet_list");
            var ticker = function () {
                setTimeout(function () {
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