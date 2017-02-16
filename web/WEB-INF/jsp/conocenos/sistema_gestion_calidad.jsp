<%-- 
    Document   : sistema_gestion_calidad
    Created on : 10-ene-2017, 9:48:32
    Author     : Roberto Eder Weiss Juárez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Sistema de Gestión de la Calidad</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Sistema de Gestión de la Calidad">
        <meta name="keywords" content="conócenos,Sistema de Gestión de la Calidad,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/conocenos3.min.css"/>
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
                    <h1>Sistema de Gestión de la Calidad</h1>
                    <div class="corte"></div>
                </header>
                <article class="conocenos_contenido">
                    <section class="conocenos_texto">
                        <header><h3>Sistema de Gestión de la Calidad</h3></header>
                        <article>
                            <p>La UTTAB es referente regional en la implementación y certificación del Sistema de Gestión de la Calidad (SGC).</p>
                            <p class="primera_linea">Desde el año 2000 se ha administrado y mantenido un SGC con enfoque al cliente y a procesos, lo cual ha permitido el logro de los resultados esperados.</p>
                            <p class="primera_linea">Alineado con la estrategia y desarrollo institucionales, el SGC funge como la herramienta más importante para tomar acciones que busquen alcanzar la satisfacción del cliente con base en el impulso en la mejora continua.</p>
                            <p class="primera_linea">El modelo de procesos del SGC en la UTTAB contempla 5 macroprocesos (1 proceso estratégico, 2 procesos claves y 2 de procesos de apoyo), tal como puede apreciarse en el siguiente esquema:</p>
                            <img src="${pageContext.request.contextPath}/img/conocenos/sistemas_gestion/sistema_gestion_calidad1.png" alt="Mapa de macroprocesos Sistema de gestión de la calidad UTTAB"/>
                            <p class="primera_linea">El Sistema de Gestión de la Calidad tiene como alcance los procesos que lleva a cabo la Universidad Tecnológica de Tabasco para otorgar y desarrollar servicios educativos de nivel superior y servicios especializados.</p>
                            <a href="http://calidad.uttab.edu.mx/" target="_blank"><img src="${pageContext.request.contextPath}/img/conocenos/sistemas_gestion/sistema_gestion_calidad2.png" alt="Logo del Sistema de gestión de la calidad UTTAB" style="display: block; margin:0 auto;"/></a>
                        </article>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />
        </main>
    </body>
</html>
