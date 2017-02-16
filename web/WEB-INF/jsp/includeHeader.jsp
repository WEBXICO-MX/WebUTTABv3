<%-- 
    Document   : includeHeader
    Created on : 19-nov-2015, 9:56:58
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib  uri="/struts-tags"  prefix="s" %>
<!-- Requerimiento plugin social Facebook -->
<div id="fb-root"></div>
<script>(function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id))
            return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
<!-- Requerimiento plugin social Facebook -->
<header class="encabezado">
    <!-- Logo 20 años UTTAB -->
    <div class="logo_20_anios">
        <img src="${pageContext.request.contextPath}/img/logo_20_anios.png" alt="1996-2016 | 20 aniversario"/>
    </div>
    <!-- Fin Logo 20 años UTTAB -->
    <!-- Redes Sociales -->
    <div class="redesSociales">
        <a href="https://login.microsoftonline.com" target="_blank" title="Correo Institucional"><img src="${pageContext.request.contextPath}/img/cambios/Mail.png" width="37" height="34" alt="Correo"></a>&nbsp;&nbsp;
        <a href="https://www.facebook.com/UTTAB" target="_blank" title="Facebook"><img src="${pageContext.request.contextPath}/img/cambios/Facebook.png" width="38" height="34" alt="Facebook"></a>&nbsp;&nbsp;
        <a href="https://twitter.com/UTTAB" target="_blank" title="Twitter"><img src="${pageContext.request.contextPath}/img/cambios/Twitter.png" width="36" height="34" alt="Twitter"></a>&nbsp;&nbsp;
        <a href="http://www.youtube.com/user/uttabasco" target="_blank" title="Youtube"><img src="${pageContext.request.contextPath}/img/cambios/Youtube.png" width="30" height="34" alt="Youtube"></a>&nbsp;&nbsp;
        <a href="http://instagram.com/uttab" target="_blank" title="Instagram"><img src="${pageContext.request.contextPath}/img/cambios/Instagram.png" width="35" height="34" alt="Instagram"></a>&nbsp;&nbsp;
        <a href="https://www.linkedin.com/edu/school?id=155081" target="_blank" title="Linkedin"><img src="${pageContext.request.contextPath}/img/cambios/Linkedin.png" width="32" height="34" alt="Linkedin"></a>&nbsp;&nbsp;
        <a href="https://www.yammer.com/uttab.edu.mx/" target="_blank" title="Yammer"><img src="${pageContext.request.contextPath}/img/cambios/Yammer.png" width="32" height="30" alt="Yammer"></a>&nbsp;&nbsp;
        <form action="${pageContext.request.contextPath}/Search" style="margin: 0; padding: 0;display:inline;"><input type="text" name="q" id="tipue_search_input" onKeyPress="if ((window.Event ? event.which : event.keyCode) === 13) {
                    this.form.submit();
                }"/></form>
    </div>
    <!-- Fin Redes Sociales -->
    <!-- Menu Principal -->
    <div class="menuPrincipal">
        <div class="nav_top pull-right nav_center " id="navigation">
            <nav>
                <ul class="menu sub-menu" id="menu-menu" style="margin-left: 0px; left: 0%;">
                    <li class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-45" id="menu-item-45"><s:a action="Home" namespace="">Inicio</s:a></li>
                        <li><a href="#">Con&oacute;cenos</a>
                            <ul class="sub-menu">
                                <li><s:a action="mensaje_rector" namespace="/conocenos">Mensaje del Rector</s:a></li>
                            <li><s:a action="historia" namespace="/conocenos">Historia</s:a></li>
                            <li><s:a action="identidad" namespace="/conocenos">Identidad</s:a></li>
                            <li><s:a action="modelo_educativo" namespace="/conocenos">Modelo Educativo</s:a></li>
                            <li><s:a action="sistemas_institucionales" namespace="/conocenos">Sistemas Institucionales de Gesti&oacute;n</s:a></li>
                            <li><s:a action="directorio" namespace="/conocenos">Directorio</s:a></li>
                                <s:url var="url_1_informe_actividades" action="viewFile" namespace="">
                                    <s:param name="i" value="1"></s:param>
                                    <s:param name="d" value="%{'informe_actividades'}"></s:param>
                                </s:url>
                                <s:url var="url_2_informe_actividades" action="viewFile" namespace="">
                                    <s:param name="i" value="2"></s:param>
                                    <s:param name="d" value="%{'informe_actividades'}"></s:param>
                                </s:url>
                                <s:url var="url_3_informe_actividades" action="viewEventoPDF" namespace="">
                                    <s:param name="id" value="123"></s:param>
                                </s:url>
                            <li><s:a href="%{url_1_informe_actividades}" target="_blank">1er. Informe de actividades</s:a></li>
                            <li><s:a href="%{url_2_informe_actividades}" target="_blank">2do. Informe de actividades</s:a></li>
                            <li><s:a href="%{url_3_informe_actividades}" target="_blank">3er. Informe de actividades</s:a></li>
                            <li><s:a action="4to-informe-de-actividades" namespace="/conocenos">4to. Informe de actividades</s:a></li>
                            <li><s:a action="campus" namespace="/conocenos">Campus</s:a></li>
                            <li><s:a action="organigrama" namespace="/conocenos">Organigrama</s:a></li>
                            </ul>
                        </li>
                        <li><a href="#">Oferta Educativa</a>
                            <ul class="sub-menu">
                                <li><s:a action="inicio" namespace="/oferta_educativa/agep" target="_self">Divisi&oacute;n de Administraci&oacute;n y Gesti&oacute;n de Proyectos</s:a>
                                    <ul class="tercer_nivel">
                                        <li><s:a action="ingenieria_gestion_proyectos" namespace="/oferta_educativa/agep" target="_self">Ingenier&iacute;a en Gesti&oacute;n de Proyectos</s:a>
                                            <ul class="cuarto_nivel">
                                                <li><s:a action="tsu_administracion_area_administracion_evaluacion_proyectos" namespace="/oferta_educativa/agep" target="_self">TSU en Administraci&oacute;n &aacute;rea Administraci&oacute;n y Evaluaci&oacute;n de Proyectos</s:a></li>
                                            </ul>
                                        </li>
                                        <li><s:a action="ingenieria_desarrollo_innovacion_empresarial" namespace="/oferta_educativa/agep" target="_self">Ingeniería en Desarrollo e Innovaci&oacute;n Empresarial </s:a>
                                            <ul class="cuarto_nivel">
                                                <li><s:a action="tsu_desarrollo_negocios_area_mercadotecnia" namespace="/oferta_educativa/agep" target="_self">TSU en Desarrollo de Negocios &aacute;rea Mercadotecnia</s:a></li>
                                            </ul>
                                        </li>
                                        <li><s:a action="tsu_contaduria" namespace="/oferta_educativa/agep" target="_self">TSU en Contadur&iacute;a</s:a></li>
                                    </ul>
                                </li>
                                <li><s:a action="inicio" namespace="/oferta_educativa/procesos" target="_self">Divisi&oacute;n de Procesos Industriales</s:a>
                                    <ul class="tercer_nivel">
                                        <!--<li><a href="${pageContext.request.contextPath}/IngenieriaProcesosOperacionesIndustriales" target="_self">Ingenier&iacute;a en Procesos y Operaciones Industriales</a></li>-->
                                    <li><s:a action="ingenieria_procesos_bioalimentarios" namespace="/oferta_educativa/procesos">Ingenier&iacute;a en Procesos Bioalimentarios</s:a>
                                            <ul class="cuarto_nivel">
                                                <li><s:a action="tsu_procesos_alimentarios" namespace="/oferta_educativa/procesos">TSU en Procesos Alimentarios</s:a></li>
                                            </ul>
                                        </li>
                                        <li><s:a action="ingenieria_mantenimiento_industrial" namespace="/oferta_educativa/procesos">Ingenier&iacute;a en Mantenimiento Industrial</s:a>
                                            <ul class="cuarto_nivel">                                                
                                                <li><s:a action="tsu_mantenimiento_area_industrial" namespace="/oferta_educativa/procesos">TSU en Mantenimiento &aacute;rea Industrial</s:a></li>
                                            </ul>
                                        </li>
                                        <li><s:a action="ingenieria_mantenimiento_petrolero" namespace="/oferta_educativa/procesos">Ingenier&iacute;a en Mantenimiento Petrolero</s:a>
                                            <ul class="cuarto_nivel">
                                                <li><s:a action="tsu_mantenimiento_area_petroleo" namespace="/oferta_educativa/procesos">TSU en Mantenimiento &aacute;rea Petr&oacute;leo</s:a></li>
                                            </ul>
                                        </li>
                                        <li><s:a action="tsu_energias_renovables_area_calidad_ahorro_energia" namespace="/oferta_educativa/procesos">TSU en Energías Renovables área Calidad y Ahorro de Energía</s:a></li>
                                    </ul>
                                </li>
                                <li><s:a action="inicio" namespace="/oferta_educativa/quimica" target="_self">Divisi&oacute;n de Qu&iacute;mica</s:a>
                                    <ul class="tercer_nivel">
                                        <li><s:a action="ingenieria_tecnologia_ambiental" namespace="/oferta_educativa/quimica" target="_self">Ingenier&iacute;a en Tecnolog&iacute;a Ambiental</s:a>
                                            <ul class="cuarto_nivel">
                                                <li><s:a action="tsu_quimica_area_tecnologia_ambiental" namespace="/oferta_educativa/quimica" target="_self">TSU en Qu&iacute;mica &aacute;rea Tecnolog&iacute;a Ambiental</s:a></li>
                                            </ul>
                                        </li>
                                        <li><s:a action="ingenieria_quimica_procesos_industriales" namespace="/oferta_educativa/quimica" target="_self">Ingenier&iacute;a en Qu&iacute;mica de Procesos Industriales</s:a>
                                            <ul class="cuarto_nivel">
                                                <li><s:a action="tsu_quimica_area_prevencion_corrosion" namespace="/oferta_educativa/quimica" target="_self">TSU en Qu&iacute;mica &aacute;rea Prevenci&oacute;n de Corrosi&oacute;n</s:a></li>
                                            <li><s:a action="tsu_quimica_area_industrial" namespace="/oferta_educativa/quimica" target="_self">TSU en Qu&iacute;mica &aacute;rea Industrial</s:a></li>
                                            <li><s:a action="tsu_quimica_area_fluidos_perforacion" namespace="/oferta_educativa/quimica" target="_self">TSU en Qu&iacute;mica &aacute;rea Fluidos de Perforaci&oacute;n</s:a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><s:a action="inicio" namespace="/oferta_educativa/tic" target="_self">Divisi&oacute;n de Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n</s:a>
                                    <ul class="tercer_nivel">
                                        <li><s:a action="ingenieria_tecnologias_informacion" namespace="/oferta_educativa/tic" target="_self">Ingenier&iacute;a en Tecnolog&iacute;as de la Informaci&oacute;n</s:a>
                                            <ul class="cuarto_nivel">
                                                <li><s:a action="tsu_tic_area_multimedia_comercio_electronico" namespace="/oferta_educativa/tic" target="_self">TSU en Tecnologías de la Información y Comunicación área Multimedia y Comercio Electrónico</s:a></li>
                                            <li><s:a action="tsu_tic_area_redes_telecomunicaciones" namespace="/oferta_educativa/tic" target="_self">TSU en Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n &aacute;rea Redes y Telecomunicaciones</s:a></li>
                                            <li><s:a action="tsu_tic_area_sistemas_informaticos" namespace="/oferta_educativa/tic" target="_self">TSU en Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n &aacute;rea Sistemas Informáticos</s:a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><s:a action="inicio" namespace="/oferta_educativa/turismo" target="_self">Divisi&oacute;n de Turismo y Gastronom&iacute;a</s:a>
                                    <ul class="tercer_nivel">
                                        <li><s:a action="licenciatura_gastronomia" namespace="/oferta_educativa/turismo" target="_self">Licenciatura en Gastronom&iacute;a</s:a>
                                            <ul class="cuarto_nivel">
                                                <li><s:a action="tsu_gastronomia" namespace="/oferta_educativa/turismo" target="_self">TSU en Gastronom&iacute;a</s:a></li>
                                            </ul>
                                        </li>
                                        <li><s:a action="licenciatura_gestion_desarrollo_turistico" namespace="/oferta_educativa/turismo" target="_self">Licenciatura en Gesti&oacute;n y Desarrollo Tur&iacute;stico</s:a>
                                            <ul class="cuarto_nivel">
                                                <li><s:a action="tsu_turismo_area_hoteleria" namespace="/oferta_educativa/turismo" target="_self">TSU en Tur&iacute;smo &aacute;rea Hoteler&iacute;a</s:a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Servicios</a>
                            <ul class="sub-menu">
                                <li><s:a action="admision" namespace="/servicios">Admisi&oacute;n a la UTTAB</s:a></li>
                                <li><a href="#">Alumnos</a>
                                    <ul class="tercer_nivel">
                                        <li><s:a action="educacion_continua" namespace="/vinculacion">Educación Continua</s:a></li>
                                    <li><s:a action="control_escolar" namespace="/servicios">Control Escolar</s:a></li>
                                    <li><s:a action="tramites_titulacion" namespace="/servicios">Titulación</s:a></li>
                                    <li><s:a action="practicas_empresariales" namespace="/servicios">Estadías Profesionales</s:a></li>
                                    <li><s:a action="becas" namespace="/servicios">Becas</s:a></li>
                                    <li><s:a action="actividades_culturales_deportivas" namespace="/servicios">Actividades Culturales y Deportivas</s:a></li>
                                    <li><s:a action="centro_idiomas" namespace="/servicios">Centro de Idiomas</s:a></li>
                                    <li><s:a action="servicios_medicos" namespace="/servicios">Servicios Médicos</s:a></li>
                                    <li><s:a action="tutorias" namespace="/servicios">Tutorías</s:a></li>
                                    <li><s:a action="atencion_psicopedagogica" namespace="/servicios">Consultorio Psicopedagógico</s:a></li>
                                    <li><s:a action="biblioteca" namespace="/servicios">Biblioteca</s:a></li>
                                    <li><s:a action="transporte" namespace="/servicios">Transporte</s:a></li>
                                    </ul>
                                </li>
                                <li><s:a action="egresados" namespace="/servicios">Egresados</s:a>
                                    <ul class="tercer_nivel">
                                        <li><s:a action="educacion_continua" namespace="/vinculacion">Educación Continua</s:a></li>
                                    </ul>
                                </li>
                                <li><s:a action="bolsa_trabajo" namespace="/servicios">Bolsa de trabajo</s:a></li>
                            <li><s:a action="tutorias" namespace="/servicios">Tutorías</s:a></li>
                            <li><s:a action="calendario_escolar" namespace="/servicios">Calendario escolar</s:a></li>
                            <li><s:a action="centro_idiomas" namespace="/servicios">Centro de Idiomas</s:a></li>
                            <li><s:a action="delf_dalf" namespace="/servicios">Centro Certificador DELF-DALF</s:a></li>
                            <li><s:a action="biblioteca" namespace="/servicios">Biblioteca</s:a></li>
                            </ul>
                        </li>
                        <li><a href="#">Vinculaci&oacute;n</a>
                            <ul class="sub-menu">
                                <li><s:a action="case" namespace="/vinculacion">Centro de Atención al Sector Energético</s:a></li>
                            <li><s:a action="cecap" namespace="/vinculacion">Centro de Calibraci&oacute;n y Pruebas (CECAP)</s:a></li>
                            <li><s:a action="servicios_especializados" namespace="/vinculacion">Servicios Especializados</s:a>
                                    <ul class="tercer_nivel">
                                        <!--<li><s:a action="centro_gastronomico" namespace="/vinculacion">Centro Gastron&oacute;mico Kuku-Uche</s:a></li>-->
                                    <li><s:a action="cecap" namespace="/vinculacion">Centro de Calibraci&oacute;n y Pruebas (CECAP)</s:a></li>
                                    <li><s:a action="capacitacion_profesional" namespace="/vinculacion">Capacitación profesional</s:a></li>
                                    <li><s:a action="servicios_tecnologicos" namespace="/vinculacion">Servicios Tecnológicos</s:a></li>
                                    <li><s:a action="produccion_audiovisual" namespace="/vinculacion">Producción Audiovisual</s:a></li>
                                    <li><s:a action="diseno_imagen" namespace="/vinculacion">Diseño e imagen</s:a></li>
                                    </ul>
                                </li>
                                <li><s:a action="delf_dalf" namespace="/servicios">Centro Certificador DELF-DALF</s:a></li>
                            <li><s:a action="centro_incubacion" namespace="/vinculacion">Centro de Incubaci&oacute;n y Desarrollo de Negocios</s:a>
                                    <ul class="tercer_nivel">
                                        <li><s:a action="cappi" namespace="/vinculacion">Centro de Apoyo para la Protección de la Propiedad Intelectual (CAPPI)</s:a></li>
                                    <li><s:a action="proyectos_incubados" namespace="/vinculacion">Proyectos incubados</s:a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Otras Secciones</a>
                            <ul class="sub-menu">
                                <li><s:a action="actividades_universitarias" namespace="/otras_secciones">Actividades Universitarias</s:a></li>
                            <li><s:a action="avisos" namespace="/otras_secciones">Avisos</s:a></li>
                            <li><s:a action="calendario_eventos" namespace="/otras_secciones">Calendario de eventos</s:a></li>
                            <li><s:a action="gacetas" namespace="/otras_secciones">Gacetas</s:a></li>
                            <li><s:a action="conocer" namespace="/otras_secciones">CONOCER</s:a></li>
                            </ul>
                        </li>
                        <li><s:a action="Transparencia" namespace="" target="_blank">Transparencia</s:a>
                            <ul class="sub-menu">
                                <li><s:a action="AvisoPrivacidad" namespace="" target="_blank">Aviso de privacidad</s:a></li>
                            <li><s:a action="contraloria_social" namespace="/transparencia">Contraloría Social</s:a></li>
                            <li><s:a action="normatividad" namespace="/transparencia">Normatividad</s:a></li>
                            <li><s:a action="programa_institucional_desarrollo" namespace="/transparencia">Programa Institucional de Desarrollo (PIDE)</s:a>
                                    <ul class="tercer_nivel">
                                    <s:url var="url_PIDE_digital" action="viewFile" namespace="">
                                        <s:param name="i" value="%{1}"></s:param>
                                        <s:param name="d" value="%{'PIDE'}"></s:param>
                                    </s:url>
                                        <li><s:a href="%{url_PIDE_digital}" target="_blank">PIDE libro digital</s:a></li>
                                    </ul>
                                </li>
                                <li><s:a action="bienes" namespace="/transparencia">Bienes</s:a></li>
                            <li><a href="http://calidad.uttab.edu.mx/transparencia/" target="_blank">Respuestas a solicitudes de información y cumplimiento de recursos de revisión</a></li>
                        </ul>
                    </li>
                </ul>
            </nav><span class="customSelect" style="display: inline-block;"><span class="customSelectInner" style="width: 220px; display: inline-block;">&ndash;&nbsp;Home</span></span>
        </div>
    </div>
    <!-- Menu Principal -->
    <div class="corte"></div>
</header>