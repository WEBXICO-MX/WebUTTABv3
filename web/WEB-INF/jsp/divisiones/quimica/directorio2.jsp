<%-- 
    Document   : directorio2
    Created on : 19-nov-2015, 13:11:43
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Oferta educativa &#124; División Académica de Química &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Química">
        <meta name="keywords" content="oferta educativa,División Académica de Química, directorio, tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/divisiones3.min.css"/>
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
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../../index3Header.min.jsp" flush="true"  />
            <section class="divisiones_section">
                <header class="divisiones_titulo">
                    <h2><span class="texto_resaltado">Oferta educativa</span> /</h2>
                    <h1>División Académica de Química</h1>
                    <div class="corte"></div>
                </header>
                <article class="divisiones_contenido">
                    <section class="divisiones_texto">
                        <div style="float:right;">
                            <s:a action="inicio" namespace="/oferta-educativa/quimica"><img src="${pageContext.request.contextPath}/img/divisiones/btn_division-min.png" alt="División Académica de Química"/></s:a>
                            <s:a action="directorio" namespace="/oferta-educativa/quimica"><img src="${pageContext.request.contextPath}/img/divisiones/btn_directorio-min.png" alt="Directorio de la División Académica de Química"/></s:a>
                            </div>
                            <div class="corte"></div>
                        </section>
                        <section class="divisiones_texto">
                            <header><h3>Directorio</h3></header>
                            <article>
                                <div style=" width: 33%;float: left; font-size: 13px;">
                                    <p class="negritas">Encargado</p>
                                    <ul>
                                        <li>Ing. José Alfredo Irineo Mijangos</li>
                                    </ul>
                                </div>
                                <div style=" width: 33%;float: right;font-size: 13px;">
                                    <p class="negritas">Asistente</p>
                                    <ul>
                                        <li>Lic. Ana Laura Vidal Martínez</li>
                                        <li>TSU Raúl Daniel Ramírez Zapata</li>
                                    </ul>
                                </div>
                                <div style=" width: 33%;float: right;font-size: 13px;">
                                    <p class="negritas">Secretaria</p>
                                    <ul>
                                        <li>María Guadalupe Frías de Dios</li>
                                        <li>Cristi Fabiola Hernández Jiménez</li>
                                        <li>Elvira Vidal Carrera</li>
                                    </ul>
                                </div><br/><br/>
                                <div class="corte"></div><br/>
                                <div style=" width: 34%;float: left; font-size: 13px;" class="tiempo_completo">
                                    <p class="negritas">Profesor de tiempo completo</p><br/>
                                    <ol>
                                        <li>Ing. Áureo Rivera Córdova</li> 
                                        <li>Ing. Claudia Ma. del Carmen Ceniceros González</li>
                                        <li>Ing. Daniel Gutiérrez Ramos</li> 
                                        <li>Ing. Eduardo Torres Aguilar</li>
                                        <li>Ing. Elsa Emilia Uicab Córdova</li> 
                                        <li>Ing. Gabriel Ramón Hernández</li>
                                        <li>Ing. Jorge Luis Soberano Montuy</li>
                                        <!--<li>Ing. José A. Irineo Mijangos</li> -->
                                        <li>Ing. José del Carmen Hernández de la Cruz</li>
                                        <li>Ing. José Fernando Córdova Gómez</li> 
                                        <li>Fís. Marcos Andrés Jiménez Moreno</li> 
                                        <li>Ing. Nancy Elena Hernández Morales</li>
                                        <li>Ing. Noemí Monserrato Goñi Vera</li>
                                        <li>M.I.P.A. René Méndez Villegas</li>
                                        <li>M.I.P.A. Santiago Mar Balderas</li>
                                        <li>Ing. William Montiel Reyes</li>
                                        <li>Lic. Areli López Jiménez</li>
                                        <li>M.I.P.A. Juan Ismael Ledesma Herrera</li>
                                        <li>M.I.P.A. Petrona Gómez Rivera</li>
                                    </ol>
                                </div>
                                <div style=" width: 65%;float: right;font-size: 13px;" class="hora_semana_mes">
                                    <p class="negritas">Profesor de hora semana mes</p><br/>
                                    <ol>
                                        <li>Ing. Abel de la Cruz Hernández</li>
                                        <li>M. en A. Ada del Rosario Alejandro Pantoja</li>
                                        <li>M. en I. Andrés Arias de la Cruz</li>
                                        <li>Lic. Ángel Mario López Pérez</li>
                                        <li>Lic. Antonia Gómez de los Santos</li>
                                        <li>Ing. Claudia Alejandra Quiroz Sánchez</li>
                                        <li>Lic. Damiana Romero Balcázar</li>
                                        <li>Ing. Felipa Palafox León</li>
                                        <li>Lic. Jesús Leyva Rodriguez</li>
                                        <li>Ing. José Victor Guillen Mendoza</li>
                                        <li>Ing. Luiz Sosa Castro</li>
                                        <li>Ing. Luz Adriana Ruiz Méndez</li>
                                        <li>Lic. Marbella Jiménez Medina</li>
                                        <li>M. en E. Margarita Barrueta Chable</li>
                                        <li>Ing. María Candelaria Tejero Rivas</li>
                                        <li>Lic. Marili Córdova Juárez</li>
                                        <li>Lic. Marisol de la Cruz Gómez</li>
                                        <li>Ing. Mónica Andrade Medina</li>
                                        <li>Lic. Monserrat Ángulo Alejandro</li>
                                        <li>Fís. Neiber Nairobi Vázquez Valenzuela</li>
                                        <li>Ing. Ramiro Olive López</li>
                                        <li>Ing. Refugio Zacarías Hernández</li>
                                        <li>Lic. Saayde Hernández Contreras</li>
                                        <li>Biol. Silvia Catalina Lau Vázquez</li>
                                        <li>Lic. Teresa de los Ángeles Jiménez Martínez</li>
                                        <li>Lic. Toni Martínez Ramos</li>
                                    </ol>
                                </div>
                            </article>
                            <div class="corte"></div>
                        </section>
                        <section class="divisiones_texto">
                            <div class="ficha_contacto" style="height: 160px;">
                                <header><h3>Contacto</h3></header>
                                <article>
                                    <p>N&uacute;mero directo: +52 (993) 3.58.22.15</p>
                                    <p>Conmutador: +52 (993) 3.58.22.22 Ext. 3004</p>
                                    <p>Correo institucional: <a href="mailto:d.quimica@uttab.edu.mx">d.quimica@uttab.edu.mx</a></p>
                                </article>
                            </div>
                        </section>
                    </article>
                    <div class="corte"></div>
                </section>
            <jsp:include page="../../index3Footer.min.jsp" flush="true"  />                
        </main>
    </body>
</html>