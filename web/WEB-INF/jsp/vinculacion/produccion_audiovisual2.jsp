<%-- 
    Document   : produccion_audiovisual2.jsp
    Created on : 25/11/2015, 12:29:31 PM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Producción Audiovisual</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Producción Audiovisual">
        <meta name="keywords" content="vinculación,Producción audivisual,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Producción Audiovisual</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                            <img src="${pageContext.request.contextPath}/img/vinculacion/produccion_audiovisual2/produccion-audiovisual_03-min.png" alt="Producción Audiovisual"/>
                    </section>
                    <section class="vinculacion_texto">
                        <h4 class="tituloContenido">¿Quiénes somos?</h4>
                        
                        <p>El departamento de producción audiovisual diseña, produce y realiza material en audio y video para radio y televisión. Nuestro objetivo principal es servir como vínculo de difusión educativa, científica, cultural e informativa, entre el cuerpo académico, la población estudiantil y la sociedad en general.</p>
                        
                        <h4 class="tituloContenido">Catálogo de servicios</h4>
                        
                        <ul>
                            <li>Copiado de material a formato digital</li>
                            <li>Realización de campañas</li>
                            <li>Spots de radio y tv</li>
                            <li>Circuito cerrado de eventos, congresos y expos</li>
                            <li>Memoria de eventos</li>
                            <li>Locución</li>
                            <li>Musicalización</li>
                            <li>Gráficas, efectos especiales, placas y créditos, diseño de estuche y empaque</li>
                            <li>Intercambio de videos educativos y convenio con instituciones educativas y culturales</li>
                            <li>Creación y producción de videos corporativos</li>
                            <li>Guiones y voz en off</li>
                        </ul>
                        
                        <h4 class="tituloContenido">Cursos</h4>
                        
                        <ul>
                            <li>Guionismo</li>
                            <li>Locución</li>
                            <li>Pre-producción, producción y post-producción de video</li>
                        </ul>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Bardo Hernández Embriz</p>
                                <p>Jefe del departamento de Producción Audiovisual</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 8009</p>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />             
        </main>
    </body>
</html>