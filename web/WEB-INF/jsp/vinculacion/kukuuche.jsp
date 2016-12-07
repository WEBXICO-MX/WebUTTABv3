<%-- 
    Document   : kukuuche.jsp
    Created on : 25/11/2015, 11:38:24 AM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro Gastronómico</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro Gastronómico">
        <meta name="keywords" content="vinculación,Centro gastronómico,kuku Uche,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>Centro Gastronómico Kuku Uche</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <figure>
                            <img src="${pageContext.request.contextPath}/img/vinculacion/kukuuche/kuku-uche_03-min.png" alt="kuku Uche"/>
                        </figure>
                    </section>
                    <section class="vinculacion_texto">
                        <h4 class="tituloContenido">¿Sabías que la palabra "Kuku Uche" significa "Ven a Comer" en lengua chol?</h4>
                        <br/>
                        <p>Somos una fusión de restaurante-cafetería orgullosamente tabasqueño que se preocupa por rescatar los sabores tradicionales de nuestro estado y trasladarlos a una generación moderna que disfruta de una comida rápida, deliciosa, de excelente calidad y a un precio razonable.</p>
                        <br/>
                        <p>El Centro Gastronómico Kuku Uche tiene para ti los siguientes servicios:</p>
                    </section>
                    <section class="vinculacion_texto">
                        <article class="vinculacion_texto1">
                            <p class="negritas">Coffee breaks</p>
                            <p>Servicio que se brinda en un tiempo de 15 o 20 minutos y fue diseñado para que los que asistan a las reuniones puedan relajarse, eliminar el stress que es generado por el trabajo o la escuela. El Centro Gastronómico Kuku Uche ofrece una amplia variedad de bocadillos dulces y salados incluyendo un delicioso café y agua. ¡No se preocupe por los bocadillos de sus reuniones, Kuku Uche ya lo tiene todo listo para usted!</p>
                            <br>
                            <p class="negritas">Buffet</p>
                            <p>Contamos con servicio de desayuno desde las 8:00 a.m. y comida a partir de la 1:00 p.m. ofrecemos sopas, guisados y ensaladas, entre otras opciones a elegir.</p>
                            <br>
                            <p class="negritas">Servicio a la carta</p>
                            <p>Le invitamos a probar nuestros exquisitos platillos a la carta. No te pierdas la oportunidad de disfrutar de un delicioso Omelette relleno de jamón, queso o champiñones por la mañana  o de unos divertidos hot cakes con miel maple, tortas de carne al pastor, cochinita y chorizo. También contamos con una sección de opciones saludables en la que puedes encontrar sándwiches integrales así como frescas ensaladas de la casa.</p>
                            <br>
                            <p class="negritas">Panadería y repostería</p>
                            <p>Ofrecemos una exquisita variedad de volovanes dulces y salados, bocadillos para eventos especiales, así como cupcakes y pasteles de cumpleaños.</p>
                            <br>
                            <div class="ficha_contacto">
                                <header><h3>Contacto</h3></header>
                                <article>
                                    <p>Gabriela Balán Reyes</p>
                                    <p>Encargada del Centro Gastronómico</p>
                                    <p>Conmutador: +52 (993) 3.58.22.22 Ext. 6001</p>
                                    <p>Correo institucional: <a href="mailto:c.gastronomico@uttab.edu.mx">c.gastronomico@uttab.edu.mx</a></p>
                                </article>
                            </div>
                        </article>
                        <article class="vinculacion_texto2">
                            <figure>
                                <img src="${pageContext.request.contextPath}/img/vinculacion/kukuuche/kuku-uche_07-min.png" alt="kuku Uche"/>
                            </figure>
                            <br>
                            <figure>
                                <img src="${pageContext.request.contextPath}/img/vinculacion/kukuuche/kuku-uche_10-min.png" alt="kuku Uche"/>
                            </figure>
                        </article>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=vinculacion" flush="true" />
    </body>
</html>