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
<aside class="logos"><img src="${pageContext.request.contextPath}/img/logos6.jpg" alt="Logos Oficiales" width="1007" height="174" border="0" usemap="#Map">
    <map name="Map" id="Map">
        <area shape="rect" coords="328,97,494,172" href="http://omersu.org/" target="_blank"  alt="Observatorio Mexicano de Responsabilidad Social Universitaria"/>
        <area shape="rect" coords="191,10,313,85" href="http://cgut.sep.gob.mx/" target="_blank" alt="Coordinación General de Universidades Tecnológicas y Politécnicas"/>
        <area shape="rect" coords="10,8,181,87" href="http://www.sep.gob.mx/" target="_blank" alt="Secretaría de Educación Pública"/>
        <area shape="rect" coords="318,12,494,88" href="http://www.presidencia.gob.mx/" target="_blank" alt="Presidencia de la República"/>
        <area shape="rect" coords="499,13,572,87" href="ContraloriaSocialPROMEP.action" target="_self" alt="Contraloria Social"/>
        <area shape="rect" coords="577,14,664,90" href="http://www.tabasco.gob.mx/" target="_blank" alt="Gobierno del Estado de Tabasco"/>
        <area shape="rect" coords="670,14,780,94" href="http://www.itaip.org.mx/" target="_blank" alt="Instituto Tabasqueño de Transparencia y Acceso a la Información Pública"/>
        <area shape="rect" coords="785,13,916,93" href="http://www.secotab.gob.mx/" target="_blank" alt="Secretaría de Contraloría de Tabasco"/>
        <area shape="rect" coords="922,14,1003,93" href="http://www.setab.gob.mx/" target="_blank" alt="Secretaría de Educación del Estado de Tabasco"/>
        <area shape="rect" coords="9,93,179,159" href="http://www.universia.net.mx/" target="_blank" alt="Universia"/>
        <area shape="rect" coords="186,94,319,160" href="http://www.ecest.gob.mx/" target="_blank" alt="Espacio Común de Educación Superior y Tecnológica"/>
        <area shape="rect" coords="499,91,573,172" href="http://www.editorialox.com/" target="_blank" alt="Premio Internacional OX"/>
        <area shape="rect" coords="578,97,781,170" href="http://www.cnbes.sep.gob.mx/" target="_blank" alt="pronabes"/>
        <area shape="rect" coords="789,96,1002,169" href="http://www.cnbes.sep.gob.mx/2013/" target="_blank" alt="Coordinación Nacional de Becas de Educación Superior"/>
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
    <%if (!(request.getParameter("Correo") != null)) {%>
                    function ValidaMail() {
                        var mail = document.formC.txtEmail.value;
                        var exr = /^[0-9a-z_\-\.]+(@hotmail\.com$)|(@hotmail\.es$)|(@gmail\.com$)|(@live\.com$)|(@live\.com\.mx$)|(@yahoo\.com$)|(@uttab\.edu\.mx$)/i;
                        if (!exr.test(mail))
                        {
                            $("#div_switch").html("<span class='custom entrar'>La dirección de E-Mail es incorrecta !!</span>");
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
                            $.ajax({url: "${pageContext.request.contextPath}/SaveEmail?xAccion=GrabarTxt", type: "post", data: datos, success: function (result) {
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
    <%}%>
</script>