<%-- 
    Document   : index
    Created on : 20/06/2013, 09:24:03 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; División académica de Turismo y Gastronomía  &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División académica de Turismo y Gastronomía,Directorio">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/divisiones.min.css"/>
        <style>
            /* Para listas ordenadas a 2 columnas*/
            * html ol li {position: relative;}
            .area_directorio_division_2_info .hora_semana_mes ol,.area_directorio_division_2_info .tiempo_completo ol { margin: 0 0 1em 1em; padding: 0;}
            .area_directorio_division_2_info .hora_semana_mes ol li {line-height: 1.2em;margin: 0;padding: 0;}
            .area_directorio_division_2_info .hora_semana_mes ol li.column1 { margin-left: 0em; }
            .area_directorio_division_2_info .hora_semana_mes ol li.column2 { margin-left: 22em; }
            .area_directorio_division_2_info .hora_semana_mes ol li.column3 { margin-left: 20em; }
            .area_directorio_division_2_info .hora_semana_mes li.reset{ margin-top: -21.6em;}

            /* Bring the first item of each column 
            back up to the level of item 1.
            Vertical return = items * height.
            Here, NUMERO DE ITEMS (18) items * 1.2em line-height = -19.2em */

            /* Para listas ordenadas a 2 columnas*/
        </style>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../../includeMenu.jsp?origen=division" flush="true"/>
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_division"><h3>División Académica de Turismo y Gastronomía</h3></div>
            <div class="area_botones_division">
                <a href="TurismoGastronomia" target="_self"><img src="img/divisionesUsoComun/infraestructura.png" width="122" height="28" alt="Infraestructura"/></a>&nbsp;&nbsp;&nbsp;
                <a href="CuerposAcademicosTG" target="_self"><img src="img/divisionesUsoComun/btn_cuerpos_academicos.png" width="122" height="28" alt="Cuerpos académicos"/></a>&nbsp;&nbsp;&nbsp;
                <a href="LogrosTG" target="_self"><img src="img/divisionesUsoComun/logros.png" width="122" height="28" alt="Logros"/></a>&nbsp;&nbsp;&nbsp;
                <a href="DirectorioTG" target="_self"><img src="img/divisionesUsoComun/directorio.png" width="122" height="28" alt="Directorio"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>
            </div>

            <div class="area_directorio_division">
                <div class="area_directorio_division_titulo"><h3>Directorio</h3></div>
                <div class="area_directorio_division_1">
                    <div class="area_directorio_division_1_titulo"><h3>Administrativo</h3></div>
                    <div class="area_directorio_division_1_info">
                        <p class="negritas">Directora</p>
                        <ul>
                            <li>Mtra. Sara Trejo González</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Asistentes</p>
                        <ul>
                            <li>TSU Gabriela Fernández Rodríguez</li>
                            <li>Lic. Orquídea Cardoza Hernández</li>  
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Secretaria</p>
                        <ul>
                            <li>TSU Yuri del Carmen Cruz Pérez</li> 
                        </ul>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_directorio_division_2">
                    <div class="area_directorio_division_2_titulo"><h3>Personal docente</h3></div>
                    <div class="area_directorio_division_2_info">
                        <div style=" width: 34%;float: left; font-size: 13px;" class="tiempo_completo">
                            <p class="negritas">Tiempo completo</p>
                            <p>&nbsp;</p>
                            <ol>
                                <li>M. en I.A. Ana Line Hernández Muñoz</li> 
                                <li>M. en M.T. Anabelia Brito Ramírez</li> 
                                <li>M. en A. Arturo Guadalupe Abreu Soler</li> 
                                <li>Lic. Arturo Landero Izquierdo</li>  
                                <li>Lic. Asunción Romero Vertiz</li> 
                                <li>Lic. Carlos Augusto de la Fuente Castillo</li> 
                                <li>M. en A. Elizabeth Maya Cruz</li> 
                                <li>M. en C. Fabiola Lizama Pérez</li>  
                                <li>M. en A. Irasema de Monserrat León Prieto</li>  
                                <li>M. en A. Lucía Sandoval Núñez</li> 
                                <li>Dr. Manuel Antonio Acosta Solórzano</li> 
                                <li>M. en A. Manuel Antonio Díaz Peralta</li> 
                                <li>Lic. María del Rosario Toledo Gómez</li> 
                                <li>M. en A. María Dolores May Tosca</li>
                                <li>M. en M.T. María Jesús Bugarin Torres</li>  
                                <li>M. en C. Marisela García Cataldo</li> 
                                <li>Lic. Oscar Armando Díaz Aguilar</li> 
                                <li>Lic. Rafael Vidal Pascacio Loeza</li> 
                                <li>M. en A. Rafaela Mata Reyes</li> 
                                <li>M. en A. Rosa Margarita Alamilla Ocaña</li>
                                <li>M. en A. Sara Trejo González</li>
                                <li>Dra. Susana Mandujano Contreras</li>
                                <li>M. Tomas Manrique Sansores Porter 
                                <li>M. en A. Verónica Isabel Palma Córdova</li> 
                            </ol>
                        </div>
                        <div style=" width: 65%;float: right;font-size: 13px;" class="hora_semana_mes">
                            <p class="negritas">Hora semana mes</p>
                            <p>&nbsp;</p>

                            <ol>
                                <li class="column1">M. en A. Adolfo Salvador González</li> 
                                <li class="column1">Lic. Alejandro Narváez Marín</li> 
                                <li class="column1">Lic. Amada de los Ángeles Santiago Ruiz</li> 
                                <li class="column1">M. en A. Arcadia Elena Martínez Ceballos</li> 
                                <li class="column1">Lic. Carlos Bastar Camelo</li>  
                                <li class="column1">Ing. Carlos Mario de la Fuente Sánchez</li>  
                                <li class="column1">Lic. César Andrade Hernández</li>  
                                <li class="column1">Lic. Cinthia Citalli Sánchez Dzib</li> 
                                <li class="column1">Lic. Claudia Godines Roche</li> 
                                <li class="column1">Lic. Elizabeth Álvarez Mandujano</li>  
                                <li class="column1">Lic. Flor de María Ávila Rodríguez</li> 
                                <li class="column1">Lic. Francisco Javier Bocanegra Guzmán</li>  
                                <li class="column1">Lic. Guadalupe García Pérez</li> 
                                <li class="column1">Lic. Ileana Pérez Gil Luz</li> 
                                <li class="column1">Lic. Jacqueline Vázquez Hernández</li> 
                                <li class="column1">Lic. José Alejandro Martínez Andrade</li>  
                                <li class="column1">Lic. Juan Carlos Díaz Gutiérrez</li>  
                                <li class="column1">Lic. Juan Carlos Olan Sánchez</li> 
                                <li class=" column2 reset">Lic. Juan Ignacio Pulido Escobar</li> 
                                <li class="column2">Lic. Juan José Cancino Vidal</li> 
                                <li class="column2">Lic. Juan Manuel Pérez Díaz</li> 
                                <li class="column2">Lic. Leticia Alvarado Aguirre</li>
                                <li class="column2">Lic. Marcos Pérez Hernández</li>
                                <li class="column2">M. en A. María del Rocío Figueroa Cruz</li>
                                <li class="column2">Ing. María Guadalupe Pereyra Arias</li>
                                <li class="column2">Lic. María Verónica Bautista Carrera</li>
                                <li class="column2">Lic. Maribel Salazar Romero</li>
                                <li class="column2">Lic. Marqueza Hernández Méndez</li>
                                <li class="column2">Ing. Mireya Martínez Rodríguez</li>
                                <li class="column2">Lic. Patricia Rodríguez Hernández</li>
                                <li class="column2">Lic. Paulina Hernández Luciano </li>
                                <li class="column2">Lic. Pedro Antonio Cano Olán</li> 
                                <li class="column2">M. en A. Perla del Rocío Rojas León</li>
                                <li class="column2">M. en A. Rosa Pérez Gaspar</li>
                                <li class="column2">Lic. Sebastián García de la Cruz</li>
                                <li class="column2">Lic. Tanya Martínez Ceballos</li> 
                            </ol>
                        </div>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="area_directorio_division_3">
                    <div class="area_directorio_division_2_info contacto">
                        <p class="negritasContacto">Contacto</p>
                        <ul>

                            <li>N&uacute;mero directo: +52 (993) 3.58.24.64</li>
                            <li>Conmutador: +52 (993) 3.58.22.22 Ext. 7000 y 7001</li>
                            <li>Correo institucional: <a href="#" id="emailLink">d.tur_gas@uttab.edu.mx</a></li>
                        </ul>
                    </div>
                </div>
                <div class="corte"></div>

            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../../includePie.min.jsp?origen=division" flush="true" />
        <script>
            $(function () {
                $('#emailLink').on('click', function (event) {
                    event.preventDefault();
                    var email = 'd.tur_gas@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });

            });
        </script>
    </body>
</html>

