<%-- 
    Document   : capacitacion_profesional.jsp
    Created on : 24/11/2015, 04:14:51 PM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Capacitación Profesional</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Capacitación Profesional">
        <meta name="keywords" content="vinculación,Capacitación Profesional,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=vinculacion" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Capacitación Profesional</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <figure class="vinculacion_btnsMenu">
                            <s:url var="url_catalogo" action="viewFile" namespace="">
                                <s:param name="i" value="1"></s:param>
                                <s:param name="d" value="%{'servicios_especializados'}"></s:param>
                            </s:url>
                            <s:a href="%{url_catalogo}" target="_blank"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/btn_catalogo.png" alt="Catálogo de servicios especializados"/></s:a>
                        </figure>
                        <div class="corte"></div>
                    </section>
                    <section class="vinculacion_texto">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/vinculacion/capacitacion_profesional/capacitación-profesional_03-min.png" alt="capacitación profesional"/>
                        </figure>
                    </section>
                    <section class="vinculacion_texto">
                        <h4 class="tituloContenido">¿Quiénes somos?</h4>
                        <br>
                        <p>El departamento diseña y desarrolla herramientas de excelencia con la finalidad de contribuir en las actividades propias de la formación profesional y/o desarrollo laboral, brindando estos servicios a los sectores público, privado y social. Las herramientas que se ofrecen son:</p><br>
                        <ul>
                            <li>Talleres</li>
                            <li>Cursos</li>
                            <li>Seminarios</li>
                            <li>Diplomados</li>
                        </ul><br/>
                        <p>El proceso de Capacitación Profesional es uno de los procesos certificados ante la Norma ISO 9001:2008 de la Universidad Tecnológica de Tabasco. </p><br/>
                        <p>A su vez, cuenta con registro ante la Secretaría de Trabajo y Previsión Social núm. UTT-960520-R61-0013.</p>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Lizeth Argüelles Beltrán</p>
                                <p>Jefa del departamento de Capacitación Profesional</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2004</p>
                                <p>Correo institucional: <a href="mailto:capacitacion@uttab.edu.mx">capacitacion@uttab.edu.mx</a></p>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=vinculacion" flush="true" />
    </body>
</html>