<%-- 
    Document   : atencion_psicopedagogica
    Created on : 23-nov-2015, 12:32:39
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Atención Psicopedagógica</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Atención Psicopedagógica">
        <meta name="keywords" content="servicios,Atención Psicopedagógica,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]--> 
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Servicios / Alumnos</span></h2>
                    <h1>Atención Psicopedagógica</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <img src="${pageContext.request.contextPath}/img/servicios/atencion_psicopedagogica/atencion_psicopedagogica1-min.png" alt="Atención Psicopedagógica"/>
                        <p>Es un espacio creado con el firme propósito de orientar y contribuir al pleno desarrollo de las potencialidades en el ámbito personal y profesional de los alumnos.</p>
                        <ul>
                            <li>Consultas individuales</li>
                            <li>Consultas grupales</li>
                            <li>Talleres</li>
                            <li>Conferencias</li>
                            <li>Examen psicométrico a los alumnos de nuevo ingreso</li>
                        </ul>
                    </section>
                    <section class="servicios_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Ma. del Carmen de la Torre Hidalgo</p>
                                <p>Jefa del departamento de Servicios Estudiantiles</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 1010</p>
                                <p>Correo institucional: <a href="mailto:estudiantiles@uttab.edu.mx">estudiantiles@uttab.edu.mx</a></p>
                                <div class="corte"></div>
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
