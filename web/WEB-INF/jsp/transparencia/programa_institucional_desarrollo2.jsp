<%-- 
    Document   : programa_institucional_desarrollo2
    Created on : 30-nov-2015, 12:58:58
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Programa Institucional de Desarrollo (PIDE)</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Programa Institucional de Desarrollo (PIDE)">
        <meta name="keywords" content="transparencia,Programa Institucional de Desarrollo (PIDE),tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/transparencia3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="transparencia_section">
                <header class="transparencia_titulo">
                    <h2><span class="texto_resaltado">Transparencia</span> /</h2>
                    <h1>Programa Institucional de Desarrollo (PIDE)</h1>
                    <div class="corte"></div>
                </header>
                <article class="transparencia_contenido">
                    <section class="transparencia_texto_full">
                        <div style="float:right">
                         <s:url var="url_PIDE_digital" action="viewFile" namespace="">
                           <s:param name="i" value="%{1}"></s:param>
                           <s:param name="d" value="%{'PIDE'}"></s:param>
                         </s:url>
                         <s:a href="%{url_PIDE_digital}" target="_blank"><img src="${pageContext.request.contextPath}/img/transparencia/pide/btn_PIDE_digital-min.png" alt="Programa Institucional de Desarrollo (PIDE)"/></s:a>
                        </div>
                        <div class="corte"></div>
                    </section>
                    <section class="transparencia_texto_full">
                        <img src="${pageContext.request.contextPath}/img/transparencia/pide/programa_institucional_desarrollo1-min.png" alt=""/>
                    </section>
                    <section class="transparencia_texto">
                        <h2>Programa Institucional de Desarrollo (PIDE)</h2><br/>
                        <p>El Programa Institucional de Desarrollo es un documento rector que sirve de guía para encauzar las acciones en el marco de los esfuerzos por consolidar a la Universidad de una manera integral, procurando garantizar la calidad de los servicios educativos que se ofrecen y de los diversos procesos de gestión. De este modo se pueden reafirmar mecanismos de transparencia y rendición de cuentas a la sociedad.</p><br/>
                        <p class="primera_linea">A través del PIDE se establece una serie de valores esperados con la finalidad de evaluar el avance y el quehacer de la Universidad, lo cual permite determinar la situación actual e identificar fortalezas, debilidades, amenazas y oportunidades, con el objetivo de alcanzar la visión establecida en el corto y mediano plazo.</p><br/>
                        <p class="primera_linea">Para la consecución de las metas que contiene el PIDE es imprescindible contar con la participación de la comunidad universitaria, a partir de un proceso de planeación estratégica permanente.</p><br/>
                        <img src="${pageContext.request.contextPath}/img/transparencia/pide/programa_institucional_desarrollo2-min.png" alt="Programa Institucional de Desarrollo (PIDE)" style="display: block; margin: 0 auto;"/>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />             
        </main>
    </body>
</html>