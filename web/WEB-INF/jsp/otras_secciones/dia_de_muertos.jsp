<%-- 
    Document   : dia_de_muertos
    Created on : 07-oct-2016, 12:14:43
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Talleres y concursos del día de muerto 2016</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Talleres y concursos del día de muerto">
        <meta name="keywords" content="Talleres y concursos del día de muerto,Avisos,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>Talleres y concursos del día de muerto 2016</h1>
                    <div class="corte"></div>
                </header>
                <article class="otras_secciones_contenido">
                    <section class="otras_secciones_texto">
                        <s:url var="url_festival_tamal" action="viewFile" namespace="">
                            <s:param name="i" value="1"></s:param>
                            <s:param name="d" value="%{'dia_de_muertos'}"></s:param>
                        </s:url>
                        <s:url var="url_altares" action="viewFile" namespace="">
                            <s:param name="i" value="2"></s:param>
                            <s:param name="d" value="%{'dia_de_muertos'}"></s:param>
                        </s:url>
                        <s:url var="url_catrina" action="viewFile" namespace="">
                            <s:param name="i" value="3"></s:param>
                            <s:param name="d" value="%{'dia_de_muertos'}"></s:param>
                        </s:url>
                        <s:url var="url_panteones" action="viewFile" namespace="">
                            <s:param name="i" value="4"></s:param>
                            <s:param name="d" value="%{'dia_de_muertos'}"></s:param>
                        </s:url>

                        <s:a href="%{url_festival_tamal}" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/dia_de_muertos/Aviso_festival-tamal-min.png" alt="7mo. Festival del tamal 2016"/></s:a><br/><br/>
                        <s:a href="%{url_altares}" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/dia_de_muertos/Aviso_altares-min.png" alt="Altares de ofrendas de muertos 2016"/></s:a><br/><br/>
                        <s:a href="%{url_catrina}" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/dia_de_muertos/Aviso_catrinas-min.png" alt="Catrina viviente 2016"/></s:a><br/><br/>
                        <s:a href="%{url_panteones}" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/dia_de_muertos/Aviso_panteones-min.png" alt="Panteones y calaveras 2016"/></s:a><br/>
                        </section>
                    </article>
                    <div class="corte"></div>
                </section>
            </main>
            <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
    </body>
</html>
