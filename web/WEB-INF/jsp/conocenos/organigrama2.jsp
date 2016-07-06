<%-- 
    Document   : organigrama2
    Created on : 09-dic-2015, 11:12:59
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Organigrama</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Licenciatura en Gestión y Desarrollo Turístico">
        <meta name="keywords" content="conócenos,historia,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/conocenos2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            /* these styles are for the demo, but are not required for the plugin */
            .zoom {
                display:inline-block;
                position: relative;
            }
            /* magnifying glass icon */
            .zoom:after {
                content:'';
                display:block; 
                width:33px; 
                height:33px; 
                position:absolute; 
                top:0;
                right:0;
                background:url(${pageContext.request.contextPath}/js/JQuery/plugins/jQuery%20Zoom/icon.png);
            }

            .zoom img {
                display: block;
            }

            .zoom img::selection { background-color: transparent; }
            #ex1 img:hover { cursor: url(${pageContext.request.contextPath}/js/JQuery/plugins/jQuery%20Zoom/grab.cur), default; }
            #ex1 img:active { cursor: url(${pageContext.request.contextPath}/js/JQuery/plugins/jQuery%20Zoom/grabbed.cur), default; }
        </style>
    </head>
    <body>
        <jsp:include page="../includeHeader.jsp?origen=conocenos" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="conocenos_section">
                <header class="conocenos_titulo">
                    <h2><span class="texto_resaltado">Conócenos</span> /</h2>
                    <h1>Organigrama</h1>
                    <div class="corte"></div>
                </header>
                <article class="conocenos_contenido">
                    <section class="conocenos_texto_full">
                        <figure class='zoom' id='ex1'><img src="${pageContext.request.contextPath}/img/conocenos/organigrama/estructura_organica_2015-min.png" alt="Organigrama" style="width:1002px; height: 776px;"/></figure>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=conocenos" flush="true" />
        <script src='${pageContext.request.contextPath}/js/JQuery/plugins/jQuery Zoom/jquery.zoom.min.js'></script>
        <script>
            $(document).ready(function () {
                $('#ex1').zoom({on: 'mouseover'});
            });
        </script>
    </body>
</html>