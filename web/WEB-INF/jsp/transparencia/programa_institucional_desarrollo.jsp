<%-- 
    Document   : programa_institucional_desarrollo
    Created on : 19/08/2013, 03:18:19 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Programa Institucional de Desarrollo (PIDE)</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Programa Institucional de Desarrollo (PIDE)">
        <meta name="keywords" content="Programa Institucional de Desarrollo,PIDE,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/transparencia.min.css"/>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=transparencia" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_pide"><h3>Programa Institucional de Desarrollo (PIDE)</h3></div>
            <div class="area_info_pide">
                <div class="area_info_pide_1">
                    <div class="area_info_pide_1_info">
                        <p>El Programa Institucional de Desarrollo es un documento rector que sirve de guía para encauzar las acciones en el marco de los esfuerzos por consolidar a la Universidad de una manera integral, procurando garantizar la calidad de los servicios educativos que se ofrecen y de los diversos procesos de gestión. De este modo se pueden reafirmar mecanismos de transparencia y rendición de cuentas a la sociedad.</p><br/>
                        <p>A través del PIDE se establece una serie de valores esperados con la finalidad de evaluar el avance y el quehacer de la Universidad, lo cual permite determinar la situación actual e identificar fortalezas, debilidades, amenazas y oportunidades, con el objetivo de alcanzar la visión establecida en el corto y mediano plazo.</p><br/>
                        <p>Para la consecución de las metas que contiene el PIDE es imprescindible contar con la participación de la comunidad universitaria, a partir de un proceso de planeación estratégica permanente.</p><br/>
                        <img src="${pageContext.request.contextPath}/img/conocenos/pide/PIDE_2015_2019-min.png" alt="Elementos estratégicos que conforman el PIDE 2015-2019"/>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=transparencia" flush="true" />
    </body>
</html>