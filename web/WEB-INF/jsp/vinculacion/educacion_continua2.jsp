<%-- 
    Document   : educacion_continua
    Created on : 15-mar-2016, 14:22:58
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Educación Continua</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco, Educación Continua">
        <meta name="keywords" content="servicios,Educación Continua,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
        <jsp:include page="../includeHeader.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Educación continua</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <figure style="float:right">
                            <s:url id="url_cursos" action="viewFile" namespace="">
                                <s:param name="i" value="1"></s:param>
                                <s:param name="d" value="%{'egresados'}"></s:param>
                            </s:url>
                            <s:a href="%{url_cursos}" target="_blank"><img src="${pageContext.request.contextPath}/img/servicios/egresados/btn_cursos-min.png" alt="Cursos"/></s:a>
                            </figure>
                            <div class="corte"></div>
                        </section>
                        <section class="vinculacion_texto">                       
                            <figure><img src="${pageContext.request.contextPath}/img/vinculacion/educacion_continua/educacion-continua.png" alt="Educación continua"/></figure>
                        <div class="corte"></div>
                    </section>
                    <section class="vinculacion_texto">
                        <header><h3>¿Quiénes somos?</h3></header><br/>
                        <p>En el departamento de educación continua consientes de que vivimos en un mundo en el que la globalización crece a una velocidad cada vez mayor y donde la importancia de seguir incorporado los conocimientos de forma permanente a nuestra vida profesional es vital para el desarrollo.</p><br/>
                        <p>Impulsamos para nuestros egresados, actividades para seguir en constante aprendizaje, resultando en un mejor posicionamiento en el mercado laboral. Las empresas tienen una gran cantidad de ofertas laborales para elegir a su personal, por lo que definitivamente preferirán contratar personal más preparado y más actualizado, lo que se traduce en más conocimientos que pueda poner en práctica dentro de la organización.</p><br/>
                        <p>El proceso  de educación continua en esta casa de estudios, es un proceso certificado en el Sistema de Gestión de la Calidad ISO 9001:2008.</p><br/>
                        <p>La importancia de la educación continua, radica en que solo enriquece los conocimientos y habilidades que cada persona tiene, sino que también posibilita una mejor posición profesional.</p>
                        <div class="corte"></div>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto" style="width:580px;">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Ana María Gómez Hernández</p>
                                <p>Jefa del departamento de Seguimiento a Egresados y Educación Contínua</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2008 y 2009</p>
                                <p>Correo institucional: <a href="mailto:egresadoscontinua@uttab.edu.mx">egresadoscontinua@uttab.edu.mx</a></p>
                                <div class="corte"></div>
                            </article>                       
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=servicios" flush="true" />
    </body>
</html>
