<%-- 
    Document   : includePie
    Created on : 10/07/2013, 01:37:42 PM
    Author     : Weisß
--%>
<%@page import="java.util.Calendar,mx.edu.uttab.util.Utilerias"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<footer class="pie">
    <!-- Inicio Escudo y logo del Gobierno del Estado de Tabasco -->
    <div id="pie_escudo_logo_gobierno">
        <img src="${pageContext.request.contextPath}/img/logos_footer_otros.png" alt="Logos"/>
    </div>
    <!-- Fin  Escudo y logo del Gobierno del Estado de Tabasco -->

    <!-- Inicio Follow Me Facebook UTTAB -->
    <div id="pie_followme_facebook">
        <p id="Facebook_UTTAB"><img src="${pageContext.request.contextPath}/img/cambios/Facebook.png" alt="Facebook UTTAB" >&nbsp;&nbsp;S&iacute;guenos en Facebook</p>
        <div class="fb-like-box" data-href="https://www.facebook.com/UTTAB" data-width="230" data-height="105" data-show-faces="false" data-stream="false" data-show-border="false" data-header="false" style=" background-color: #FFFFFF; border-left: 1px solid #999999;border-right: 1px solid #999999;"></div> 
    </div>
    <!-- Fin Follow Me Facebook UTTAB -->

    <!-- Inicio Contacto UTTAB -->
    <div id="pie_contacto_uttab">
        <p id="p1">Contacto</p>
        <p id="p2"><img src="${pageContext.request.contextPath}/img/ubicacion.png" width="12" height="19" alt="ubicacion"/>&nbsp;&nbsp;&nbsp;&nbsp;Carretera Villahermosa - Teapa<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;km. 14.6 S/N, Fraccionamiento &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Parrilla II, Parrilla, Centro, <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tabasco. C.P. 86280</p>
        <p id="p3"><img src="${pageContext.request.contextPath}/img/telefono.png" width="15" height="15" alt="ubicacion"/>&nbsp;&nbsp;&nbsp;&nbsp;+52 (993) 3-58-22-22</p>
        <p id="p4"><img src="${pageContext.request.contextPath}/img/email.png" width="14" height="11" alt="ubicacion"/>&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:buzonrectoriaATuttabDOTeduDOTmx" onclick="this.href = this.href.replace(/AT/, '&#64;').replace(/DOT/, '&#46;').replace(/DOT/, '&#46;')">Buz&oacute;n</a></p>
    </div>
    <!-- Fin Contacto Facebook UTTAB -->

    <!-- Inicio Envianos tu mail -->
    <div id="pie_envianos_email">
        <p id="p5">Env&iacute;anos tu e-mail</p>
        <p id="p6">Para contactarnos contigo</p>
        <div id="div1">
            <form id="formC" name="formC" method="post" autocomplete="off">
                &nbsp;<input type="text" name="txtEmail" id="txtEmail" value=""/>
                <input type="button" value="Enviar" name="btnEnviar" id="btnEnviar" OnClick="Grabar();"/>
                <input name="xAccion" type="hidden" value="nada">
            </form>
            <div id="div_switch" style="text-align: center;">
                <div class="corte"></div>
            </div> 
        </div>
    </div>
    <!-- Fin Envianos tu mail -->
    <div class="corte"></div>
    <!-- Inicio Derechos Reservados -->
    <div id="pie_derechos_reservados">
        <p id="derechos_reservados">Universidad Tecnol&oacute;gica de Tabasco &COPY; <%= Utilerias.getFechaAno(Calendar.getInstance())%>, todos los derechos reservados. <a href="${pageContext.request.contextPath}/AvisoPrivacidad.action" target="_blank">Aviso de privacidad</a>.</p>
    </div>
    <!-- Fin Derechos Reservados -->
    <div class="corte"></div>
</footer>
<aside class="logos">
    <img src="${pageContext.request.contextPath}/img/logos7.jpeg" alt="Logos Oficiales" width="1007" height="174" border="0" usemap="#Map">
    <map name="Map" id="Map">
        <area shape="rect" coords="2,6,170,91" href="http://www.sep.gob.mx/" target="_blank" alt="Secretaría de Educación Pública" />
        <area shape="rect" coords="171,7,267,91" href="http://cgut.sep.gob.mx/" target="_blank" alt="Coordinación General de Universidades Tecnológicas y Politécnicas" />
        <area shape="rect" coords="267,8,426,91" href="http://www.presidencia.gob.mx/" target="_blank" alt="Presidencia de la República" />
        <area shape="rect" coords="426,11,597,91" href="http://www.gob.mx/se/" target="_blank" alt="Secretaría de Economía Federal" />
        <area shape="rect" coords="596,13,666,92" href="ContraloriaSocialPROMEP.action" target="_blank" alt="Contraloria Social" />
        <area shape="rect" coords="669,13,732,91" href="http://www.tabasco.gob.mx/" target="_blank" alt="Gobierno del Estado de Tabasco" />
        <area shape="rect" coords="734,8,827,93" href="http://www.itaip.org.mx/" target="_blank" alt="Instituto Tabasqueño de Transparencia y Acceso a la Información Pública" />
        <area shape="rect" coords="831,9,923,95" href="http://www.secotab.gob.mx/" target="_blank" alt="Secretaría de Contraloría de Tabasco" />
        <area shape="rect" coords="925,9,1005,96" href="http://www.setab.gob.mx/" target="_blank" alt="Secretaría de Educación del Estado de Tabasco" />
        <area shape="rect" coords="3,95,163,171" href="http://www.universia.net.mx/" target="_blank" alt="Universia" />
        <area shape="rect" coords="163,96,301,170" href="http://www.ecest.gob.mx/" target="_blank" alt="Espacio Común de Educación Superior y Tecnológica" />
        <area shape="rect" coords="305,97,471,169" href="http://omersu.org/" target="_blank" alt="Observatorio Mexicano de Responsabilidad Social Universitaria" />
        <area shape="rect" coords="474,95,550,172" href="https://www.inadem.gob.mx/" target="_blank" alt="Instituto Nacional del Emprendedor" />
        <area shape="rect" coords="553,96,616,171" href="http://www.editorialox.com/" target="_blank" alt="Premio Internacional OX" />
        <area shape="rect" coords="619,95,800,172" href="http://www.cnbes.sep.gob.mx/" target="_blank" alt="pronabes" />
        <area shape="rect" coords="803,97,1003,171" href="http://www.cnbes.sep.gob.mx/2013/" target="_blank" alt="Coordinación Nacional de Becas de Educación Superior" />
    </map>
    <div class="corte"></div>
</aside>
<%if (!(request.getParameter("Correo") != null)) {%>
<!-- Herramientas de Accesibilidad -->
<div id="container">
    <div id="inclusion-main">
        <div style="width: 130px; margin: 0 auto;">
            <p style="text-align:left; margin-bottom: 10px; color: #2986C7; font-weight: bold;">Herramientas de accesibilidad</p>
            <a href="javascript:void(0);" id="increase"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/inclusion/a+.png" alt="Texto Grande"/></a>
            <a href="javascript:void(0);" id="decrease"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/inclusion/A-.png" alt="Texto Pequeño"/></a>
            <a href="javascript:void(0);" id="normal"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/inclusion/a.png" alt="Texto Normal"/></a>
            <img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/inclusion/t.png" alt="Cambiar color texto" id="texto_color" />
            <div style="width: 60px; margin: 0 auto;"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/inclusion/Color.png" alt="Cambiar color de fondo" id="fondo_color"/></div>
        </div>
    </div>
    <div id="inclusion-hover"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/inclusion/Boton.png" alt="Herramientas de accesibilidad" title="Herramientas de accesibilidad"/></div>
</div>
<%}%>
<!-- Herramientas de Accesibilidad -->
<%if (!(request.getParameter("Correo") != null)) {%>
<script src="${pageContext.request.contextPath}/js/JQuery/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/JQuery/plugins/colorpicker/js/colorpicker.js"></script>
<script src="${pageContext.request.contextPath}/js/inclusion.min.js"></script>
<%}%>
<script src="${pageContext.request.contextPath}/js/funciones.min.js"></script>
<script>
                    (function (i, s, o, g, r, a, m) {
                        i['GoogleAnalyticsObject'] = r;
                        i[r] = i[r] || function () {
                            (i[r].q = i[r].q || []).push(arguments)
                        }, i[r].l = 1 * new Date();
                        a = s.createElement(o),
                                m = s.getElementsByTagName(o)[0];
                        a.async = 1;
                        a.src = g;
                        m.parentNode.insertBefore(a, m);
                    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

                    ga('create', 'UA-46053347-1', 'uttab.edu.mx');
                    ga('send', 'pageview');


                    var WebFontConfig = {
                        google: {
                            families: ['Open Sans:600,400,700', 'PT Sans:400,700']
                        },
                        timeout: 2000
                    };

                    (function () {
                        var wf = document.createElement("script");
                        wf.src = '${pageContext.request.contextPath}/js/WebFontLoader/webfont-1.6.26.js';
                        wf.async = 'true';
                        document.head.appendChild(wf);
                    })();
</script>