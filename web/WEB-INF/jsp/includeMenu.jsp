<%-- 
    Document   : includeMenu
    Created on : 10/07/2013, 02:01:04 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib  uri="/struts-tags"  prefix="s" %>
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
    <!-- Redes Sociales -->
    <div class="redesSociales">
        <a href="https://login.microsoftonline.com" target="_blank" title="Correo Institucional"><img src="${pageContext.request.contextPath}/img/cambios/Mail.png" width="37" height="34" alt="Correo"></a>&nbsp;&nbsp;
        <a href="https://www.facebook.com/UTTAB" target="_blank" title="Facebook"><img src="${pageContext.request.contextPath}/img/cambios/Facebook.png" width="38" height="34" alt="Facebook"></a>&nbsp;&nbsp;
        <a href="https://twitter.com/UTTAB" target="_blank" title="Twitter"><img src="${pageContext.request.contextPath}/img/cambios/Twitter.png" width="36" height="34" alt="Twitter"></a>&nbsp;&nbsp;
        <a href="http://www.youtube.com/user/uttabasco" target="_blank" title="Youtube"><img src="${pageContext.request.contextPath}/img/cambios/Youtube.png" width="30" height="34" alt="Youtube"></a>&nbsp;&nbsp;
        <a href="http://instagram.com/uttab" target="_blank" title="Instagram"><img src="${pageContext.request.contextPath}/img/cambios/Instagram.png" width="35" height="34" alt="Instagram"></a>&nbsp;&nbsp;
        <a href="https://www.linkedin.com/edu/school?id=155081" target="_blank" title="Linkedin"><img src="${pageContext.request.contextPath}/img/cambios/Linkedin.png" width="32" height="34" alt="Linkedin"></a>&nbsp;&nbsp;
        <a href="https://www.yammer.com/uttab.edu.mx/" target="_blank" title="Yammer"><img src="${pageContext.request.contextPath}/img/cambios/Yammer.png" width="32" height="30" alt="Yammer"></a>&nbsp;&nbsp;
        <form action="${pageContext.request.contextPath}/Search" style="margin: 0; padding: 0;display:inline;"><input type="text" name="q" id="tipue_search_input" onKeyPress="if ((window.Event ? event.which : event.keyCode) === 13) { this.form.submit();}"/></form>
    </div>
    <!-- Fin Redes Sociales -->
    <!-- Menu Principal -->
    <div class="menuPrincipal">
        <div class="nav_top pull-right nav_center " id="navigation">
            <nav>
                <ul class="menu sub-menu" id="menu-menu" style="margin-left: 0px; left: 0%;">
                    <li class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-45" id="menu-item-45"><a href="${pageContext.request.contextPath}/Home">Inicio</a>

                    </li>
                    <li><a href="#">Con&oacute;cenos</a>
                        <ul class="sub-menu">
                            <li><a href="${pageContext.request.contextPath}/Mensaje" target="_self">Mensaje del Rector</a></li>
                            <li><a href="${pageContext.request.contextPath}/Historia" target="_self">Historia</a></li>
                            <li><a href="${pageContext.request.contextPath}/Mision" target="_self">Misi&oacute;n, Visi&oacute;n y Valores</a></li>
                            <li><a href="${pageContext.request.contextPath}/Identidad" target="_self">Identidad</a></li>
                            <li><a href="${pageContext.request.contextPath}/ModeloEducativo" target="_self">Modelo Educativo</a></li>
                            <li><a href="${pageContext.request.contextPath}/SistemasInstitucionales" target="_self">Sistemas Institucionales de Gesti&oacute;n</a></li>
                            <li><a href="${pageContext.request.contextPath}/Directorio" target="_self">Directorio</a></li>
                            <li><a href="${pageContext.request.contextPath}/Organigrama" target="_self">Organigrama</a></li>
                            <li><a href="${pageContext.request.contextPath}/Normatividad" target="_self">Normatividad</a></li>
                            <li><a href="${pageContext.request.contextPath}/PIDE">Programa Institucional de Desarrollo (PIDE)</a></li>
                            <li><a href="${pageContext.request.contextPath}/viewFile.action?i=1&amp;d=PIDE" target="_blank">PIDE (versión digital)</a></li>
                            <li><a href="${pageContext.request.contextPath}/viewFile.action?i=1&amp;d=informe_actividades" target="_blank">1er. Informe de actividades</a></li>
                            <li><a href="${pageContext.request.contextPath}/viewFile.action?i=2&amp;d=informe_actividades" target="_blank">2do. Informe de actividades</a></li>
                            <!--<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-286" id="menu-item-286"><a href="Logros" target="_self">Logros obtenidos</a></li>-->
                            <li><a href="${pageContext.request.contextPath}/Campus" target="_self">Campus</a></li>
                            <li><a href="${pageContext.request.contextPath}/Glosarios" target="_self">Glosarios</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Oferta Educativa</a>
                        <ul class="sub-menu">
                            <li><a href="${pageContext.request.contextPath}/AGEP" target="_self">Divisi&oacute;n de Administraci&oacute;n y Gesti&oacute;n de Proyectos</a>
                                <ul class="tercer_nivel">
                                    <li><a href="${pageContext.request.contextPath}/IngenieriaGestionProyectos" target="_self">Ingenier&iacute;a en Gesti&oacute;n de Proyectos</a>
                                        <ul class="cuarto_nivel">
                                            <li><a href="${pageContext.request.contextPath}/TSUAdministracionAreaAdministracionEvaluacionProyectos" target="_self">TSU en Administraci&oacute;n &aacute;rea Administraci&oacute;n y Evaluaci&oacute;n de Proyectos</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TSUDesarrolloNegociosAreaMercadotecnia" target="_self">TSU en Desarrollo de negocios &aacute;rea mercadotecnia</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/ProcesosIndustriales" target="_self">Divisi&oacute;n de Procesos Industriales</a>
                                <ul class="tercer_nivel">
                                    <li><a href="${pageContext.request.contextPath}/IngenieriaProcesosOperacionesIndustriales" target="_self">Ingenier&iacute;a en Procesos y Operaciones Industriales</a></li>
                                    <li><a href="${pageContext.request.contextPath}/IngenieriaProcesosBioalimentarios" target="_self">Ingenier&iacute;a en Procesos Bioalimentarios</a>
                                        <ul class="cuarto_nivel">
                                            <li><a href="${pageContext.request.contextPath}/TSUProcesosAlimentarios" target="_self">TSU en Procesos Alimentarios</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/IngenieriaMantenimientoIndustrial" target="_self">Ingenier&iacute;a en Mantenimiento Industrial</a>
                                        <ul class="cuarto_nivel">
                                            <li><a href="${pageContext.request.contextPath}/TSUMantenimientoAreaPetroleo" target="_self">TSU en Mantenimiento &aacute;rea Petr&oacute;leo</a></li>
                                            <li><a href="${pageContext.request.contextPath}/TSUMantenimientoAreaIndustrial" target="_self">TSU en Mantenimiento &aacute;rea Industrial</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TSUEnergiasRenovablesAreaCalidadAhorroEnergia" target="_self">TSU en Energías Renovables área Calidad y Ahorro de Energía</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/Quimica" target="_self">Divisi&oacute;n de Qu&iacute;mica</a>
                                <ul class="tercer_nivel">
                                    <li><a href="${pageContext.request.contextPath}/IngenieriaTecnologiaAmbiental" target="_self">Ingenier&iacute;a en Tecnolog&iacute;a Ambiental</a>
                                        <ul class="cuarto_nivel">
                                            <li><a href="${pageContext.request.contextPath}/TSUQuimicaAreaTecnologiaAmbiental" target="_self">TSU en Qu&iacute;mica &aacute;rea Tecnolog&iacute;a Ambiental</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/IngenieriaQuimicaProcesosIndustriales" target="_self">Ingenier&iacute;a en Qu&iacute;mica de Procesos Industriales</a>
                                        <ul class="cuarto_nivel">
                                            <li><a href="${pageContext.request.contextPath}/TSUQuimicaAreaPrevencionCorrosion" target="_self">TSU en Qu&iacute;mica &aacute;rea Prevenci&oacute;n de Corrosi&oacute;n</a></li>
                                            <li><a href="${pageContext.request.contextPath}/TSUQuimicaAreaIndustrial" target="_self">TSU en Qu&iacute;mica &aacute;rea Industrial</a></li>
                                            <li><a href="${pageContext.request.contextPath}/TSUQuimicaAreaFluidosPerforacion" target="_self">TSU en Qu&iacute;mica &aacute;rea Fluidos de Perforaci&oacute;n</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/TIC" target="_self">Divisi&oacute;n de Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n</a>
                                <ul class="tercer_nivel">
                                    <li><a href="${pageContext.request.contextPath}/IngenieriaTecnologiasInformacion" target="_self">Ingenier&iacute;a en Tecnolog&iacute;as de la Informaci&oacute;n</a>
                                        <ul class="cuarto_nivel">
                                            <li><a href="${pageContext.request.contextPath}/TSUTICAreaMultimediaComercioElectronico" target="_self">TSU en Tecnologías de la Información y Comunicación área Multimedia y Comercio Electrónico</a></li>
                                            <li><a href="${pageContext.request.contextPath}/TSUTICAreaRedesTelecomunicaciones" target="_self">TSU en Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n &aacute;rea Redes y Telecomunicaciones</a></li>
                                            <li><a href="${pageContext.request.contextPath}/TSUTICAreaSistemasInformaticos" target="_self">TSU en Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n &aacute;rea Sistemas Informáticos</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/TurismoGastronomia" target="_self">Divisi&oacute;n de Turismo y Gastronom&iacute;a</a>
                                <ul class="tercer_nivel">
                                    <li><a href="${pageContext.request.contextPath}/LicenciaturaGastronomia" target="_self">Licenciatura en Gastronom&iacute;a</a>
                                        <ul class="cuarto_nivel">
                                            <li><a href="${pageContext.request.contextPath}/TSUGastronomia" target="_self">TSU en Gastronom&iacute;a</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/LicenciaturaGestionDesarrolloTuristico" target="_self">Licenciatura en Gesti&oacute;n y Desarrollo Tur&iacute;stico</a>
                                        <ul class="cuarto_nivel">
                                            <li><a href="${pageContext.request.contextPath}/TSUTurismoAreaHoteleria" target="_self">TSU en Tur&iacute;smo &aacute;rea Hoteler&iacute;a</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li><a href="">Servicios</a>
                        <ul class="sub-menu">
                            <li><a href="${pageContext.request.contextPath}/Alumnos">Alumnos</a></li>
                            <li><a href="${pageContext.request.contextPath}/Egresados">Egresados</a></li>
                            <li><a href="${pageContext.request.contextPath}/Profesores">Profesores</a></li>
                            <li><a href="${pageContext.request.contextPath}/Padres">Padres</a></li>
                            <li><a href="javascript:void(0);">Escolares</a>
                                <ul class="tercer_nivel">
                                    <li><a href="${pageContext.request.contextPath}/Admision">Admisi&oacute;n a la UTTAB</a></li>
                                    <li><a href="${pageContext.request.contextPath}/ControlEscolar">Control Escolar</a></li>
                                    <li><a href="${pageContext.request.contextPath}/Titulacion">Titulaci&oacute;n y Seguimiento de Egresados</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/CalendarioEscolar" target="_self">Calendario Escolar</a></li>
                            <!--<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-130" id="menu-item-130"><a href="Biblioteca" target="_self">Biblioteca</a></li>-->
                            <!--<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-130" id="menu-item-130"><a href="ReglamentoEscolar" target="_self">Reglamento Escolar</a></li>-->
                            <li><a href="${pageContext.request.contextPath}/ServiciosMedicos">Servicios M&eacute;dicos</a></li>
                            <li><a href="${pageContext.request.contextPath}/Biblioteca">Biblioteca</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Unidades de Negocios</a>
                        <ul class="sub-menu">
                            <li><a href="${pageContext.request.contextPath}/CECAP">Centro de Calibraci&oacute;n y Pruebas</a></li>
                            <li><a href="${pageContext.request.contextPath}/CentroAtencionSectorEnergetico">Centro de Atención a PEMEX</a></li>
                            <!--<li><a href="${pageContext.request.contextPath}/CentroGastronomico">Centro Gastron&oacute;mico Kuku-Uche</a></li>-->
                            <li><a href="${pageContext.request.contextPath}/CentroCertificadorDELF-DALF">Centro Certificador DELF-DALF</a></li>
                            <li><a href="${pageContext.request.contextPath}/CentroIdiomas">Centro de Idiomas</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Vinculaci&oacute;n</a>
                        <ul class="sub-menu">
                            <li><a href="${pageContext.request.contextPath}/ServiciosTecnologicos">Servicios Especializados</a></li>
                            <li><a href="${pageContext.request.contextPath}/EducacionContinua">Educaci&oacute;n Continua</a></li>
                            <li><a href="${pageContext.request.contextPath}/PracticasEmpresariales">Pr&aacute;cticas Empresariales</a></li>
                            <li><a href="${pageContext.request.contextPath}/CentroIncubacion">Centro de Incubaci&oacute;n y Desarrollo de Negocios</a></li>
                            <li><a href="${pageContext.request.contextPath}/BolsaTrabajo">Bolsa de Trabajo</a></li>
                            <li><a href="${pageContext.request.contextPath}/ExtensionUniversitaria">Extensión Universitaria</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Otras Secciones</a>
                        <ul class="sub-menu">
                            <li><a href="${pageContext.request.contextPath}/ProteccionCivil">Protecci&oacute;n Civil</a></li>
                            <li><a href="${pageContext.request.contextPath}/SitiosDeInteres">Sitios de Inter&eacute;s</a></li>
                            <li><a href="${pageContext.request.contextPath}/Gacetas">Gaceta</a></li>
                            <li><a href="${pageContext.request.contextPath}/ActividadesUniversitarias">Actividades Universitarias</a></li>
                            <li><a href="${pageContext.request.contextPath}/listAvisos">Avisos</a></li>
                            <li><a href="${pageContext.request.contextPath}/ContraloriaSocialPROMEP">Contralor&iacute;a Social</a></li>
                            <li><a href="${pageContext.request.contextPath}/CalendarioEventos">Calendario de eventos</a></li>
                            <li><a href="${pageContext.request.contextPath}/viewFile.action?i=1&amp;d=manualSeguridadANUIES" target="_blank">Manual de seguridad ANUIES</a></li>
                            <li><a href="${pageContext.request.contextPath}/HerramientasTecnologicas">Herramientas Tecnológicas</a></li>
                            <li><s:a action="radio" namespace="/sintonia">Sintonía UTTAB 102.5 FM</s:a></li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/Transparencia.action" target="_blank">Transparencia</a>
                        <ul class="sub-menu">
                            <li><a href="${pageContext.request.contextPath}/AvisoPrivacidad.action" target="_blank">Aviso de privacidad</a></li>
                        </ul>
                    </li>
                </ul>
            </nav><span class="customSelect" style="display: inline-block;"><span class="customSelectInner" style="width: 220px; display: inline-block;">&ndash;&nbsp;Home</span></span>
        </div>
    </div>
    <!-- Menu Principal -->
    <div class="corte"></div>
</header>