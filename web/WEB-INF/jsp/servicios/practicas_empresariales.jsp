<%-- 
    Document   : practicas_empresariales
    Created on : 23-nov-2015, 12:33:39
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Estadías Profesionales</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco, Estadías Profesionales">
        <meta name="keywords" content="servicios,Estadías Profesionales,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            .calendario_actividades
            { color:#0D74B4; font-weight: bold;}
        </style>
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Servicios / Alumnos</span> /</h2>
                    <h1>Estadías Profesionales</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <figure><img src="${pageContext.request.contextPath}/img/servicios/practicas_empresariales/practicas_empresariales-min.png" alt="Prácticas Empresariales y Estadías"/></figure>
                    </section>
                    <section class="servicios_texto">
                        <h3>¿Quiénes somos?</h3>
                        <p>Los responsables de el vínculo con los sectores público, privado y social, a través de los procesos de visitas y estadías para contribuir a la formación profesional del alumno, reforzando los conocimientos adquiridos en su desarrollo académico.</p><br/>
                        <h4>Visitas guiadas</h4>
                        <p>Recorridos que se hacen en las empresas, organismos o instituciones, para que los alumnos conozcan las actividades y/o áreas que intervienen en sus procesos.</p><br/>
                        <h4>Estadías </h4>
                        <p>Estancia que realizan los alumnos durante el último cuatrimestre de su carrera en el sector empresarial, organismo o intitución acorde a su perfil académico. En este periodo deben formular o realizar un proyecto que solucione un problema o aproveche una oportunidad para la empresa, organismo o institución.</p>
                    </section>
                    <section class="servicios_texto">
                        <h3>Solicitud para empresarios</h3>
                        <p>Estimado empresario si está interesado en brindarles la oportunidad a los alumnos de la UTTAB para que realicen su estadía en la empresa que usted representa, porfavor de requisitar los siguientes formatos:</p>
                        <ul>
                            <li><a href="viewFile.action?i=5&d=practicas" target="_blank">Formato de vinculación y actualización de empresas</a></li>
                            <li><a href="viewFile.action?i=6&d=practicas" target="_blank">Solicitud de alumnos para estadías</a></li>
                        </ul><br/>
                    </section>
                    <section class="servicios_texto">
                        <h3><a href="viewFile.action?i=4&d=practicas" target="_blank">Periodos de solicitud de alumnos para estadía</a></h3>
                        <p>Opciones de envío:</p><br/>
                        <ul>
                            <li>Enviar el formato requisitado al correo: <a href="mailto:eempresarial@uttab.edu.mx">eempresarial@uttab.edu.mx</a></li>
                            <li>Imprimir el formato y presentarlo firmado en la oficina de la Coordinación de Enlace ubicada en el edificio de vinculación</li>
                            <li>Una vez recibido el formato nos contactaremos con usted para dar seguimiento a la solicitud</li>
                        </ul><br/>
                    </section>
                    <section class="servicios_texto">
                        <h3>Solicitud para alumnos</h3>
                        <ul>
                            <li>Asistir a la reunión informativa agendada en el calendario de actividades de estadía</li>
                            <li><a href="viewFile.action?i=13&d=practicas" target="_blank" class="calendario_actividades">Calendario de actividades de estadías Enero – Abril 2017</a> <img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt="PDF"/></li>
                            <!--<li><a href="viewFile.action?i=10&d=practicas" target="_blank" class="calendario_actividades">Calendario de actividades de estadías Enero – Abril 2016</a> <img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt="PDF"/></li>-->
                            <li><a href="viewFile.action?i=11&d=practicas" target="_blank" class="calendario_actividades">Calendario de actividades de estadías Mayo – Agosto 2016</a> <img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt="PDF"/></li>
                            <li><a href="viewFile.action?i=12&d=practicas" target="_blank" class="calendario_actividades">Calendario de actividades de estadías Septiembre – Diciembre 2016</a> <img src="${pageContext.request.contextPath}/img/Adobe-PDF-Document-icon.png" alt="PDF"/></li>
                        </ul><br/>
                    </section>
                    <section class="servicios_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Ana María Gómez Hernández</p>
                                <p>Jefa del departamento de Seguimiento a Egresados y Educación Contínua</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2008|2009</p>
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
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
    </body>
</html>