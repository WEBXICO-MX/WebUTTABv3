<%-- 
    Document   : case
    Created on : 10/09/2015, 14:06:23 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Atención al Sector Energético</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Atención al Sector Energético">
        <meta name="keywords" content="vinculación,Centro de Atención al Sector Energético,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/css/layerslider.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            .case_slider {
                width: 942px;
                height: 299px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="/WEB-INF/jsp/includeHeader.jsp?origen=unidades_negocio" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Centro de Atención al Sector Energético</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto"><br/>
                        <header><h3>¿Quiénes somos?</h3></header><br/>
                        <article class="case_slider">
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/1.png" alt="CASE 1" class="ls-bg"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/2.png" alt="CASE 2"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/3.png" alt="CASE 3"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/4.png" alt="CASE 4"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/5.png" alt="CASE 5"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                            <figure class="ls-layer">
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/6.png" alt="CASE 6"/>
                                <img src="${pageContext.request.contextPath}/img/unidades_negocio/case/7.png" alt="sublayer" rel="durationin: 2300; easingin: easeOutQuad; slidedirection: top; delayin: 1100" class="ls-s2" />
                            </figure>
                        </article><br/>
                        <p class="primera_linea">El Centro de Atención al Sector Energético tiene como actividad sustantiva mantener una estrecha vinculación con Petróleos Mexicanos, a través de sus diversas subsidiarias, administrando proyectos de capacitación sobre la industria petrolera, capacitación sobre perforación y mantenimiento a pozos; administrando los pozos-escuelas en "El Castaño" Dos Bocas en Tabasco y "Burgos" en Reynosa, Tamaulipas.</p><br/>
                        <p class="primera_linea">Por otra parte, proporcionar servicios de ingeniería de proyectos y asistencia técnica en la construcción, operación, mantenimiento y administración; así como todo lo relacionado con tecnología de la información.</p>
                    </section>
                    <section class="vinculacion_texto">
                        <header><h3>Capacitación</h3></header><br/>
                        <p class="primera_linea">La Universidad Tecnológica de Tabasco, como organismo educativo y formativo, ofrece entrenamiento y capacitación en la rama industrial petrolera a través de planes de capacitación enfocados en 3 de las principales áreas de esta industria, tales como: servicio a pozos, mantenimiento a equipos y perforación y terminación de pozos.</p><br/>
                        <s:if test="result.size() > 0">
                            <s:iterator value="result" status="stat">
                                <s:if test="value.size() > 0">
                                    <s:iterator value="value" status="stat2">
                                        <h4><s:property value="key"></s:property></h4><br/>
                                            <ul>
                                            <s:iterator value="value" status="stat3">
                                                <li>
                                                    <!-- Validación temporal 2016, ya que solo hay información del Curso nº 9 Rig Pass, nº 22 "Básico de soldadura"-->
                                                    <s:if test="id==9 || id == 22">
                                                        <!--<s:property value="#stat3.index" />-->
                                                        <s:url id="capacitacion_nombre" action="calendario" namespace="/case">
                                                            <s:param name="id" value="id"></s:param>
                                                        </s:url>
                                                        <s:a href="%{capacitacion_nombre}"><strong><s:property value="nombre"/></strong></s:a>
                                                        <img src="${pageContext.request.contextPath}/img/Map-Marker-Push-Pin-1-Right-Pink-icon.png" alt=""/>
                                                    </s:if>
                                                    <s:else>
                                                        <s:property value="nombre"/>
                                                    </s:else>
                                                </li>
                                            </s:iterator>
                                        </ul><br/>
                                    </s:iterator>
                                </s:if>
                            </s:iterator>
                        </s:if>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto" style="width:500px;">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Alberto de la Cruz Cruz</p>
                                <p>Coordinador de capacitación</p>
                                <p>Número directo: +52 (993) 3.58.22.10</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2017 | 2018</p>
                                <p>Correo institucional: <a href="coordinaciondecapacitacion@uttab.edu.mx">coordinaciondecapacitacion@uttab.edu.mx</a></p>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.jsp?origen=unidades_negocio" flush="true" />
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/js/layerslider.kreaturamedia.jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/JQuery/jquery-easing-1.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/unidades_negocio/case/case.min.js"></script>
    </body>
</html>