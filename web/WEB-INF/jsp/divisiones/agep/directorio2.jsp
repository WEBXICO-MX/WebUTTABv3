<%-- 
    Document   : directorio2
    Created on : 18-nov-2015, 11:32:09
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Oferta educativa &#124; División Académica de Administración y Gestión de Proyectos &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Administración y Gestión de Proyectos">
        <meta name="keywords" content="oferta educativa,División Académica de Administración y Gestión de Proyectos, directorio, tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>División Académica de Administración y Gestión de Proyectos</h1>
                    <div class="corte"></div>
                </header>
                <article class="divisiones_contenido">
                    <section class="divisiones_texto">
                        <div style="float:right;">
                            <s:a action="inicio" namespace="/oferta-educativa/agep"><img src="${pageContext.request.contextPath}/img/divisiones/btn_division-min.png" alt="División Académica de Administración y Gestión de Proyectos"/></s:a>
                            <s:a action="directorio" namespace="/oferta-educativa/agep"><img src="${pageContext.request.contextPath}/img/divisiones/btn_directorio-min.png" alt="Directorio de la División Académica de Administración y Gestión de Proyectos"/></s:a>
                        </div>
                        <div class="corte"></div>
                    </section>
                    <section class="divisiones_texto">
                        <header><h3>Directorio</h3></header>
                        <article>
                            <div style=" width: 34%;float: left; font-size: 13px;">
                                <p class="negritas">Director</p>
                                <ul>
                                    <li>M. en C. Marcel Ruiz Martínez</li>

                                </ul>
                            </div>
                            <div style=" width: 65%;float: right;font-size: 13px;">
                                <p class="negritas">Secretarias</p>
                                <ul>
                                    <li>L.C.P. Mayra Rodríguez Giorgana</li> 
                                    <li>TSU Beatriz Pérez Naranjo</li>
                                    <li>L.R.C. María del Pilar Vidal López</li>
                                </ul><br/>
                            </div>
                            <div class="corte"></div>
                            <div style=" width: 34%;float: left; font-size: 13px;" class="tiempo_completo">
                                <p class="negritas">Profesor de tiempo completo</p><br/>
                                <ol>
                                    <li>M. en A. Claudia Fabiola Ávila Guzmán</li>
                                    <li>M. en A. Elsy Janeth Alejandro Pantoja</li>
                                    <li>M.I.P.A. Juan Javier Castillo Ramiro</li>
                                    <li>M. en A. Juana Guerrero González</li> 
                                    <li>M. en A. María Guadalupe Bustamante Cornelio</li>
                                    <li>M.C.E. María Ydolina Rosales Pérez</li>
                                    <li>M. en A. Norma Angélica Hernández Gómez</li>  
                                    <li>M. en A. Ramón Ramón Castillo</li>
                                    <li>Dr. Sergio Valle Mijangos</li> 
                                    <li>M. en A. Venilde Herrera Roldán</li>
                                </ol>
                            </div>
                            <div style=" width: 65%;float: right;font-size: 13px;" class="hora_semana_mes">
                                <p class="negritas">Profesor de hora semana mes</p><br/>
                                <ol>
                                    <li class="column1">M. en A. Abigail Gómez Córdova</li> 
                                    <li class="column1">Lic. Ana Patricia Bustamante Cornelio</li>
                                    <li class="column1">Lic. Ana Patricia Torres Macías</li>
                                    <li class="column1">Dr. Blanca Lilia Ramos González</li>
                                    <li class="column1">M. en E. Eduardo Estañol Vidrio</li>
                                    <li class="column1">Lic. Erika Ramírez Díaz</li>
                                    <li class="column1">M.I.A. Esmeralda Medina Santiago</li> 
                                    <li class="column1">M. en C. Freddy Alcudia de los Santos</li> 
                                    <li class="column1">M. en A. Humberto Hernández Arias</li> 
                                    <li class="column1">M.I.A. Iracema Valenzuela López</li> 
                                    <li class="column1">Dr. Ithzel Díaz Cordero</li> 
                                    <li class="column1">M. en A. Lizbeth Carrillo Ponte</li> 
                                    <li class="column2 reset">M. en C. Luz María Arias Izquierdo</li>
                                    <li class="column2">Ing. Marcelino Bravata Bravata</li>
                                    <li class="column2">M. en A. María de los Ángeles Pérez de la Torre</li>
                                    <li class="column2">M.C.E. María Priscila Vasconcelos Ovando</li> 
                                    <li class="column2">M. en A. Mercedes López Gómez</li>
                                    <li class="column2">Lic. Norma Saraí Priego Cruz</li>  
                                    <li class="column2">M. en A. Paulino Pérez Bautista</li> 
                                    <li class="column2">M.I.A. Rosa Águeda Zinta Arias</li> 
                                    <li class="column2">M.I.A. Rosa Elena Pérez Pérez</li> 
                                    <li class="column2">Lic. Sergio González Priego</li>  
                                    <li class="column2">Lic. Thelma del Carmen Shirma Carrillo </li>
                                </ol>
                            </div>
                        </article>
                        <div class="corte"></div>
                    </section><br/>
                    <section class="divisiones_texto">
                        <div class="ficha_contacto" style="height: 160px;">
                            <header><h3>Contacto</h3></header>
                            <article>
                               <p>N&uacute;mero directo: +52 (993) 3.58.22.18</p>
                               <p>Conmutador: +52 (993) 3.58.22.22 Ext. 5009</p>
                               <p>Correo institucional: <a href="mailto:d.agep@uttab.edu.mx">d.agep@uttab.edu.mx</a></p>
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
