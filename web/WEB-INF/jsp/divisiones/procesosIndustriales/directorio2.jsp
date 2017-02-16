<%-- 
    Document   : directorio2
    Created on : 19-nov-2015, 9:04:31
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Oferta educativa &#124; División Académica de Procesos Industriales &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Procesos Industriales">
        <meta name="keywords" content="oferta educativa,División Académica de Procesos Industriales, directorio, tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
            .divisiones_texto .hora_semana_mes li.reset{ margin-top: -18em;}
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
                    <h1>División Académica de Procesos Industriales</h1>
                    <div class="corte"></div>
                </header>
                <article class="divisiones_contenido">
                    <section class="divisiones_texto">
                        <div style="float:right;">
                            <s:a action="inicio" namespace="/oferta-educativa/procesos"><img src="${pageContext.request.contextPath}/img/divisiones/btn_division-min.png" alt="División Académica de Procesos Industriales"/></s:a>
                            <s:a action="directorio" namespace="/oferta-educativa/procesos"><img src="${pageContext.request.contextPath}/img/divisiones/btn_directorio-min.png" alt="Directorio de la División Académica de Procesos Industriales"/></s:a>
                        </div>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header><h3>Directorio</h3></header>
                        <article>
                            <div style=" width: 33%;float: left; font-size: 13px;">
                                <p class="negritas">Director</p>
                                <ul>
                                    <li>Mtro. Luis Alberto Escobedo Cazan</li>
                                </ul>
                            </div>
                            <div style=" width: 33%;float: right;font-size: 13px;">
                                <p class="negritas">Asistente</p>
                                <ul>
                                    <li>Lic. Orquidea Cardoza Hernández</li>
                                </ul>
                            </div>
                            <div style=" width: 33%;float: right;font-size: 13px;">
                                <p class="negritas">Secretaria</p>
                                <ul>
                                    <li>Lic. Antonia Córdova Acopa</li>
                                </ul>
                            </div><br/><br/>
                            <div class="corte"></div>
                            <div style=" width: 34%;float: left; font-size: 13px;" class="tiempo_completo">
                                <p class="negritas">Profesor de tiempo completo</p><br/>
                                <ol>
                                    <li>Ing. Alberto de la Fuente Ochoa</li>
                                    <li>M. en A. Ana María Inez Zita del Pilar Bravo Ramírez</li>
                                    <li>M. en C. Antonio Valadez Villareal</li>
                                    <li>Ing. Carmen Estrada Ramírez</li>
                                    <li>Ing. Elmer Martínez Méndez</li>
                                    <li>M. en I.A. Erwin Jenónimo García</li>
                                    <li>M. en C. Franco Lucio Ruiz Santiago</li>
                                    <li>M. en C. Josafat Alberto Becerra Hernández</li>
                                    <li>M. en C. José Antonio Carrera León</li>
                                    <li>M. en G.C.A. José García de la Cruz</li>
                                    <li>Ing. Liuva Vanessa Cortez Patiño</li>
                                    <li>Ing. Marcelino Chuc Muñoz</li>
                                    <li>Lic. Marco Antonio Velázquez Rojas</li>
                                    <li>M. en I. Rafael García Jiménez</li>
                                    <li>M. en C. Roberto Rocher Córdova</li>
                                    <li>Ing. Tarcilo Oropeza Olmos</li>
                                </ol>
                            </div>
                            <div style=" width: 65%;float: right;font-size: 13px;" class="hora_semana_mes">
                                <p class="negritas">Profesor de hora semana mes</p><br/>
                                <ol>
                                    <li>Ing. Alberto de la Cruz Cruz</li>
                                    <li>Ing. Domingo Rodríguez Córdova</li>
                                    <li>C.P. Elizabeth Gómez Rivera</li>
                                    <li>Lic. Francisco Javier Hernández Castañeda</li>
                                    <li>Lic. Georgina Capetillo Arévalo</li>
                                    <li>Lic. Guadalupe Correa Alcudia</li>
                                    <li>M. en C. José de la Cruz Domínguez Trujillo</li>
                                    <li>Dr. en A. Julio de Jesús Vázquez Falcón</li>
                                    <li>Lic. Luz del Alba Narváez Osorio</li>
                                    <li>Lic. Norma Estela Zamudio Morales</li>
                                    <li>M. en C. Ramón Salvador Soler Hernández</li>
                                    <li>Ing. Ricardo Deveze García</li>
                                    <li>Q.F.B. Rosa Aurora Hernández Ovando</li>
                                    <li>Lic. Trinidad Cruz Sánchez</li>
                                    <li>M. en A. Verónica de Dios Méndez</li>
                                    <li>Lic. Violeta Cazorla Piña</li>
                                    <li>M. en A. Rosa Victoria Alberto Berezaluce</li>
                                    <li>Ing. José Luis Reyes Ramirez</li>
                                    <li>Ing. Gabriel Gilberto Monjardin Hernández</li>
                                    <li>Ing. Freddy Rubén Uribio González</li>
                                    <li>Ing. Jesús Manuel López Chablé</li>
                                    <li>M. en I. Miguel Humberto Moreno Carrillo</li>
                                    <li>Lic. Raquel Adriana Mosqueda Rámirez</li>
                                    <li>Lic. Elien Zurita Carpio</li>
                                    <li>Lic. Efren Benjamin Olalde Altamirano</li>
                                    <li>Ing. Victor Asunción Argaez López</li>
                                    <li>Ing. Juan Carlos de la Cruz Raymundo</li>
                                    <li>Ing. Oscar Rafael Hernández Hernández</li>
                                </ol>
                            </div>
                        </article>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <div class="ficha_contacto" style="height: 160px;">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>N&uacute;mero directo: +52 (993) 3.58.22.11</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 1001</p>
                                <p>Correo institucional: <a href="mailto:d.ppymi@uttab.edu.mx">d.ppymi@uttab.edu.mx</a></p>
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