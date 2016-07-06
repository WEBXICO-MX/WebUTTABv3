<%-- 
    Document   : servicios_especializados.jsp
    Created on : 25/11/2015, 12:57:16 PM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Servicios Especializados</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Servicios Especializados">
        <meta name="keywords" content="vinculación,Servicios Especializados,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/css/layerslider.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.jsp?origen=vinculacion" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Servicios Especializados</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <figure class="vinculacion_btnsMenu">
                            <s:a action="capacitacion_profesional" namespace="/vinculacion"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_03-min.png" alt="servicios especializados"/></s:a>
                            <s:a action="cecap" namespace="/vinculacion"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_05-min.png" alt="servicios especializados"/></s:a>
                            <s:a action="diseno_imagen" namespace="/vinculacion"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_07-min.png" alt="servicios especializados"/></s:a>
                            <s:a action="produccion_audiovisual" namespace="/vinculacion"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_09-min.png" alt="servicios especializados"/></s:a>
                            <s:a action="servicios_tecnologicos" namespace="/vinculacion"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_11-min.png" alt="servicios especializados"/></s:a>
                            <!--<s:a action="centro_gastronomico" namespace="/vinculacion"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_13-min.png" alt="servicios especializados"/></s:a>-->
                        </figure>
                        <div class="corte"></div>
                    </section>
                    <section class="vinculacion_texto">
                        <article id="vinculacion_slider">
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_22 copia 2-min.png" alt="servicios especializados"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_22 copia 3-min.png" alt="servicios especializados"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_22 copia-min.png" alt="servicios especializados"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_22-min.png" alt="servicios especializados"/></figure>
                            <figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_22_22 copia-min.png" alt="servicios especializados"/></figure>
                            <!--<figure class="ls-layer"><img src="${pageContext.request.contextPath}/img/vinculacion/servicios_especializados/Servicios-especializados_22_22-min.png" alt="servicios especializados"/></figure>-->
                            <div class="corte"></div>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="vinculacion_texto">
                        <h4 class="tituloContenido">¿Quiénes somos?</h4>
                        <br/>
                        <p>Somos los encargados de gestionar los servicios que dan solución a los problemas y oportunidades que se presentan en las organizaciones de los sectores productivos privado y social, así como de las dependencias gubernamentales, en materia de:</p><br/>
                        <ul>
                            <li>Servicios Tecnológicos
                                <ul>
                                    <li>Pruebas de laboratorio</li>
                                    <li>Diseño e imagen</li>
                                    <li>Consultorías, estudios y proyectos</li>
                                    <li>Producción audiovisual</li>                                 
                                </ul>                            
                            </li>
                            <li>Capacitaciones
                                <ul>
                                    <li>Cursos</li>
                                    <li>Talleres</li>
                                    <li>Diplomados</li>
                                </ul>
                            </li>
                            <li>Calibración y Pruebas
                                <ul>
                                    <li>Calibración de manómetros y vacuómetros</li>
                                    <li>Pruebas ambientales (PST, PM10, ruido perimetral)</li>
                                    <li>Calibración de balanzas y  pesas</li>
                                    <li>Estudios de higiene laboral (ruido e iluminación en centros de trabajo)</li>
                                    <li>Sistemas de gestión de calidad</li>
                                </ul>
                            </li>
                        </ul><br/>
                        <p>Contamos con dos procesos certificados en el Sistema de Gestión de Calidad ISO 9001:2008 como son el proceso de Servicios Tecnológicos y el de Capacitación Profesional. Asimismo, el Centro de Calibración y Pruebas cuenta con una serie de acreditaciones y aprobaciones ante organismos nacionales e internacionales que permiten que las pruebas y ensayos que se realizan sean 100% confiables.</p>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Laura Beatriz Guzmán Priego</p>
                                <p>Directora de Servicios Especializados</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2006</p>
                                <p>Correo institucional: <a href="mailto:d.especializados@uttab.edu.mx">d.especializados@uttab.edu.mx</a></p>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=vinculacion" flush="true" />
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/js/layerslider.kreaturamedia.jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/JQuery/plugins/layerslider/JQuery/jquery-easing-1.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/vinculacion.min.js"></script>
    </body>
</html>