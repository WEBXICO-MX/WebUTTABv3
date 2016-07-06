<%-- 
    Document   : avisos
    Created on : 30/09/2013, 10:56:49 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Avisos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Avisos">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="css/otras_secciones.min.css">
        <link rel="icon" href="img/favicon.ico"/>
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <!--[if lte IE 8]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <link rel="stylesheet" href="css/ie.min.css">
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=otras_secciones" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_avisos"><h3>Avisos</h3></div>
            <div class="area_info_avisos">
                <div class="area_info_avisos_1">
                    <div class="area_info_avisos_1_info">
                        <br/>
                        <s:if test="avisoList.size() > 0">
                            <s:iterator value="avisoList">
                                <s:if test="pdf.equalsIgnoreCase('NULL') && link.equalsIgnoreCase('NULL')">
                                    <img src="viewAvisoIMG.action?id=<s:property value="id" />" width="936" height="201" alt="<s:property value="nombre" />"/><br/><br/><br/>
                                </s:if>
                                <s:elseif test="pdf.equalsIgnoreCase('NULL')">
                                     <a href="<s:property value="link" />" target="_blank"><img src="viewAvisoIMG.action?id=<s:property value="id" />" width="936" height="201" alt="<s:property value="nombre" />"/></a><br/><br/><br/>
                                </s:elseif>
                                <s:else>
                                    <a href="viewAvisoPDF.action?id=<s:property value="id" />" target="_blank"><img src="viewAvisoIMG.action?id=<s:property value="id" />" width="936" height="201" alt="<s:property value="nombre" />"/></a><br/><br/><br/>
                                    </s:else>
                                </s:iterator>
                        </s:if>
                        <s:else><h1>No hay avisos para mostrar.</h1></s:else>
                    </div>
                    <div class="corte"></div>
                </div>
            </div>
        </div>
            <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=otras_secciones" flush="true" />
    </body>
</html>
