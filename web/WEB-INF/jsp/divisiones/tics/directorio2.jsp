<%-- 
    Document   : directorio2
    Created on : 19-nov-2015, 14:52:09
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Oferta educativa &#124; División Académica de Tecnologías de la Información y Comunicación &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Tecnologías de la Información y Comunicación">
        <meta name="keywords" content="oferta educativa,División Académica de Tecnologías de la Información y Comunicación, directorio, tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/divisiones2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            /* Para listas ordenadas a 2 columnas*/
            * html ol li {position: relative; list-style: none;}
            .divisiones_texto .hora_semana_mes ol,.divisiones_texto .tiempo_completo ol { margin: 0 0 1em 1em; padding: 0;}
            .divisiones_texto .hora_semana_mes ol li {line-height: 1.2em;margin: 0;padding: 0;}
            .divisiones_texto .hora_semana_mes ol li.column1 { margin-left: 0em; }
            .divisiones_texto .hora_semana_mes ol li.column2 { margin-left: 20em; }
            .divisiones_texto .hora_semana_mes ol li.column3 { margin-left: 20em; }
            .divisiones_texto .hora_semana_mes li.reset{ margin-top: -21.6em;}
        </style>
    </head>
    <body>
        <jsp:include page="../../includeHeader.jsp?origen=division&Correo=1" flush="true"/>
        <!-- Cuerpo -->
        <main>
            <section class="divisiones_section">
                <header class="divisiones_titulo">
                    <h2><span class="texto_resaltado">Oferta educativa</span> /</h2>
                    <h1>División Académica de Tecnologías de la Información y Comunicación</h1>
                    <div class="corte"></div>
                </header>
                <article class="divisiones_contenido">
                    <section class="divisiones_texto">
                        <figure style="float:right;">
                            <s:a action="inicio" namespace="/oferta_educativa/tic"><img src="${pageContext.request.contextPath}/img/divisiones/btn_division-min.png" alt="División Académica de Tecnologías de la Información y Comunicación"/></s:a>
                            <s:a action="directorio" namespace="/oferta_educativa/tic"><img src="${pageContext.request.contextPath}/img/divisiones/btn_directorio-min.png" alt="Directorio de la División Académica de Tecnologías de la Información y Comunicación"/></s:a>
                            </figure>
                            <div class="corte"></div>
                        </section>
                        <section class="divisiones_texto">
                            <header><h3>Directorio</h3></header><br/>
                            <article>
                                <div style=" width: 33%;float: left; font-size: 13px;">
                                    <p class="negritas">Director</p>
                                    <ul>
                                        <li>Lic. José Luis Martínez Rivera</li>
                                    </ul>
                                </div>
                                <div style=" width: 33%;float: right;font-size: 13px;">
                                    <p class="negritas">Asistentes</p>
                                    <ul>
                                        <li>Lic. Imelda del Carmen Villegas Ovando</li>
                                        <li>Lic. Abel Osorio Jiménez</li>
                                    </ul>
                                </div>
                                <div style=" width: 33%;float: right;font-size: 13px;">
                                    <p class="negritas">Secretaria</p>
                                    <ul>
                                        <li>Leticia Avendaño Hernández</li>
                                    </ul>
                                </div><br/><br/>
                                <div class="corte"></div>
                                <div style=" width: 34%;float: left; font-size: 13px;" class="tiempo_completo">
                                    <p class="negritas">Profesor de tiempo completo</p><br/>
                                    <ol>
                                        <li>M.A.T.I. Eligio Cachón Menéndez</li>
                                        <li>M.T.C. Gladys del Carmen Cálao Sánchez</li>
                                        <li>M. en I.S. Amir Alonso Carrillo Andrade</li>
                                        <li>M.T.E. Ana Aurora Guerrero González</li>
                                        <li>M. en IS. María Reyna Guillermo Guillermo</li>
                                        <li>M.A. Gerardo Enrique Gutiérrez Romero</li>
                                        <li>Lic. Librado Jiménez Maceda</li>
                                        <li>M. en IS. Martha Ofelia Jiménez Velázquez</li>
                                        <li>M. en S.I. Hipólito López Miranda</li>
                                        <li>Ing. Carlos Raúl Muñoz Rodríguez</li>
                                        <li>M. en I.S. Salvador Pérez García</li>
                                        <li>M. en IS. Octavio Elías Sánchez Aquino</li>
                                        <li>M.T.I. Juan Gabriel Vargas Franco</li>
                                        <li>M. en I.S. Francisco Javier Velázquez Medellín</li>
                                    </ol>
                                </div>
                                <div style=" width: 65%;float: right;font-size: 13px;" class="hora_semana_mes">
                                        <p class="negritas">Profesor de hora semana mes</p><br/>
                                        <ol>
                                            <li class="column1">Lic. Julio Cesar Arias Ovando</li>
                                            <li class="column1">M.E. Rocío del Carmen Duran Maldonado</li>
                                            <li class="column1">M.E. Roberto Fernández Ulin</li>
                                            <li class="column1">M.E. Marvin Hernández Velázquez</li>
                                            <li class="column1">Ing. Yesenia Madrazo Cruz</li>
                                            <li class="column1">M.A. Carlos Mario Martínez Izquierdo</li>
                                            <li class="column1">M.E. Candelario Méndez Olán</li>
                                            <li class="column1">M.E. Patricia Mendoza Cruz.</li>
                                            <li class="column1">Lic. Carlos Francisco Pensabe Rivera</li>
                                            <li class="column1">Ing. Maximiliano Santiago Pérez</li>
                                            <li class="column1">Lic. María De La Luz Valdez Ramos</li>
                                            <li class="column1">Lic. Margarita Vázquez Lara</li>
                                            <li class="column1">M.A.T.I. Rafael Gonzalo Álvarez Campos</li>
                                        </ol>
                                </div>
                            </article>
                            <div class="corte"></div>
                        </section>
                        <section class="divisiones_texto">
                            <div class="ficha_contacto">
                                <header><h3>Contacto</h3></header>
                                <article>
                                   <p>N&uacute;mero directo: +52 (993) 3.58.22.03</p>
                                   <p>Conmutador: +52 (993) 3.58.22.22 Ext. 8000 y 8001</p>
                                   <p>Correo institucional: <a href="mailto:d.tic@uttab.edu.mx">d.tic@uttab.edu.mx</a></p>
                                </article>
                            </div>
                        </section>
                    </article>
                    <div class="corte"></div>
                </section>
            </main>
            <!-- Cuerpo -->
        <jsp:include page="../../includePie.jsp?origen=division" flush="true" />
    </body>
</html>