<%-- 
    Document   : bolsa_trabajo
    Created on : 23-nov-2015, 12:31:30
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Bolsa de trabajo</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Bolsa de trabajo">
        <meta name="keywords" content="servicios,Bolsa de trabajo,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Servicios</span> /</h2>
                    <h1>Bolsa de Trabajo</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <figure><img src="${pageContext.request.contextPath}/img/servicios/bolsa_trabajo/bolsa_trabajo1-min.png" alt="Bolsa de trabajo"/></figure><br/>
                        <h3>¿Quiénes somos?</h3>
                        <p>La coordinación de Bolsa de Trabajo se encarga de mantener contacto con el sector empresarial para apoyar en su proceso de reclutamiento y selección de personal y, al mismo tiempo, apoyar a nuestros egresados a colocarse en el sector productivo.</p>
                    </section>
                    <section class="servicios_texto">
                        <h3>Proceso de solicitud para empresarios</h3>
                        <ul>
                            <li>Descargar y requisitar formato "SOLICITUD PARA CONTRATACIÓN DE EGRESADOS"</li>
                            <li>Opciones de envío:
                                <ul>
                                    <li>Enviar el formato requisitado al correo: btrabajo@uttab.edu.mx</li>
                                    <li>Imprimir el formato y presentarlo firmado en las oficinas de la coordinación de bolsa de trabajo ubicada en el edificio de vinculación</li>
                                    <li>Una vez recibido el formato nos contactaremos con usted a la brevedad, para acordar el servicio solicitado</li>
                                </ul>
                            </li>
                        </ul>
                    </section>
                    <section class="servicios_texto">
                        <h3>Proceso de solicitud para egresados</h3>
                        <ul>
                            <li>Accesar al Sistema Automatizado Integral de Información de las Universidades Tecnológicas (SAIIUT), en el link http://saiiut.uttab.edu.mx, en el módulo de vinculación bolsa de trabajo/proceso/bolsa de trabajo. No olvides guardar tu información</li>
                            <li>Una vez que identifiquemos una oportunidad de acuerdo a tu perfil te contactaremos de inmediato</li>
                        </ul>
                    </section>
                    <section class="servicios_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Gabriela Castillo Falcón</p>
                                <p>Encargada de la coordinación de Bolsa de Trabajo</p>
                                <p>Número directo: +52 (993) 3.58.22.07</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2010</p>
                                <p>Correo institucional: <a href="mailto:btrabajo@uttab.edu.mx">btrabajo@uttab.edu.mx</a></p>
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