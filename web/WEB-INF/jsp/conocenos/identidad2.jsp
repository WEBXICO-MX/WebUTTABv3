<%-- 
    Document   : identidad2
    Created on : 17-nov-2015, 14:35:15
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Identidad</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Licenciatura en Gestión y Desarrollo Turístico">
        <meta name="keywords" content="conócenos,identidad,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/conocenos2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=conocenos" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="conocenos_section">
                <header class="conocenos_titulo">
                    <h2><span class="texto_resaltado">Conócenos</span> /</h2>
                    <h1>Identidad</h1>
                    <div class="corte"></div>
                </header>
                <article class="conocenos_contenido">
                    <section class="conocenos_texto">
                        <figure style="position: relative">
                            <img src="${pageContext.request.contextPath}/img/conocenos/identidad/identidad1-min.png" alt="Identidad"/>
                            <!-- Glosario de términos -->
                            <s:url var="url_glosario_terminos" action="viewFile" namespace="">
                              <s:param name="i" value="1"></s:param>
                              <s:param name="d" value="%{'glosario'}"></s:param>
                            </s:url>
                            <s:a href="%{url_glosario_terminos}" target="_blank"><img src="${pageContext.request.contextPath}/img/conocenos/identidad/icono_glosario_terminos-min.png" alt="Glosario de términos" class="icono_terminos"/></s:a>
                            <!-- Glosario de términos -->
                            <s:url var="url_glosario_siglas" action="viewFile" namespace="">
                              <s:param name="i" value="2"></s:param>
                              <s:param name="d" value="%{'glosario'}"></s:param>
                            </s:url>
                            <s:a href="%{url_glosario_siglas}" target="_blank"><img src="${pageContext.request.contextPath}/img/conocenos/identidad/icono_glosario_siglas-min.png" alt="Glosario de siglas" class="icono_siglas"/></s:a>
                        </figure><br/>
                        <figure style="display:inline-block;">
                            <img src="${pageContext.request.contextPath}/img/conocenos/identidad/mision-min.png" alt="Misión"/>
                        </figure>
                        <h3>Misión</h3>
                        <p>Contribuir con responsabilidad social al desarrollo de la región con base en la aplicación de un modelo educativo de competencias, poniendo énfasis en el uso de herramientas tecnológicas, la innovación y la procuración de una formación integral y profesional de capital humano, así como una relación estratégica con los sectores productivo y social, consolidando programas y servicios especializados que satisfagan sus necesidades.</p>
                        <br/>
                        <figure style="display:inline-block;">
                            <img src="${pageContext.request.contextPath}/img/conocenos/identidad/vision-min.png" alt="Visión"/>
                        </figure>
                        <h3>Visión</h3>
                        <p>Ser una institución distinguida por su calidad, compromiso social, innovación y resultados en la formación profesional de capital humano y en la prestación de servicios especializados.</p>
                        <br/>
                        <figure style="display:inline-block;">
                            <img src="${pageContext.request.contextPath}/img/conocenos/identidad/identidad2-min.png" alt="Valores"/>
                        </figure>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=conocenos" flush="true" />
    </body>
</html>