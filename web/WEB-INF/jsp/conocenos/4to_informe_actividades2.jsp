<%-- 
    Document   : 4to_informe_actividades2
    Created on : 09-dic-2016, 15:18:53
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; 4to. informe de actividades</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,4to. informe de actividades">
        <meta name="keywords" content="4to. informe de actividades,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/conocenos3.min.css"/>
        <style>
            h1 a, h1 a:link, h1 a:visited { text-decoration: none; color:white;}
        </style>
        <!--[if lt IE 9]>
            <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
        <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="conocenos_section">
                <header class="conocenos_titulo">
                    <h2><span class="texto_resaltado">Conócenos</span> /</h2>
                    <h1><s:a action="4to-informe-de-actividades">4to. informe de actividades</s:a></h1>
                        <div class="corte"></div>
                    </header>
                    <article class="conocenos_contenido">
                        <section class="conocenos_texto">
                        <s:url var="url_discurso_completo" action="viewFile" namespace="">
                            <s:param name="i" value="3"></s:param>
                            <s:param name="d" value="%{'4to_informe'}"></s:param>
                        </s:url>
                        <s:url var="url_seleccion_de_graficos" action="viewFile" namespace="">
                            <s:param name="i" value="4"></s:param>
                            <s:param name="d" value="%{'4to_informe'}"></s:param>
                        </s:url>
                        <img src="${pageContext.request.contextPath}/img/conocenos/4to_informe_actividades/btn_presentacion_del_informe2-min.png" alt="Presentación del informe"/><br/>
                        <s:a href="%{url_discurso_completo}" target="_blank"><img src="${pageContext.request.contextPath}/img/conocenos/4to_informe_actividades/btn_discurso_completo-min.png" alt="Discurso completo"/></s:a>
                        <s:a href="%{url_seleccion_de_graficos}" target="_blank"><img src="${pageContext.request.contextPath}/img/conocenos/4to_informe_actividades/btn_seleccion_de_graficos-min.png" alt="Selección de graficos"/></s:a>
                        <img src="${pageContext.request.contextPath}/img/conocenos/4to_informe_actividades/btn_logos-min.png" alt="4to. informe de actividades"/><br/><br/>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />
        </main>
    </body>
</html>