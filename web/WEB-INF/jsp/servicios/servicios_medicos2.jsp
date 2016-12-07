<%-- 
    Document   : servicios_medicos2
    Created on : 23-nov-2015, 12:32:57
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Departamento de Servicios Médicos</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Departamento de Servicios Médicos">
        <meta name="keywords" content="servicios,Departamento de Servicios Médicos,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
        <jsp:include page="../includeHeader.min.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Servicios / Alumnos</span> /</h2>
                    <h1>Departamento de Servicios Médicos</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <figure><img src="${pageContext.request.contextPath}/img/servicios/servicios_medicos/servicios_medicos-min.png" alt="Departamento de Servicios Médicos"/></figure>
                    </section>
                    <section class="servicios_texto">
                        <p>Es un departamento que tiene como objetivo principal preservar la salud.</p><br/>
                        <p>Brindamos atención medica preventiva y de primer contacto a alumnos y personal que labora en esta institución, así como toda persona que se encuentre dentro de las instalaciones o en eventos oficiales (deportivos, cívicos, culturales u otros) donde se requiera hasta que el paciente sea estabilizado y, de ser requerido, que el paciente sea trasladado a una unidad hospitalaria para una mejor atención.</p><br/>
                        <p>Se encuentra ubicado en el edificio N° 2, cuenta con dos médicos y dos enfermeros capacitados para atender cualquier eventualidad. </p><br/>
                        <p>Los servicios que se proporcionan a la comunidad universitaria son los siguientes:</p><br/>
                        <ul>
                            <li>Realizar los trámites de afiliación de alumnos al IMSS</li>
                            <li>Atención a la comunidad universitaria en casos de eventualidad</li>
                            <li>Traslado de pacientes al área de urgencias del IMSS, si se requiere</li>
                            <li>Organizar y realizar cursos, talleres y conferencias sobre diversos temas de salud </li>
                            <li>Apoyar al departamento de actividades culturales y deportivas durante eventos externos e internos con la presencia de personal médico </li>
                            <li>Avalar incapacidades médicas de los alumnos</li>
                        </ul><br/>
                        <p>Horarios de atención: </p>
                        <p>Lunes a viernes de 7:00 a 21:00 horas.</p>
                        <p>Sábados de 8:00 a 16:00 horas.</p><br/>
                        <p>Teléfono: +52 (993) 3-58-22-22 Ext. 1100</p><br/>
                        <p>Notas importantes:</p><br/>
                        <ul>
                            <li>No se te olvide afiliarte al IMSS y traer una copia de la hoja de afiliación a este departamento. Recuerda que es un trámite obligatorio para tu titulación.</li>
                            <li>Te recomendamos portar siempre contigo una copia de tu carnet del IMSS.</li>
                        </ul>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
    </body>
</html>