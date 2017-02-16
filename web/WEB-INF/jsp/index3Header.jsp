<%-- 
    Document   : index3Header
    Created on : 27-dic-2016, 13:03:55
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib  uri="/struts-tags"  prefix="s" %>
<header>
    <div class="encabezado">
        <h1 class="oculto">Universidad Tecnológica de Tabasco</h1>
        <!-- Logo 20 años UTTAB -->
        <div class="logo">
            <s:a action="Home" namespace=""><img src="${pageContext.request.contextPath}/img2/logo.png" alt="Logo Universidad Tecnológica de Tabasco (UTTAB)"/></s:a>
            </div>
            <!-- Fin Logo 20 años UTTAB -->
            <div class="menuPrincipal">
                <div class="nav_top pull-right nav_center " id="navigation">
                    <nav>
                        <ul class="menu sub-menu" id="menu-menu" style="margin-left: 0px; left: 0%;">
                            <!--<li class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-45" id="menu-item-45"><s:a action="Home" namespace="">Inicio</s:a></li>-->
                            <li><a href="#">Con&oacute;cenos</a>
                                <ul class="sub-menu">
                                    <li><s:a action="mensaje-rector" namespace="/conocenos">Mensaje del Rector</s:a></li>
                                <li><s:a action="historia" namespace="/conocenos">Historia</s:a></li>
                                <li><s:a action="identidad" namespace="/conocenos">Identidad</s:a></li>
                                <li><s:a action="modelo-educativo" namespace="/conocenos">Modelo Educativo</s:a></li>
                                <li><s:a action="sistema-gestion-calidad" namespace="/conocenos">Sistema de Gestión de la Calidad</s:a></li>
                                <li><s:a action="directorio" namespace="/conocenos">Directorio</s:a></li>
                                <li><a href="${pageContext.request.contextPath}/informes/1erInformeActividades.pdf" target="_blank">1er. Informe de actividades</a></li>
                                <li><a href="${pageContext.request.contextPath}/informes/2doInformeActividades.pdf" target="_blank">2do. Informe de actividades</a></li>
                                <li><a href="${pageContext.request.contextPath}/informes/3erInformeActividades.pdf" target="_blank">3er. Informe de actividades</a></li>
                                <li><s:a action="4to-informe-de-actividades" namespace="/conocenos">4to. Informe de actividades</s:a></li>
                                <li><s:a action="campus" namespace="/conocenos">Campus</s:a></li>
                                <li><s:a action="organigrama" namespace="/conocenos">Organigrama</s:a></li>
                                </ul>
                            </li>
                            <li><a href="#">Oferta Educativa</a>
                                <ul class="sub-menu">
                                    <li><s:a action="inicio" namespace="/oferta-educativa/agep" target="_self">Divisi&oacute;n de Administraci&oacute;n y Gesti&oacute;n de Proyectos</s:a>
                                        <ul class="tercer_nivel">
                                            <li><s:a action="ingenieria-gestion-proyectos" namespace="/oferta-educativa/agep" target="_self">Ingenier&iacute;a en Gesti&oacute;n de Proyectos</s:a>
                                                <ul class="cuarto_nivel">
                                                    <li><s:a action="tsu-administracion-area-administracion-evaluacion-proyectos" namespace="/oferta-educativa/agep" target="_self">TSU en Administraci&oacute;n &aacute;rea Administraci&oacute;n y Evaluaci&oacute;n de Proyectos</s:a></li>
                                                </ul>
                                            </li>
                                            <li><s:a action="ingenieria-desarrollo-innovacion-empresarial" namespace="/oferta-educativa/agep" target="_self">Ingeniería en Desarrollo e Innovaci&oacute;n Empresarial </s:a>
                                                <ul class="cuarto_nivel">
                                                    <li><s:a action="tsu-desarrollo-negocios-area-mercadotecnia" namespace="/oferta-educativa/agep" target="_self">TSU en Desarrollo de Negocios &aacute;rea Mercadotecnia</s:a></li>
                                                </ul>
                                            </li>
                                            <li><s:a action="tsu-contaduria" namespace="/oferta-educativa/agep" target="_self">TSU en Contadur&iacute;a</s:a></li>
                                        </ul>
                                    </li>
                                    <li><s:a action="inicio" namespace="/oferta-educativa/procesos" target="_self">Divisi&oacute;n de Procesos Industriales</s:a>
                                        <ul class="tercer_nivel">
                                            <!--<li><a href="${pageContext.request.contextPath}/IngenieriaProcesosOperacionesIndustriales" target="_self">Ingenier&iacute;a en Procesos y Operaciones Industriales</a></li>-->
                                        <li><s:a action="ingenieria-procesos-bioalimentarios" namespace="/oferta-educativa/procesos">Ingenier&iacute;a en Procesos Bioalimentarios</s:a>
                                                <ul class="cuarto_nivel">
                                                    <li><s:a action="tsu-procesos-alimentarios" namespace="/oferta-educativa/procesos">TSU en Procesos Alimentarios</s:a></li>
                                                </ul>
                                            </li>
                                            <li><s:a action="ingenieria-mantenimiento-industrial" namespace="/oferta-educativa/procesos">Ingenier&iacute;a en Mantenimiento Industrial</s:a>
                                                <ul class="cuarto_nivel">                                                
                                                    <li><s:a action="tsu-mantenimiento-area-industrial" namespace="/oferta-educativa/procesos">TSU en Mantenimiento &aacute;rea Industrial</s:a></li>
                                                </ul>
                                            </li>
                                            <li><s:a action="ingenieria-mantenimiento-petrolero" namespace="/oferta-educativa/procesos">Ingenier&iacute;a en Mantenimiento Petrolero</s:a>
                                                <ul class="cuarto_nivel">
                                                    <li><s:a action="tsu-mantenimiento-area-petroleo" namespace="/oferta-educativa/procesos">TSU en Mantenimiento &aacute;rea Petr&oacute;leo</s:a></li>
                                                </ul>
                                            </li>
                                            <li><s:a action="tsu-energias-renovables-area-calidad-ahorro-energia" namespace="/oferta-educativa/procesos">TSU en Energías Renovables área Calidad y Ahorro de Energía</s:a></li>
                                        </ul>
                                    </li>
                                    <li><s:a action="inicio" namespace="/oferta-educativa/quimica" target="_self">Divisi&oacute;n de Qu&iacute;mica</s:a>
                                        <ul class="tercer_nivel">
                                            <li><s:a action="ingenieria-tecnologia-ambiental" namespace="/oferta-educativa/quimica" target="_self">Ingenier&iacute;a en Tecnolog&iacute;a Ambiental</s:a>
                                                <ul class="cuarto_nivel">
                                                    <li><s:a action="tsu-quimica-area-tecnologia-ambiental" namespace="/oferta-educativa/quimica" target="_self">TSU en Qu&iacute;mica &aacute;rea Tecnolog&iacute;a Ambiental</s:a></li>
                                                </ul>
                                            </li>
                                            <li><s:a action="ingenieria-quimica-procesos-industriales" namespace="/oferta-educativa/quimica" target="_self">Ingenier&iacute;a en Qu&iacute;mica de Procesos Industriales</s:a>
                                                <ul class="cuarto_nivel">
                                                    <li><s:a action="tsu-quimica-area-prevencion-corrosion" namespace="/oferta-educativa/quimica" target="_self">TSU en Qu&iacute;mica &aacute;rea Prevenci&oacute;n de Corrosi&oacute;n</s:a></li>
                                                <li><s:a action="tsu-quimica-area-industrial" namespace="/oferta-educativa/quimica" target="_self">TSU en Qu&iacute;mica &aacute;rea Industrial</s:a></li>
                                                <li><s:a action="tsu-quimica-area-fluidos-perforacion" namespace="/oferta-educativa/quimica" target="_self">TSU en Qu&iacute;mica &aacute;rea Fluidos de Perforaci&oacute;n</s:a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><s:a action="inicio" namespace="/oferta-educativa/tic" target="_self">Divisi&oacute;n de Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n</s:a>
                                        <ul class="tercer_nivel">
                                            <li><s:a action="ingenieria-tecnologias-informacion" namespace="/oferta-educativa/tic" target="_self">Ingenier&iacute;a en Tecnolog&iacute;as de la Informaci&oacute;n</s:a>
                                                <ul class="cuarto_nivel">
                                                    <li><s:a action="tsu-tic-area-multimedia-comercio-electronico" namespace="/oferta-educativa/tic" target="_self">TSU en Tecnologías de la Información y Comunicación área Multimedia y Comercio Electrónico</s:a></li>
                                                <li><s:a action="tsu-tic-area-redes-telecomunicaciones" namespace="/oferta-educativa/tic" target="_self">TSU en Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n &aacute;rea Redes y Telecomunicaciones</s:a></li>
                                                <li><s:a action="tsu-tic-area-sistemas-informaticos" namespace="/oferta-educativa/tic" target="_self">TSU en Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n &aacute;rea Sistemas Informáticos</s:a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><s:a action="inicio" namespace="/oferta-educativa/turismo" target="_self">Divisi&oacute;n de Turismo y Gastronom&iacute;a</s:a>
                                        <ul class="tercer_nivel">
                                            <li><s:a action="licenciatura-gastronomia" namespace="/oferta-educativa/turismo" target="_self">Licenciatura en Gastronom&iacute;a</s:a>
                                                <ul class="cuarto_nivel">
                                                    <li><s:a action="tsu-gastronomia" namespace="/oferta-educativa/turismo" target="_self">TSU en Gastronom&iacute;a</s:a></li>
                                                </ul>
                                            </li>
                                            <li><s:a action="licenciatura-gestion-desarrollo-turistico" namespace="/oferta-educativa/turismo" target="_self">Licenciatura en Gesti&oacute;n y Desarrollo Tur&iacute;stico</s:a>
                                                <ul class="cuarto_nivel">
                                                    <li><s:a action="tsu-turismo-area-hoteleria" namespace="/oferta-educativa/turismo" target="_self">TSU en Tur&iacute;smo &aacute;rea Hoteler&iacute;a</s:a></li>
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
                                            <li><s:a action="educacion-continua" namespace="/vinculacion">Educación Continua</s:a></li>
                                        <li><s:a action="control-escolar" namespace="/servicios">Control Escolar</s:a></li>
                                        <li><s:a action="tramites-titulacion" namespace="/servicios">Titulación</s:a></li>
                                        <li><s:a action="practicas-empresariales" namespace="/servicios">Estadías Profesionales</s:a></li>
                                        <li><s:a action="becas" namespace="/servicios">Becas</s:a></li>
                                        <li><s:a action="actividades-culturales-deportivas" namespace="/servicios">Actividades Culturales y Deportivas</s:a></li>
                                        <li><s:a action="centro-idiomas" namespace="/servicios">Centro de Idiomas</s:a></li>
                                        <li><s:a action="servicios-medicos" namespace="/servicios">Servicios Médicos</s:a></li>
                                        <li><s:a action="tutorias" namespace="/servicios">Tutorías</s:a></li>
                                        <li><s:a action="atencion-psicopedagogica" namespace="/servicios">Consultorio Psicopedagógico</s:a></li>
                                        <li><s:a action="biblioteca" namespace="/servicios">Biblioteca</s:a></li>
                                        <li><s:a action="transporte" namespace="/servicios">Transporte</s:a></li>
                                        </ul>
                                    </li>
                                    <li><s:a action="egresados" namespace="/servicios">Egresados</s:a>
                                        <ul class="tercer_nivel">
                                            <li><s:a action="educacion-continua" namespace="/vinculacion">Educación Continua</s:a></li>
                                        </ul>
                                    </li>
                                    <li><s:a action="bolsa-trabajo" namespace="/servicios">Bolsa de trabajo</s:a></li>
                                <li><s:a action="tutorias" namespace="/servicios">Tutorías</s:a></li>
                                <li><s:a action="calendario-escolar" namespace="/servicios">Calendario escolar</s:a></li>
                                <li><s:a action="centro-idiomas" namespace="/servicios">Centro de Idiomas</s:a></li>
                                <li><s:a action="delf-dalf" namespace="/servicios">Centro Certificador DELF-DALF</s:a></li>
                                <li><s:a action="biblioteca" namespace="/servicios">Biblioteca</s:a></li>
                                </ul>
                            </li>
                            <li><a href="#">Vinculaci&oacute;n</a>
                                <ul class="sub-menu">
                                    <li><s:a action="case" namespace="/vinculacion">Centro de Atención al Sector Energético</s:a></li>
                                <li><s:a action="cecap" namespace="/vinculacion">Centro de Calibraci&oacute;n y Pruebas (CECAP)</s:a></li>
                                <li><s:a action="servicios-especializados" namespace="/vinculacion">Servicios Especializados</s:a>
                                        <ul class="tercer_nivel">
                                            <!--<li><s:a action="centro-gastronomico" namespace="/vinculacion">Centro Gastron&oacute;mico Kuku-Uche</s:a></li>-->
                                        <li><s:a action="cecap" namespace="/vinculacion">Centro de Calibraci&oacute;n y Pruebas (CECAP)</s:a></li>
                                        <li><s:a action="capacitacion-profesional" namespace="/vinculacion">Capacitación profesional</s:a></li>
                                        <li><s:a action="servicios-tecnologicos" namespace="/vinculacion">Servicios Tecnológicos</s:a></li>
                                        <li><s:a action="produccion-audiovisual" namespace="/vinculacion">Producción Audiovisual</s:a></li>
                                        <li><s:a action="diseno-imagen" namespace="/vinculacion">Diseño e imagen</s:a></li>
                                        </ul>
                                    </li>
                                    <li><s:a action="delf-dalf" namespace="/servicios">Centro Certificador DELF-DALF</s:a></li>
                                <li><s:a action="centro-incubacion" namespace="/vinculacion">Centro de Incubaci&oacute;n y Desarrollo de Negocios</s:a>
                                        <ul class="tercer_nivel">
                                            <li><s:a action="cappi" namespace="/vinculacion">Centro de Apoyo para la Protección de la Propiedad Intelectual (CAPPI)</s:a></li>
                                        <li><s:a action="proyectos-incubados" namespace="/vinculacion">Proyectos incubados</s:a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#">Otras Secciones</a>
                                <ul class="sub-menu">
                                <li><s:a action="actividades-universitarias" namespace="/otras-secciones">Noticias</s:a></li>
                                <li><s:a action="avisos" namespace="/otras-secciones">Avisos</s:a></li>
                                <li><s:a action="calendario-eventos" namespace="/otras-secciones">Calendario de eventos</s:a></li>
                                <li><s:a action="gacetas" namespace="/otras-secciones">Gacetas</s:a></li>
                                <li><s:a action="conocer" namespace="/otras-secciones">CONOCER</s:a></li>
                                <li><s:a action="convocatorias" namespace="/otras-secciones">Convocatorias</s:a></li>
                                <li><s:a action="reconocimientos" namespace="/otras-secciones">Reconocimientos</s:a></li>
                                </ul>
                            </li>
                            <li><s:a action="Transparencia" namespace="" target="_blank">Transparencia</s:a>
                                <ul class="sub-menu">
                                    <li><s:a action="AvisoPrivacidad" namespace="" target="_blank">Aviso de privacidad</s:a></li>
                                <li><s:a action="contraloria-social" namespace="/transparencia">Contraloría Social</s:a></li>
                                <li><s:a action="normatividad" namespace="/transparencia">Normatividad</s:a></li>
                                <li><s:a action="programa-institucional-desarrollo" namespace="/transparencia">Programa Institucional de Desarrollo (PIDE)</s:a>
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
                                <li><s:a action="fondos-extraordinarios" namespace="/transparencia">Fondos extraordinarios</s:a></li>
                            </ul>
                        </li>
                    </ul>
                </nav><span class="customSelect" style="display: inline-block;"><span class="customSelectInner" style="width: 220px; display: inline-block;">&ndash;&nbsp;Home</span></span>
            </div>
            <div class="corte"></div>
        </div>
    </div>                         
</header>