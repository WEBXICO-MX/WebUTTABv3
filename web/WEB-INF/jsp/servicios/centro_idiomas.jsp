<%-- 
    Document   : centro_idiomas
    Created on : 23-nov-2015, 12:30:53
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Idiomas UT</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Idiomas UT">
        <meta name="keywords" content="servicios,Centro de Idiomas UT,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h2><span class="texto_resaltado">Alumnos</span> /</h2>
                    <h1>Centro de Idiomas UT</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto_full">
                        <figure><img src="${pageContext.request.contextPath}/img/servicios/centro_idiomas/ciut1-min.png" alt="Centro de Idiomas UT"/></figure>
                    </section>
                    <section class="servicios_texto">
                        <article>
                            <p>El Centro de Idiomas imparte cursos de inglés, francés e italiano al público en general y a la comunidad universitaria.</p><br/>
                            <p>Si ya cuentas con conocimientos del idioma inglés o francés puedes presentar el examen de ubicación gratuito y de esta manera identificaremos tu nivel de acuerdo a nuestro esquema de estudios.</p><br/>
                        </article>
                        <article class="servicios_texto1">
                            <h3 style="margin-left: 43px;">Servicios</h3>
                            <ul>
                                <li>Cursos de formación general en idiomas</li>
                                <li>Cursos de acuerdo a tu disponibilidad de horario</li>
                                <li>Inglés para negocios</li>
                                <li>Cursos de capacitación para profesores de inglés</li>
                                <li>Traducción de documentos escolares para revalidación de estudios</li>
                                <li>Exámenes de ubicación gratuito en los idiomas inglés y francés</li>
                                <li>Cursos de preparación para exámenes TOEFL ITP & TOEFL Junior</li>
                                <li>Aplicación del examen TOEFL ITP & TOEFL Junior</li>
                                <li>Cursos de preparación para exámenes de Certificación de la Universidad de Cambridge PET, FCE, CAE & TKT</li>
                            </ul><br/>
                            <h3 style="margin-left: 43px;">Horario de cursos matutinos y vespertinos </h3>
                            <ul>
                                <li>Lunes-miércoles y viernes de 16:00 a 18:00 horas</li>
                                <li>Martes y jueves  de 16:00 a 19:00 horas</li>
                                <li>Viernes de 14:00 a 19:00 horas</li>
                                <li>Sábados de 08:00 a 13:00 horas</li>
                                <li>Domingos de 09:00 a 14:00 horas</li>
                            </ul><br/>
                            <h3 style="margin-left: 43px;">Horario de atención:</h3>
                            <ul>
                                <li>Lunes a viernes de 08:00 a 19:00 horas</li>
                                <li>Sábados de 08:00 de 15:00 horas</li>
                                <li>Domingos de 08:00 a 14:00 horas</li>
                            </ul><br/>
                            <div class="ficha_contacto">
                                <header><h3>Contacto</h3></header>
                                <article>
                                    <p>Carolina Guerrero Díaz</p>
                                    <p>Coordinadora del Centro de Idiomas</p>
                                    <p>Número directo: +52 (993) 3.58.22.07 ext. 2030</p>
                                    <p>Correo institucional: <a href="mailto:ciut@uttab.edu.mx">ciut@uttab.edu.mx</a></p>
                                    <div class="corte"></div>
                                </article>
                            </div>
                        </article>
                        <article class="servicios_texto2" style="text-align: right;">
                            <figure>
                                <img src="${pageContext.request.contextPath}/img/servicios/centro_idiomas/ciut2-min.png" alt="Centro de Idiomas UT" style="margin-bottom: 15px;"/>
                                <img src="${pageContext.request.contextPath}/img/servicios/centro_idiomas/ciut3-min.png" alt="Centro de Idiomas UT"/>
                            </figure>
                        </article>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
    </body>
</html>