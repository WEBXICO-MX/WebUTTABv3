<%-- 
    Document   : index3
    Created on : 06-dic-2016, 12:11:44
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Universidad Tecnológica de Tabasco</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <meta name="description" content="Universidad Tecnológica de Tabasco, también conocida como UTTAB, es una universidad publica localizada en Villa Parrilla, Tabasco, México.">
        <meta name="author" content="Departamento de sistemas">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!-- Inicio METAS FACEBOOK -->
        <meta content='UTTAB &#124; Universidad Tecnológica de Tabasco' property='og:title'/>
        <meta content='http://www.uttab.edu.mx/img/logo_ut_shared_facebook.png' property='og:image'/>
        <meta content='El subsistema al que pertenece la Universidad Tecnológica de Tabasco (UTTAB) surge a partir de un estudio realizado en 1990 sobre nuevos esquemas de educación superior, en el cual se analizaron las experiencias de países como Alemania, Estados Unidos, Francia, Gran Bretaña y Japón. Con base en dicho estudio, se decidió llevar a cabo un proyecto específico para definir un modelo pedagógico que permitiera crear una opción alternativa a la oferta existente bajo un modelo innovador; concibiéndose así el sistema de educación tecnológica superior.' property='og:description'/>
        <meta content='http://www.uttab.edu.mx/Home.action' property='og:url'/>
        <!-- Fin METAS FACEBOOK -->
        <link href="img/favicon.ico" rel="icon" >
        <link href="css/normalize.min.css" rel="stylesheet"/>
        <link href="js/JQuery/plugins/layerslider/css/layerslider.css" rel="stylesheet"/>
        <link href="css/index3_footer.min.css" rel="stylesheet"/>
        <link href="css/index3_header.min.css" rel="stylesheet"/>
        <link href="css/index3.min.css" rel="stylesheet"/>
        <!--[if lt IE 9]>
            <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
        <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="WEB-INF/jsp/index3Header.min.jsp" flush="true"  />
            <!-- Banner principales -->        
            <section id="banner_principal">
                <div class="row"><h2 class="oculto">Banner principales</h2></div>
                <div class="row">
                    <div id="layerslider">
                        <s:if test="eventoList.size() > 0">
                            <s:iterator value="eventoList" status="eventoStatus">
                                <div class="ls-layer" <s:if test="!(pdf.equalsIgnoreCase('NULL') && link.equalsIgnoreCase('NULL'))">onmouseover="this.style.cursor = 'pointer';" onclick="window.open('<s:if test="pdf.equalsIgnoreCase('NULL')"><s:property value="link" /></s:if><s:else><s:url action="viewEventoPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url><s:property value="#pdfURL"/></s:else>', '_blank');"</s:if>>
                                    <s:if test="!img1.equalsIgnoreCase('NULL')">
                                        <img src="<s:property value="img1" />" alt="layer" class="ls-bg" >  
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
                                </div>                 

                            </s:iterator>
                        </s:if>
                    </div>
                </div>
            </section>
            <!-- información destacada -->
            <section id="informacion_destacada">
                <div class="row titular">
                    <h2>Información destacada</h2>
                    <img src="img2/btn_atras.png" alt="Botón átras" onclick="informacionDestacadaAtras()"/>
                    <img src="img2/btn_adelante.png" alt="Botón adelante" onclick="informacionDestacadaAdelante()"/>
                    <div class="corte"></div>
                </div>  
                <div class="row">
                    <div>
                        <div class="informacion_destacada">                            
                            <div class="counters counters-text-dark">
                                <div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                    <img src="img2/informacion_destacada/01.png" width="54" height="56" alt="100 Mbps de ancho de banda de internet" style=""/>
                                    <strong data-to="100" data-append=" Mbps">0</strong>
                                    <label>de ancho de banda de internet</label>
                                </div>
                            </div>
                        </div>
                        <div class="informacion_destacada">                            
                            <div class="counters counters-text-dark">
                                <div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                    <img src="img2/informacion_destacada/02.png" width="54" height="56" alt="13,829 egresados en la historia de la UTTAB"/>
                                    <strong data-to="13829" data-append="">0</strong>
                                    <label>egresados en la historia de la UTTAB</label>
                                </div>
                            </div>
                        </div>
                        <div class="informacion_destacada">                            
                            <div class="counters counters-text-dark">
                                <div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                    <img src="img2/informacion_destacada/03.png" width="54" height="56" alt="36 alumnos en movilidad internacional (sep 15 -ago 16)"/>
                                    <strong data-to="36" data-append="">0</strong>
                                    <label>alumnos en movilidad internacional</label>
                                    <small>(sep 15 -ago 16)</small>
                                </div>
                            </div>
                        </div>
                        <div class="informacion_destacada">                            
                            <div class="counters counters-text-dark">
                                <div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                    <img src="img2/informacion_destacada/04.png" width="54" height="56" alt="55% docentes con posgrado"/>
                                    <strong data-to="55" data-append="%">0</strong>
                                    <label>docentes con posgrado</label>
                                </div>
                            </div>
                        </div>
                        <div class="informacion_destacada">                            
                            <div class="counters counters-text-dark">
                                <div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                    <img src="img2/informacion_destacada/05.png" width="54" height="56" alt="17 programas de TSU 8 de licenciatura"/>
                                    <strong data-to="17" data-append="">0</strong>
                                    <label>programas de TSU</label>
                                    <strong data-to="8" data-append="">0</strong>
                                    <label>de licenciatura</label>
                                </div>
                            </div>
                        </div>
                        <div class="informacion_destacada">
                            <div class="counters counters-text-dark">
                                <div class="counter appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="300">
                                    <img src="img2/informacion_destacada/06.png" width="54" height="56" alt="3,511 Alumnos"/>
                                    <strong data-to="3511" data-append="" id="logros_numero_de_alumnos">0</strong>
                                    <label>Alumnos</label>
                                </div>
                            </div>
                        </div>
                        <div class="corte"></div>
                    </div>
                </div>
                <div class="corte"></div>
            </section>            
            <section id="reconocimientos_convocatorias">
                <div class="row">
                    <h2 class="oculto">Reconocimientos y convocatorias</h2>
                    <!-- Reconocimientos -->
                    <div><s:a action="reconocimientos" namespace="/otras-secciones"><img src="img2/btn_reconocimientos.png" alt="Reconocimientos"/></s:a></div>
                        <!-- Convocatorias -->
                        <div><s:a action="convocatorias" namespace="/otras-secciones"><img src="img2/btn_convocatorias.png" alt="Convocatorias"/></s:a></div>
                        <div class="corte"></div>                    
                    </div>                
                </section>
                <!-- Actividades universitarias -->        
                <section id="actividades_universitarias">
                    <div class="row titular2">
                        <h2>Noticias</h2>
                        <img src="img2/btn_atras2.png" alt="Botón átras" onclick="actividadesUniversitariasAtras()"/>
                        <img src="img2/btn_adelante2.png" alt="Botón adelante" onclick="actividadesUniversitariasAdelante()"/>
                        <div class="corte"></div>
                    </div>
                    <div class="row">
                        <div>
                        <s:if test="actividadList.size() > 0">
                            <s:iterator value="actividadList" status="status">
                                <s:if test="!primario">
                                    <div class="actividad_universitaria">
                                        <s:url action="viewActividadUniversitariaIMG" var="imgWebURL"><s:param name="id" value="%{id}"></s:param></s:url>
                                        <img src="<s:property value="#imgWebURL"/>" alt="<s:property value="nombre" />" onclick="window.open('<s:if test="pdf.equalsIgnoreCase('NULL')"><s:property value="link" /></s:if><s:else><s:url action="viewActividadUniversitariaPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url><s:property value="#pdfURL"/></s:else>', '_blank');"/>
                                        <h5><a href="javascript:void(0)" onclick="window.open('<s:if test="pdf.equalsIgnoreCase('NULL')"><s:property value="link" /></s:if><s:else><s:url action="viewActividadUniversitariaPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url><s:property value="#pdfURL"/></s:else>', '_blank');"><s:property value="nombre" /></a></h5>
                                        <p><a href="javascript:void(0)" onclick="window.open('<s:if test="pdf.equalsIgnoreCase('NULL')"><s:property value="link" /></s:if><s:else><s:url action="viewActividadUniversitariaPDF" var="pdfURL"><s:param name="id" value="%{id}"></s:param></s:url><s:property value="#pdfURL"/></s:else>', '_blank');"><s:property value="text_preview_web" /></a></p>
                                        </div>
                                </s:if>
                            </s:iterator>
                        </s:if>
                        <div class="corte"></div>
                    </div>                    
                </div>
                <s:a action="actividades-universitarias" namespace="/otras-secciones"><img src="img2/btn_ver_mas.png" alt="ver más" id="btn_ver_mas"/></s:a>
                    <div class="corte"></div>
                </section>
                <aside>
                    <div class="row titular">
                        <h2>Sitios de interés</h2>
                        <div class="corte"></div>
                    </div>
                    <div class="row">
                        <div><s:a action="centro-idiomas" namespace="/servicios"><img src="img2/sitios_de_interes/btn_CIUT.png" alt="CIUT | Centro de Idiomas UT" /></s:a></div>
                    <div><s:a action="delf-dalf" namespace="/servicios"><img src="img2/sitios_de_interes/btn_DELF_DALF.png" alt="Centro Certificador Internacional DELF-DALF" /></s:a></div>
                    <div><s:url var="url_proceso_admision" action="viewEventoPDF"><s:param name="id" value="173"></s:param></s:url><s:a href="%{url_proceso_admision}" target="_blank"><img src="img2/sitios_de_interes/btn_convocatoria_proceso_admision.png" alt="Convocatoria proceso de admisión MAYO-AGOSTO 2017" /></s:a></div>
                    <div><s:a action="radio" namespace="/sintonia" ><img src="img2/sitios_de_interes/btn_sintonia_UTTAB.png" alt="Sintonía UTTAB 102.5 FM" /></s:a></div>
                        <div class="corte"></div>
                    </div>
                    <div class="row">
                        <div><s:a action="conocer" namespace="/otras-secciones"><img src="img2/sitios_de_interes/btn_ECE_UTTAB.png" alt="ECE UTTAB | Entidad de Certificación y Evaluación" /></s:a></div>
                    <div><s:a action="centro-incubacion" namespace="/vinculacion"><img src="img2/sitios_de_interes/btn_centro_incubacion.png" alt="Centro de Incubación y Desarrollo de Negocios" /></s:a></div>
                    <div><s:url var="url_evento_CISCO" action="viewEventoPDF"><s:param name="id" value="51"></s:param></s:url><s:a href="%{url_evento_CISCO}" target="_blank"><img src="img2/sitios_de_interes/btn_CISCO.png" alt="CISCO | Centro de Entrenamiento y Soporte" /></s:a></div>
                    <div><s:url var="url_gaceta" action="viewGacetaPDF"><s:param name="id" value="gaceta.id"></s:param></s:url><s:a href="%{url_gaceta}" target="_blank"><img src="img2/sitios_de_interes/btn_gaceta.png" alt="Gaceta | Edición digital Nº <s:property value="gaceta.id"/>" /></s:a></div>
                            <div class="corte"></div>
                        </div>
                        <div class="row">
                                <div><s:a action="RecorridoVirtual" target="_blank"><img src="img2/sitios_de_interes/btn_recorrido_virtual.png" alt="Recorrido virtual" /></s:a></div>
                        <div><a href="http://calidad.uttab.edu.mx/" target="_blank"><img src="img2/sitios_de_interes/btn_calidad.png" alt="Calidad" /></a></div>
                        <div><s:a action="rsu" namespace="/otras-secciones"><img src="img2/sitios_de_interes/btn_responsabilidad_social_universitaria.png" alt="Responsabilidad Social universitaria | RSU" /></s:a></div>
                    <div><s:a action="herramientas-tecnologicas" namespace="/otras-secciones"><img src="img2/sitios_de_interes/btn_herramientas_tecnologicas.png" alt="Herramientas  tecnológicas" /></s:a></div>
                        <div class="corte"></div>
                    </div>
                    <div class="row">
                        <div><a href="http://utvirtual.uttab.edu.mx/" target="_blank"><img src="img2/sitios_de_interes/btn_UT_virtual.png" alt="UT virtual | Coordinación de Educación a Distancia" /></a></div>
                        <div><a href="http://siie.uttab.edu.mx" target="_blank" title="Sistema Institucional de Información Estadística UTTAB"><img src="img2/sitios_de_interes/btn_SIIE_UTTAB.png" alt="SIIE-UTTAB | Sistema Institucional de Información Estadística"  /></a></div>
                        <div><a href="http://saiiut.uttab.edu.mx/" target="_blank"><img src="img2/sitios_de_interes/btn_SAIIUT.png" alt="SAIIUT | Sistema Automatizado Integral de Información de las Universidades Tecnológicas" /></a></div>
                        <div><s:a action="proteccion-civil" namespace="/otras-secciones"><img src="img2/sitios_de_interes/btn_proteccion_civil.png" alt="Proteccion civil" /></s:a></div>
                        <div class="corte"></div>
                    </div> 
                    <div class="corte"></div>
                </aside>
            <jsp:include page="WEB-INF/jsp/index3Footer.min.jsp" flush="true"  /> 
        </main>
        <script src="js/index3.min.js"></script>
        <script src="js/JQuery/plugins/layerslider/JQuery/jquery-easing-1.3.min.js"></script>
        <script src="js/JQuery/plugins/layerslider/js/layerslider.kreaturamedia.jquery.min.js"></script>
        <!-- Counter logros universitarios-->
        <script src="js/JQuery/plugins/jquery.appear/jquery.appear.js"></script>
        <script src="js/JQuery/plugins/jquery-cookie/jquery-cookie.js"></script>
        <script src="js/JQuery/plugins/common/common.js"></script>
        <script src="js/JQuery/plugins/theme.js"></script>
        <script src="js/JQuery/plugins/theme.init.js"></script> 
        <script>
                                            actividades_universitareas_size = <s:property value ="actividadList.size()"/>;
        </script>                
    </body>
</html>