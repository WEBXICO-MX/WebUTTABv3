<%-- 
    Document   : proteccion_civil2
    Created on : 30-nov-2015, 11:50:58
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Unidad Interna de Protección Civil</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Unidad Interna de Protección Civil">
        <meta name="keywords" content="servicios,Unidad Interna de Protección Civil,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/otras_secciones2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="otras_secciones_section">
                <header class="otras_secciones_titulo">
                    <h2><span class="texto_resaltado">Otras secciones</span> /</h2>
                    <h1>Unidad Interna de Protección Civil</h1>
                    <div class="corte"></div>
                </header>
                <article class="otras_secciones_contenido">
                    <section class="otras_secciones_texto_full">
                        <figure style="float:right">
                         <s:url var="url_manual_anuies" action="viewFile" namespace="">
                           <s:param name="i" value="%{1}"></s:param>
                           <s:param name="d" value="%{'manualSeguridadANUIES'}"></s:param>
                         </s:url>
                         <s:a href="%{url_manual_anuies}" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/proteccion_civil/btn_ANUIES-min.png" alt="Unidad Interna de Protección Civil"/></s:a>
                        </figure>
                        <div class="corte"></div>
                    </section>
                    <section class="otras_secciones_texto_full">
                            <figure><img src="${pageContext.request.contextPath}/img/otras_secciones/proteccion_civil/proteccion_civil1-min.png" alt="Unidad Interna de Protección Civil"/></figure>
                    </section>
                    <section class="otras_secciones_texto">
                        <h2>Unidad Interna de Protección Civil</h2><br/>
                        <h3>Antecedentes</h3>
                        <p>La Universidad Tecnológica de Tabasco (UTTAB) en el año 2002 integró la unidad interna de Protección Civil que permite responder eficaz y eficientemente ante la presencia de desastres naturales y/o humanos, con el propósito de prevenir sus consecuencias o en su caso mitigarlas, con base en la normatividad establecida dentro del Sistema Nacional de Protección Civil.</p><br/>
                        <p>La unidad interna de Protección Civil de la UTTAB, es el órgano normativo y operativo que tiene la responsabilidad de elaborar, implementar y coordinar el programa interno correspondiente, participando en conjunto con la Coordinación General de Protección Civil estatal en actividades que permitan la cultura de la prevención en la formación integral de la comunidad universitaria.</p><br/>
                        <h3>Unidad interna de protección civil</h3>
                        <ul>
                            <li>Coordinación ejecutiva</li>
                            <li>Coordinación operativa</li>
                            <li>Encargados de inmuebles</li>
                            <li>Jefes de piso y brigadistas</li>
                        </ul><br/>
                        <h3>Las brigadas conformadas son</h3>
                        <ul>
                            <li>Brigada de evacuación</li>
                            <li>Brigada de prevención y combate de incendios</li>
                            <li>Brigada de búsqueda y rescate</li>
                            <li>Brigada de primeros auxilios</li>
                        </ul><br/>
                        <p>En cada edificio hay un encargado de inmueble, jefe de piso y brigadistas, integrados por la comunidad universitaria (alumnos, docentes y administrativos). Al año realizamos 2 simulacros sobre cómo actuar en caso de una emergencia provocada por temblor, incendio, inundación, etc.</p>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=boletines_anteriores" flush="true" />
    </body>
</html>