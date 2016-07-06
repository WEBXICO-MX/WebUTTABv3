<%-- 
    Document   : hospedaje
    Created on : 26-ene-2015, 10:43:22 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; COTENDCUT &#124; Hospedaje</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Promoción universitaria">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cotendcut.min.css">
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body> 
        <jsp:include page="/WEB-INF/jsp/includeMenu.jsp" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_btn_cotendcut">
                <a href="inicio.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_inicio.png" width="152" height="28" alt="COTENDCUT &#124; Inicio"/></a>
                <a href="sedes.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_sedes.png" width="152" height="28" alt="COTENDCUT &#124; Sedes" /></a>
                <a href="programa.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_programa.png" width="152" height="28" alt="COTENDCUT &#124; Programa" /></a>
                <a href="resultados.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_resultados.png" width="152" height="28" alt="COTENDCUT &#124; Resultados"/></a>
                <a href="hospedaje.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_hospedaje.png" width="152" height="28" alt="COTENDCUT &#124; Hospedaje"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>
                <a href="directorio.action" target="_self"><img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/btn_directorio.png" width="152" height="28" alt="COTENDCUT &#124; Directorio" style="float:right;margin-right: 0px;"/></a>
            </div>
        </div>
        <div id="contenedor2">
            <div class="area_info_cotendcut">
                <!--<div class="area_info_cotendcut_1">
                    <div class="area_info_cotendcut_1_titulo"><h4>Choco's Hotel</h4></div>
                    <div class="area_info_cotendcut_1_info">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/hospedaje_chocos_hotel.png" width="875" height="244" alt="Choco's Hotel"/>
                        <br/><br/>
                        <p>Lino Merino esq. Constitución s/n Col. Centro, C.P. 86000, Villahermosa, Tabasco.</p>
                        <p>Tels. 01 (993) 3129444 &#124; 3129649 &#124; 3129044</p>
                        <p><a href="mailto:chocos@prodigy.net.mx">chocos@prodigy.net.mx</a></p>
                        <p><a href="mailto:chocoshotel@reservaciones.com">chocoshotel@reservaciones.com</a></p>
                        <p><a href="http://www.chocoshotel.com.mx" target="_blank">www.chocoshotel.com.mx</a></p>
                    </div>
                </div>
                <div class="area_info_cotendcut_1">
                    <div class="area_info_cotendcut_1_titulo"><h4>Hotel Ritz</h4></div>
                    <div class="area_info_cotendcut_1_info">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/hospedaje_ritz.jpg" width="875" height="244" alt="Hotel Ritz"/>
                        <br/><br/>
                        <p>Av. Francisco I. Madero No.1009, Col. Centro, C.P. 86000, Villahermosa, Tabasco.</p>
                        <p>Tels. 01(993) 3121611 &#124; 3121636 &#124; 3121660 &#124; 3121092</p>
                        <p><a href="mailto:salvari1@prodigy.net.mx">salvari1@prodigy.net.mx</a></p>
                        <p><a href="mailto:hritz@tabasco.podernet.com">hritz@tabasco.podernet.com</a></p>
                    </div>
                </div>-->
                <div class="area_info_cotendcut_1">
                    <div class="area_info_cotendcut_1_titulo"><h4>Hotel Viva</h4></div>
                    <div class="area_info_cotendcut_1_info">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/hospedaje_viva.png" width="875" height="244" alt="Hotel Viva"/>
                        <br/><br/>
                        <p>Av. Adolfo Ruiz Cortines y Paseo Tabasco s/n Col. Lindavista C.P. 86050 Villahermosa, Tabasco</p>
                        <p>Tels. 01 (993) 313 60 00 | 01800 711 5555</p>
                        <p><a href="mailto:reservahv@hotelviva.com.mx" target="_blank">reservahv@hotelviva.com.mx</a></p>
                        <p><a href="http://www.hotelviva.com.mx" target="_blank">http://www.hotelviva.com.mx</a></p>
                    </div>
                </div>
                <div class="area_info_cotendcut_1">
                    <div class="area_info_cotendcut_1_titulo"><h4>Cityexpress</h4></div>
                    <div class="area_info_cotendcut_1_info">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/hospedaje_cityexpress.png" width="875" height="244" alt="Cityexpress"/>
                        <br/><br/>
                        <p>Av. Adolfo Ruiz Cortinez Poniente 1803-A, Col Atasta, Villahermosa. C.P. 86100</p>
                        <p>Tels. 01 (993) 3109310</p>
                        <p><a href="http://www.cityexpress.com" target="_blank">www.cityexpress.com</a></p>
                    </div>
                </div>
                <div class="area_info_cotendcut_1">
                    <div class="area_info_cotendcut_1_titulo"><h4>Cityexpress junior</h4></div>
                    <div class="area_info_cotendcut_1_info">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/hospedaje_cityexpress_junior.png" width="875" height="244" alt="Cityexpress junior"/>
                        <br/><br/>
                        <p>Avenida Adolfo Ruiz Cortinez Nº. 2103, Atasta de Serra, Villahermosa, C.P. 86100</p>
                        <p>Tels. 01(993)3104351</p>
                        <p><a href="http://www.cityexpress.com" target="_blank">www.cityexpress.com</a></p>
                    </div>
                </div>
                <div class="area_info_cotendcut_1">
                    <div class="area_info_cotendcut_1_titulo"><h4>Hotel Madam</h4></div>
                    <div class="area_info_cotendcut_1_info">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/hospedaje_madam.png" width="875" height="244" alt="Hotel Madam"/>
                        <br/><br/>
                        <p>Av. Francisco I. Madero No.408, Col. Centro, C.P.86000, Villahermosa, Tabasco.</p>
                        <p>Tels. 01(993) 3140518 &#124; 3140524 &#124; 3121650 &#124; 3143373</p>
                        <p><a href="mailto:madam2002@prodigy.net.mx">madam2002@prodigy.net.mx</a></p>
                    </div>
                </div>
                <div class="area_info_cotendcut_1">
                    <div class="area_info_cotendcut_1_titulo"><h4>Hotel Misión Express</h4></div>
                    <div class="area_info_cotendcut_1_info">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/hospedaje_mision_express.jpg" width="875" height="244" alt="Hotel Misión Express"/>
                        <br/><br/>
                        <p>Aldama No.44 esq. 27 de Febrero, Zona Luz, Col. Centro, C.P.86000, Villahermosa, Tabasco.</p>
                        <p>Tels. 01(993) 3144645 &#124; 3129364 &#124; 3129278 &#124; 01800 780 72 72</p>
                    </div>
                </div>
                <div class="area_info_cotendcut_1">
                    <div class="area_info_cotendcut_1_titulo"><h4>Hotel Miraflores</h4></div>
                    <div class="area_info_cotendcut_1_info">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/hospedaje_miraflores.png" width="875" height="244" alt="Hotel Miraflores"/>
                        <br/><br/>
                        <p>Reforma 304, Col. Centro, C.P. 86000, Villahermosa, Tabasco.</p>
                        <p>Tels. 01(993) 3120022 &#124; 3120054 &#124; 3120054 &#124; 01800 2340229</p>
                        <p><a href="mailto:mirafloreshotel@yahoo.com">mirafloreshotel@yahoo.com</a></p>
                       
                    </div>
                </div>
                <div class="area_info_cotendcut_1">
                    <div class="area_info_cotendcut_1_titulo"><h4>Hotel Plaza Independencia</h4></div>
                    <div class="area_info_cotendcut_1_info">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/hospedaje_independencia.png" width="875" height="244" alt="Hotel Plaza Independencia"/>
                        <br/><br/>
                        <p>Independencia No. 123, Col. Centro, C.P. 86000, Villahermosa, Tabasco.</p>
                        <p>Tels. 01(993) 3121299 &#124; 3121120 &#124; 3121298 &#124; 3144724 &#124; 01800 232 99 00</p>
                    </div>
                </div>
                <div class="area_info_cotendcut_1">
                    <div class="area_info_cotendcut_1_titulo"><h4>Hotel Báez Carrizal</h4></div>
                    <div class="area_info_cotendcut_1_info">
                        <img src="${pageContext.request.contextPath}/img/otras_secciones/COTENDCUT/hospedaje_baez_carrizal.png" width="875" height="244" alt="Hotel Báez Carrizal"/>
                        <br/><br/>
                        <p>Av. Ruiz Cortines No. 1802, Col. Atasta, C.P. 86100, Villahermosa, Tabasco</p>
                        <p>Tels. 01(993) 3541438 &#124; 3545081 &#124; 3541368 &#124; 01 800 6851822 </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.jsp" flush="true" />
    </body>
</html>
