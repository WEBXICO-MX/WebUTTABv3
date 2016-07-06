<%-- 
    Document   : index
    Created on : 27/05/2013, 01:35:28 PM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Universidad Tecnológica de Tabasco</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco, también conocida como UTTAB, es una universidad publica localizada en Villa Parrilla, Tabasco, México.">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link href="img/favicon.ico" rel="icon" >
        <link href="css/principal2.min.css" rel="stylesheet" media="all">
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="WEB-INF/jsp/includeHeader.jsp" flush="true"  />
        <main>
            <!-- Eventos -->        
            <section class="eventos">
                <h2 style="display:none;">Eventos</h2>
                <article id="layerslider">
                    <s:if test="eventoList.size() > 0">
                        <s:iterator value="eventoList" status="eventoStatus">
                            <figure class="ls-layer" <s:if test="!(pdf.equalsIgnoreCase('NULL') && link.equalsIgnoreCase('NULL'))">onmouseover="this.style.cursor = 'pointer';" onclick="window.open('<s:if test="pdf.equalsIgnoreCase('NULL')"><s:property value="link" /></s:if><s:else><s:url id="pdfURL" action="viewEventoPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url><s:property value="#pdfURL"/></s:else>', '_blank');"</s:if>>
                                <s:if test="!img1.equalsIgnoreCase('NULL')">
                                    <img src="<s:property value="img1" />" alt="layer" width="1002" height="401" class="ls-bg" style="margin: 0 auto;" >  
                                </s:if>
                                <s:if test="!img2.equalsIgnoreCase('NULL')">
                                    <img class="ls-s2" src="<s:property value="img2" />" alt="sublayer" rel="<s:property value="efectos2"/>" >
                                </s:if>
                                <s:if test="!img3.equalsIgnoreCase('NULL')">
                                    <img class="ls-s3" src="<s:property value="img3" />" alt="sublayer" rel="<s:property value="efectos3"/>" > 
                                </s:if>
                                <s:if test="!img4.equalsIgnoreCase('NULL') && !img4.equalsIgnoreCase('')">
                                    <img class="ls-s4" src="<s:property value="img4" />" alt="sublayer" rel="<s:property value="efectos4"/>" > 
                                </s:if>
                                <s:if test="!img5.equalsIgnoreCase('') && !img5.equalsIgnoreCase('')">
                                    <img class="ls-s5" src="<s:property value="img5" />" alt="sublayer" rel="<s:property value="efectos5"/>" > 
                                </s:if>
                                <s:if test="!img6.equalsIgnoreCase('') && !img6.equalsIgnoreCase('')">
                                    <img class="ls-s6" src="<s:property value="img6" />" alt="sublayer" rel="<s:property value="efectos6"/>" > 
                                </s:if>
                            </figure>
                        </s:iterator>
                    </s:if>
                </article>
                <div class="corte"></div>
            </section>
            <!-- Fin Eventos --> 
            <!-- Logros universitarios -->
            <section class="logros_univesitarios">
                <header>
                    <h1>Información destacada</h1>
                </header>
                <article>
                    <section id="slider-contenido">
                        <div class="navig-nivo ps"> <a class="next"><span class="a-l" style="margin-left: 0px;">›</span><span class="a-r" style="display: none; margin-left: 0px;">›</span></a><a class="prev"><span class="a-l" style="margin-left: 0px;">‹</span><span class="a-r" style="display: none; margin-left: 0px;">‹</span></a></div>
                        <div id="ps-slider" class="ps-slider" data-autoslide="0" data-autoslide_on="0">
                            <div id="ps-albums">
                                <div class="ps-album">
                                    <div class="ps-album-inner">
                                        <div class="counters counters-text-dark">
                                            <div class="counter appear-animation logro1" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                                <strong data-to="4196" data-append="" id="logros_numero_de_alumnos">0</strong>
                                                <label>Alumnos</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ps-album">
                                    <div class="ps-album-inner">
                                        <div class="counters counters-text-dark">
                                            <div class="counter appear-animation logro2" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                                <strong data-to="70" data-append=" Mbps">0</strong>
                                                <label>de ancho de banda de internet</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ps-album">
                                    <div class="ps-album-inner">
                                        <div class="counters counters-text-dark">
                                            <div class="counter appear-animation logro3" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                                <strong data-to="12329" data-append="">0</strong>
                                                <label>egresados en la historia de la UTTAB</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ps-album">
                                    <div class="ps-album-inner">
                                        <div class="counters counters-text-dark">
                                            <div class="counter appear-animation logro4" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                                <strong data-to="52" data-append="%">0</strong>
                                                <label>docentes con posgrado</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                                <div class="ps-album">
                                    <div class="ps-album-inner">
                                        <div class="counters counters-text-dark">
                                            <div class="counter appear-animation logro5" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                                <strong data-to="10" data-append=" de 11">0</strong>
                                                <label>de programas TSU evaluados y/o acreditados</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ps-album">
                                    <div class="ps-album-inner">
                                        <div class="counters counters-text-dark">
                                            <div class="counter appear-animation logro6" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                                <strong data-to="46" data-append="">0</strong>
                                                <label>alumnos en movilidad internacional</label>
                                                <small>(sep 14 -ago 15)</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ps-album">
                                    <div class="ps-album-inner">
                                        <div class="counters counters-text-dark">
                                            <div class="counter appear-animation logro7" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                                <strong data-to="16" data-append="">0</strong>
                                                <label>programas de TSU</label>
                                                <strong data-to="9" data-append="">0</strong>
                                                <label>de licenciatura</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ps-album">
                                    <div class="ps-album-inner">
                                        <div class="counters counters-text-dark">
                                            <div class="counter appear-animation logro8" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                                <strong data-to="1" data-append=" de cada 2">0</strong>
                                                <label>alumnos con beca</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="corte"></div>
                            </div>
                            <div class="corte"></div>
                        </div>
                    </section>
                    <div style=" clear: both;"></div>
                </article>
            </section>
            <!-- Fin Logros universitarios -->
            <section class="tweet" id="tweet_del_dia"><h2>Tweet del día</h2></section>
            <!-- Actividades universitarias -->        
            <section class="actividadesUniv">
                <div class="container">
                    <div class="row">
                        <div class="span12">
                            <div class="row-fluid row-dynamic-el">
                                <div class="span12 team_carousel ">
                                    <div class="row-fluid"><div class="span12"><div class="header">
                                                <h3>Actividades Universitarias</h3><div class="pagination"><a title="Previous" class="prev" href="" style="display: block;"></a><a title="Next" class="next" href="" style="display: block;"></a></div><span class="border_style_color"></span>
                                            </div></div>
                                    </div>
                                    <div class="row-fluid">
                                        <s:if test="actividadList.size() > 0">
                                            <div class="span5">
                                                <s:url id="imgWebURL" action="viewActividadUniversitariaIMG" var="imgWebURL"><s:param name="id" value="actividad.id"></s:param></s:url>
                                                <img src="<s:property value="#imgWebURL"/>" alt="<s:property value="actividad.nombre" />" style="cursor: pointer;" onclick="window.open('<s:if test="actividad.pdf.equalsIgnoreCase('NULL')"><s:property value="actividad.link" /></s:if><s:else><s:url id="pdfURL" action="viewActividadUniversitariaPDF" var="pdfURL"><s:param name="id" value="actividad.id"></s:param></s:url><s:property value="#pdfURL"/></s:else>', '_blank');">
                                                <h6 class="helvetica"><s:property value="actividad.nombre" /></h6>
                                                <p class="c"><s:property value="actividad.text_preview_web" /></p>
                                            </div>
                                            <div class="span7">
                                                <div class="row">
                                                    <div class="caroufredsel_wrapper" style="display: block; text-align: start; float: none; position: relative; top: 0px; right: 0px; bottom: 0px; left: 0px; z-index: auto; width: 714px; height: 297px; margin: 0px 0px 20px; overflow: hidden;">
                                                        <div class="carousel carousel_staff" style="text-align: left; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: 0px; margin: 0px; width: 2618px; height: 324px;">
                                                            <s:iterator value="actividadList" status="status">
                                                                <s:if test="!primario">
                                                                    <div class="one-staff">
                                                                        <s:url id="imgWebURL" action="viewActividadUniversitariaIMG" var="imgWebURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                                                        <img src="<s:property value="#imgWebURL"/>" style="width: 180px; height: 169px; cursor: pointer;" alt="<s:property value="nombre" />" onclick="window.open('<s:if test="pdf.equalsIgnoreCase('NULL')"><s:property value="link" /></s:if><s:else><s:url id="pdfURL" action="viewActividadUniversitariaPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url><s:property value="#pdfURL"/></s:else>', '_blank');"><h6 class="helvetica"><s:property value="nombre" /></h6>
                                                                        <p class="c"><s:property value="text_preview_web" /></p>
                                                                    </div>
                                                                </s:if>
                                                            </s:iterator>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </s:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="corte"></div>
            </section>
            <!-- Fin Actividades universitarias -->        
            <aside class="banners">
                <section style="width: 100%; height: auto;">
                    <article id="layerslider_reconocimientos" style="width:456px;height:218px;float:left;margin-bottom:15px;" >
                        <figure class="ls-layer">
                            <img src="img/banners/reconocimientos/btn_reconocimientos_otorgados_uttab.png" alt="Reconocimientos otorgados a la UTTAB" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';">
                            <img src="img/banners/reconocimientos/btn_ARSEE.png" alt="Proceso integral de acreditación en el área escolar" class="ls-bg"/>
                        </figure> 
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';">
                            <img src="img/banners/reconocimientos/btn_innovation_week_magazine.png" alt="Innovation Week Magazine" class="ls-bg"/>
                        </figure>        
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';">
                            <img src="img/banners/reconocimientos/btn_global_business_corporation.png" alt="BUSINESS MANAGEMENT AWARDS 2015" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=18&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_centro_preparacion_examen_cambrigde.png" alt="Reconocimiento como Centro de Preparación de Exámenes Cambridge" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';">
                            <img src="img/banners/reconocimientos/btn_expociencias_internacional_bruselas_2015.png" alt="Medalla de participación en la Expociencias Internacional Bruselas 2015" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';">
                            <img src="img/banners/reconocimientos/btn_cisco_aniversario_participacion_activa.png" alt="10mo. Aniversario de Participación Activa CISCO" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('http://www.editorialox.com/', '_blank');">
                            <img src="img/banners/reconocimientos/btn_premio_internacional_ox.png" alt="Premio Internacional OX" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=2&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_agente_capacitador_externo.png" alt="Agente Capacitador Externo" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=3&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_sistema_gestion_calidad_uttab.png" alt="Certificado de conformidad al Sistema de Gestión de la Calidad de la Universidad Tecnológica de Tabasco con los requisitos establecidos por ISO 9001:2008" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=4&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_academia_CISCO.png" alt="Academia de Cisco (CA) Centro de Soporte de Cisco (ASC) y Centro de Entrenamiento de Instructores de Cisco (ITC)" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=5&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_DELF_DALF.png" alt="Certificat d’agrément de centre d’examen" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=6&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_premio_sapientiae_excelencia_educativa.png" alt="Premio Sapientiae a la Excelencia Educativa" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=7&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_desarrollo_software.png" alt="Desarrollo de Software" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=8&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_reconocimiento_incubadora_basica.png" alt="Reconocimiento como Incubadora Básica" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=9&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_centro_evaluador_competencias.png" alt="Centro Evaluador de Competencias" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=10&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_IADC_rig_pass.png" alt="IADC Rig Pass" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=11&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_centro_autorizado_TOEFL_ITP.png" alt="Centro Autorizado de Aplicación del Test of English as a Foreign Language ITP (TOELF ITP)" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=12&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_laboratorio_ensayo_fuentes_fijas.png" alt="Laboratorio de ensayo en la rama de Fuentes Fijas" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=13&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_laboratorio_ensayo_ambiente_laboral.png" alt="Laboratorio de ensayos en Ambiente Laboral" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=14&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_laboratorio_calibracion_dimensional.png" alt="Laboratorio de Calibración Dimensional" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=15&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_laboratorio_prueba_lpstps.png" alt="Laboratorio de Prueba LPSTPS-098/2014" class="ls-bg"/>
                        </figure>
                        <figure class="ls-layer" onmouseover="this.style.cursor = 'pointer';" onclick="window.open('viewFile.action?i=16&amp;d=banners', '_blank');">
                            <img src="img/banners/reconocimientos/btn_copaes.png" alt="Consejo para la Acreditación de la Educación Superior" class="ls-bg"/>
                        </figure>
                    </article>
                    <!--<s:url id="url_evento_admision" action="viewEventoPDF"><s:param name="id" value="121"></s:param></s:url>
                    <s:a href="%{url_evento_admision}" target="_blank"><img src="img/banners/btn_convocatoria_proceso_admision_mayo_agosto_2016.png" alt="CONVOCATORIA PROCESO DE ADMISIÓN MAYO-AGOSTO 2016" style="float:left;margin-left: 33px;"/></s:a>                    <s:a action="proteccion_civil" namespace="/otras_secciones"><img src="img/banners/btn_proteccion_civil.png" alt="Protección civil" style="float:right;margin-bottom:22px;"/></s:a>-->
                    <s:url id="url_delf_dalf" action="viewEventoPDF"><s:param name="id" value="124"></s:param></s:url>
                    <s:a href="%{url_delf_dalf}" target="_blank"><img src="img/banners/btn_DELF_DALF.png" alt="CENTRO CERTIFICADOR INTERNACIONAL DELF-DALF" style="float:left;margin-left: 33px;"/></s:a>                    <s:a action="proteccion_civil" namespace="/otras_secciones"><img src="img/banners/btn_proteccion_civil.png" alt="Protección civil" style="float:right;margin-bottom:22px;"/></s:a>
                    <s:a action="herramientas_tecnologicas" namespace="/otras_secciones"><img src="img/banners/btn_herramientas_tecnologicas.png" alt="Herramientas tecnológicas" style="float:right;"/></s:a>
                        <div style="clear: both;"></div>
                    </section>
                    <section style="width: 100%; height: auto;">
                    <s:a action="radio" namespace="/sintonia" ><img src="img/banners/btn_sintonia.png" alt="Sintonía UTTAB" style="float:left;"/></s:a>
                    <s:a action="centro_incubacion" namespace="/vinculacion"><img src="img/banners/boton%20emprendedores.jpg" alt="Centro de Incubación y Desarrollo de Negocios" style="float:left; margin-left: 18px;"/></s:a>
                        <a href="http://utvirtual.uttab.edu.mx/" target="_blank"><img src="img/banners/UT%20VIRTUAL2.png" alt="UT Virtual" style="float:right;"/></a>
                        <a href="http://saiiut.uttab.edu.mx/" target="_blank"><img src="img/banners/btn_SAIIUT.png" alt="SAIIUT" style="float:right;margin-right: 18px;"/></a>
                        <div style="clear: both;"></div>
                    </section>
                    <section style="width: 100%; height: auto; margin-top: 10px;">
                    <s:url id="url_gaceta" action="viewGacetaPDF"><s:param name="id" value="gaceta.id"></s:param></s:url>
                    <s:a href="%{url_gaceta}" target="_blank"><img src="img/banners/banner_gaceta.png" alt="Gaceta UTTAB Ejemplar Nº <s:property value="gaceta.id"/>" style="float:left;"/></s:a>
                        <a href="javascript:void(0);" onclick="window.open('http://siie.uttab.edu.mx', '_blank');" title="Sistema Institucional de Información Estadística UTTAB"><img src="img/banners/banner_SIIE.jpg" alt="Sistema Institucional de Información y Estadística" style="float:left; margin-left: 18px;"/></a>
                    <s:a action="centro_idiomas" namespace="/servicios"><img src="img/banners/banner_ciut.png" alt="CIUT | Centro de idiomas UT" style="float:right;"/></s:a>
                    <s:url id="url_evento_CISCO" action="viewEventoPDF"><s:param name="id" value="51"></s:param></s:url>
                    <s:a href="%{url_evento_CISCO}" target="_blank"><img src="img/banners/banner_cisco.png" alt="CISCO" style="float:right;margin-right: 18px;"/></s:a>
                        <div style="clear: both;"></div>
                    </section>
                    <div style="clear: both;"></div>
                </aside>
                <div class="corte"></div>
            </main>
        <jsp:include page="WEB-INF/jsp/includePie.jsp" flush="true" />
        <script src="js/JQuery/plugins/layerslider/JQuery/jquery-1.6.2.min.js"></script>
        <script src="js/home.min.js"></script>
        <script src="Otros/PhotoStackGallery/photo-stack.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/colorpicker/js/colorpicker.js"></script>
        <script src="${pageContext.request.contextPath}/js/inclusion.min.js"></script>
        <script src="js/JQuery/plugins/twitter-feed/jquery.tweet.min.js"></script>
        <script src="js/JQuery/plugins/layerslider/JQuery/jquery-easing-1.3.min.js"></script>
        <script src="js/JQuery/plugins/layerslider/js/layerslider.kreaturamedia.jquery.min.js"></script>
        <script src="Otros/carrousel01/js/jquery.fancybox.min.js?ver=1"></script>
        <script src="Otros/carrousel01/js/jquery.carouFredSel-6.1.0-packed.js?ver=1"></script>
        <script src="Otros/carrousel01/js/mediaelement-and-player.min.js?ver=1"></script>
        <script src="Otros/carrousel01/js/tooltip.min.js?ver=1"></script>
        <script src="Otros/carrousel01/js/jquery.imagesloaded.min.js?ver=1"></script>
        <script src="Otros/carrousel01/js/main.min.js?ver=1"></script>
        <script src="Otros/carrousel01/js/jquery.placeholder.min.js?ver=1"></script>
        <!-- Counter logros universitarios-->
        <script src="js/JQuery/plugins/jquery.appear/jquery.appear.js"></script>
        <script src="js/JQuery/plugins/jquery-cookie/jquery-cookie.js"></script>
        <script src="js/JQuery/plugins/common/common.js"></script>
        <script src="js/JQuery/plugins/theme.js"></script>
        <script src="js/JQuery/plugins/theme.init.js"></script> 
        <!-- Counter logros universitarios-->
    </body>
</html>