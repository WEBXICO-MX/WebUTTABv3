<%-- 
    Document   : avisos2
    Created on : 27-nov-2015, 12:10:02
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Avisos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Avisos">
        <meta name="keywords" content="servicios,Avisos,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>Avisos</h1>
                    <div class="corte"></div>
                </header>
                <article class="otras_secciones_contenido">
                    <section class="otras_secciones_texto">
                        <br/><br/>
                        <s:if test="avisoList.size() > 0">
                            <s:iterator value="avisoList">
                                <figure class="mis_avisos">
                                <s:if test="pdf.equalsIgnoreCase('NULL') && link.equalsIgnoreCase('NULL')">
                                    <img src="viewAvisoIMG.action?id=<s:property value="id" />" alt="<s:property value="nombre" />"/>
                                </s:if>
                                <s:elseif test="pdf.equalsIgnoreCase('NULL')">
                                    <a href="<s:property value="link" />" target="_blank"><img src="viewAvisoIMG.action?id=<s:property value="id" />"  alt="<s:property value="nombre" />"/></a>
                                </s:elseif>
                                <s:else>
                                    <a href="viewAvisoPDF.action?id=<s:property value="id" />" target="_blank"><img src="viewAvisoIMG.action?id=<s:property value="id" />" alt="<s:property value="nombre" />"/></a>
                                </s:else>
                                </figure>
                            </s:iterator>
                        </s:if>
                        <s:else><h1>No hay avisos para mostrar</h1></s:else>
                        </section>
                    </article>
                    <div class="corte"></div>
                </section>
            </main>
            <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=boletines_anteriores" flush="true" />
    </body>
</html>