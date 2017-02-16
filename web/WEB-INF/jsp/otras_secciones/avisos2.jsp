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
                    <h1>Avisos</h1>
                    <div class="corte"></div>
                </header>
                <article class="otras_secciones_contenido">
                    <section class="otras_secciones_texto">
                        <s:if test="avisoList.size() > 0">
                            <s:iterator value="avisoList">
                                    <s:if test="pdf.equalsIgnoreCase('NULL') && link.equalsIgnoreCase('NULL')">
                                        <img src="viewAvisoIMG.action?id=<s:property value="id" />" alt="<s:property value="nombre" />" style="display: block; margin: 0 auto;"/>
                                    </s:if>
                                    <s:elseif test="pdf.equalsIgnoreCase('NULL')">
                                        <a href="<s:property value="link" />" target="_blank"><img src="viewAvisoIMG.action?id=<s:property value="id" />"  alt="<s:property value="nombre" />" style="display: block; margin: 0 auto;"/></a>
                                        </s:elseif>
                                        <s:else>
                                        <a href="viewAvisoPDF.action?id=<s:property value="id" />" target="_blank"><img src="viewAvisoIMG.action?id=<s:property value="id" />" alt="<s:property value="nombre" />" style="display: block; margin: 0 auto;"/></a>
                                        </s:else>
                                        <br/>
                            </s:iterator>
                        </s:if>
                        <s:else><h1>No hay avisos para mostrar</h1></s:else>
                        </section>
                    </article>
                    <div class="corte"></div>
                </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />            
        </main>
    </body>
</html>