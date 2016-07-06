// Counter
(function ($) {

    'use strict';

    if ($.isFunction($.fn['themePluginCounter'])) {

        $(function () {
            $('[data-plugin-counter]:not(.manual), .counters [data-to]').each(function () {
                var $this = $(this),
                        opts;

                var pluginOptions = $this.data('plugin-options');
                if (pluginOptions)
                    opts = pluginOptions;

                $this.themePluginCounter(opts);
            });
        });

    }

}).apply(this, [jQuery]);
// Word Rotate
(function ($) {

    'use strict';

    if ($.isFunction($.fn['themePluginWordRotate'])) {

        $(function () {
            $('[data-plugin-word-rotate]:not(.manual), .word-rotate:not(.manual)').each(function () {
                var $this = $(this),
                        opts;

                var pluginOptions = $this.data('plugin-options');
                if (pluginOptions)
                    opts = pluginOptions;

                $this.themePluginWordRotate(opts);
            });
        });

    }

}).apply(this, [jQuery]);      