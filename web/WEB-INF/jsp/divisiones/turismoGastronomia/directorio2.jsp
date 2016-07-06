<%-- 
    Document   : directorio2
    Created on : 19-nov-2015, 16:05:24
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Oferta educativa &#124; División Académica de Turismo y Gastronomía &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Turismo y Gastronomía">
        <meta name="keywords" content="oferta educativa,División Académica de Turismo y Gastronomía, directorio, tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
            * html ul li {position: relative;}
            .divisiones_texto .hora_semana_mes ul,.divisiones_texto .tiempo_completo ol { margin: 0 0 1em 1em; padding: 0;}
            .divisiones_texto .hora_semana_mes ul li {line-height: 1.2em;margin: 0;padding: 0;}
            .divisiones_texto .hora_semana_mes ul li.column1 { margin-left: 0em; }
            .divisiones_texto .hora_semana_mes ul li.column2 { margin-left: 25em; }
            .divisiones_texto .hora_semana_mes ul li.column3 { margin-left: 20em; }
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
                    <h1>División Académica de Turismo y Gastronomía</h1>
                    <div class="corte"></div>
                </header>
                <article class="divisiones_contenido">
                    <section class="divisiones_texto">
                        <figure style="float:right;">
                            <s:a action="inicio" namespace="/oferta_educativa/turismo"><img src="${pageContext.request.contextPath}/img/divisiones/btn_division-min.png" alt="División Académica de Turismo y Gastronomía"/></s:a>
                            <s:a action="directorio" namespace="/oferta_educativa/turismo"><img src="${pageContext.request.contextPath}/img/divisiones/btn_directorio-min.png" alt="Directorio de la División Académica de Turismo y Gastronomía"/></s:a>
                            </figure>
                            <div class="corte"></div>
                        </section>
                        <section class="divisiones_texto">
                            <header><h3>Directorio</h3></header><br/>
                            <article>
                                <div style=" width: 33%;float: left; font-size: 13px;">
                                    <p class="negritas">Directora</p>
                                    <ul>
                                        <li>Mtra. Sara Trejo González</li>
                                    </ul>
                                </div>
                                <div style=" width: 33%;float: right;font-size: 13px;">
                                    <p class="negritas">Asistentes</p>
                                    <ul>
                                        <li>Emma Leticia Jiménez Hernández</li>
                                        <li>Yuri del Carmen  Cruz Peréz</li>
                                        <li>Alicia Narváez Bautista </li>
                                    </ul>
                                </div>
                                <div style=" width: 33%;float: right;font-size: 13px;">
                                    <p class="negritas">Secretaria</p>
                                    <ul>
                                        <li>Lucero Victoria Ulín</li>
                                        <li>Eréndira Sánchez García</li>
                                    </ul>
                                </div><br/><br/>
                                <div class="corte"></div>
                                <div style=" width: 34%;float: left; font-size: 13px;" class="tiempo_completo">
                                    <p class="negritas">Profesores de tiempo completo</p><br/>
                                    <ul>
                                        <li>M. en A. Arturo Guadalupe Abreu Soler</li>
                                        <li>Dr. Manuel Antonio Acosta Solórzano</li> 
                                        <li>M. en A. Rosa Margarita Alamilla Ocaña </li>
                                        <li>M. en M.T. Anabelia Brito Ramírez </li>
                                        <li>M. en M.T. María Jesús Bugarin Torres </li>
                                        <li>M. en A. Manuel Antonio Díaz Peralta  </li>
                                        <li>Lic. Oscar Armando Díaz Aguilar </li>
                                        <li>M. en D.T. Diego Antonio Domínguez Mayor</li> 
                                        <li>M. en C. Marisela García Cataldo </li>
                                        <li>M. en I.A. Ana Line Hernández Muñoz </li>
                                        <li>Lic. Arturo Landero Izquierdo </li>
                                        <li>M. en A. Irasema De Monserrat León Prieto</li>
                                        <li>Dra. Susana Mandujano Contreras </li>
                                        <li>M. en A. María Dolores May Tosca </li>
                                        <li>M. en A. Rafaela Mata Reyes </li>
                                        <li>M. en A. Elizabeth Maya Cruz </li>
                                        <li>M. en A. Verónica Isabel  Palma Córdova </li>
                                        <li>Lic. Rafael Vidal  Pascacio Loeza </li>
                                        <li>Lic. Asunción Romero Vértiz </li>
                                        <li>Lic. María del Rosario Toledo Gómez </li>
                                        <li>M. Tomas Manrique Sansores Porter </li>
                                        <li>M. en A. Ingreed Zamorano Lezama</li>
                                    </ul>
                                </div>
                                <div style=" width: 65%;float: right;font-size: 13px;" class="hora_semana_mes">
                                        <p class="negritas">Profesores de hora semana mes</p><br/>
                                        <ul>
                                            <li>Lic. Leticia Alvarado Aguirre</li>
                                            <li>Lic. Elizabeth Álvarez Mandujano </li>
                                            <li>Lic. Flor de María Ávila Rodríguez</li> 
                                            <li>Lic. Carlo Rafael Bastar Camelo</li>
                                            <li>Lic. María Verónica Bautista Carrera</li>
                                            <li>Lic. Francisco Javier Bocanegra Guzmán</li>
                                            <li>Lic. Juan José Cancino Vidal</li>
                                            <li>Lic. Pedro Antonio Cano Olán</li>
                                            <li>Ing. Carlos Mario de la Fuente Sánchez </li>
                                            <li>Lic. Juan Carlos Díaz Gutiérrez </li>
                                            <li>M. en A. María del Rocío Figueroa Cruz</li>
                                            <li>Lic. Sebastián García de la Cruz </li>
                                            <li>Lic. Guadalupe García Pérez</li>
                                            <li>Lic. Paulina Hernández Luciano </li>
                                            <li>Lic. Marqueza Hernández Méndez </li>
                                            <li>M. en A. Arcadia Helena Martínez Ceballos </li>
                                            <li>Lic. Tanya Martínez Ceballos</li>
                                            <li>Ing. Mireya Martínez Rodríguez </li>
                                            <li>Lic. Alejandro Narváez Marín </li>
                                            <li>Lic. Juan Carlos Olán Sánchez </li>
                                            <li>Ing. María Guadalupe Pereyra Arias</li>
                                            <li>Lic. Juan Manuel Pérez Díaz </li>
                                            <li>M. en A. Rosa Pérez Gaspar</li>
                                            <li>Lic. Marco Pérez Hernández</li>
                                            <li>Lic. Juan Ignacio Pulido Escobar </li>
                                            <li>Lic. Patricia Rodríguez Hernández </li>
                                            <li>M. en A. Perla del Rocío Rojas León</li>
                                            <li>M. en A. Adolfo Salvador González</li>
                                            <li>Lic. Amada de los Ángeles Santiago Ruíz </li>
                                            <li>Lic. Jacqueline Hernández Vázquez</li>
                                        </ul>
                                </div>
                            </article>
                            <div class="corte"></div>
                        </section>
                        <section class="divisiones_texto">
                            <div class="ficha_contacto">
                                <header><h3>Contacto</h3></header>
                                <article>
                                   <p>N&uacute;mero directo: +52 (993) 3.58.24.64</p>
                                   <p>Conmutador: +52 (993) 3.58.22.22 Ext. 7000 y 7001</p>
                                   <p>Correo institucional: <a href="mailto:d.tur_gas@uttab.edu.mx">d.tur_gas@uttab.edu.mx</a></p>
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