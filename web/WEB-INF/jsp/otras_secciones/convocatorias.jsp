<%-- 
    Document   : convocatorias
    Created on : 27-dic-2016, 15:38:06
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Convocatorias</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco, Convocatorias">
        <meta name="keywords" content="convocatorias,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/otras_secciones3.min.css"/>
        <!--[if lt IE 9]>
            <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
        <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="otras_secciones_section">
                <header class="otras_secciones_titulo">
                    <h2><span class="texto_resaltado">Otras secciones</span> /</h2>
                    <h1>Convocatorias</h1>
                    <div class="corte"></div>
                </header>
                <article class="otras_secciones_contenido">
                    <section class="otras_secciones_texto">
                        <s:url var="url_convocatoria01" action="viewFile" namespace="">
                            <s:param name="i" value="1"></s:param>
                            <s:param name="d" value="%{'convocatorias'}"></s:param>
                        </s:url>
                        <s:url var="url_convocatoria02" action="viewFile" namespace="">
                            <s:param name="i" value="2"></s:param>
                            <s:param name="d" value="%{'convocatorias'}"></s:param>
                        </s:url>
                        <s:a href="%{url_convocatoria02}" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/convocatorias/02.png" alt="Apoyo a madres mexicanas Jefas de familia para fortalecer su desarrollo profesional"/></s:a>
                        <s:a href="%{url_convocatoria01}" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/convocatorias/01.png" alt="Sesión de certificación DELF-DALF para todo el público: febrero de 2017"/></s:a>                        
                        </section>
                    </article>
                    <div class="corte"></div>                
                </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />
        </main>
    </body>
</html>

