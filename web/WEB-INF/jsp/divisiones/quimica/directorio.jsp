<%-- 
    Document   : index
    Created on : 20/06/2013, 09:24:03 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; División académica de Química  &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División académica de Química,Directorio">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/divisiones.min.css"/>
        <style>
            /* Para listas ordenadas a 2 columnas*/
            * html ol li {position: relative;}
            .area_directorio_division_2_info .hora_semana_mes ol,.area_directorio_division_2_info .tiempo_completo ol { margin: 0 0 1em 1em; padding: 0;}
            .area_directorio_division_2_info .hora_semana_mes ol li {line-height: 1.2em;margin: 0;padding: 0;}
            .area_directorio_division_2_info .hora_semana_mes ol li.column1 { margin-left: 0em; }
            .area_directorio_division_2_info .hora_semana_mes ol li.column2 { margin-left: 23em; }
            .area_directorio_division_2_info .hora_semana_mes ol li.column3 { margin-left: 20em; }
            .area_directorio_division_2_info .hora_semana_mes li.reset{ margin-top: -21.6em;}

            /* Bring the first item of each column 
            back up to the level of item 1.
            Vertical return = items * height.
            Here, NUMERO DE ITEMS (18) items * 1.2em line-height = -21.6em */

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
            <div class="area_titulo_division"><h3>División Académica de Química </h3></div>
            <div class="area_botones_division">
                <a href="Quimica" target="_self"><img src="img/divisionesUsoComun/infraestructura.png" width="122" height="28" alt="Infraestructura"/></a>&nbsp;&nbsp;&nbsp;
                <a href="CuerposAcademicosQuimica" target="_self"><img src="img/divisionesUsoComun/btn_cuerpos_academicos.png" width="122" height="28" alt="Cuerpos académicos"/></a>&nbsp;&nbsp;&nbsp;
                <a href="LogrosQuimica" target="_self"><img src="img/divisionesUsoComun/logros.png" width="122" height="28" alt="Logros"/></a>&nbsp;&nbsp;&nbsp;
                <a href="DirectorioQuimica" target="_self"><img src="img/divisionesUsoComun/directorio.png" width="122" height="28" alt="Directorio"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>
            </div>

            <div class="area_directorio_division">
                <div class="area_directorio_division_titulo"><h3>Directorio</h3></div>
                <div class="area_directorio_division_1">
                    <div class="area_directorio_division_1_titulo"><h3>Administrativo</h3></div>
                    <div class="area_directorio_division_1_info">
                        <p class="negritas">Directora</p>
                        <ul>
                            <li>Mtra. Ana Edith Palomino Vergara</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Asistente</p>
                        <ul>
                            <li>Lic. Ana Laura Vidal Martínez</li> 
                            <li>TSU Raúl Daniel Ramírez Zapata</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Secretaria</p>
                        <ul>
                            <li>TSU Alejandra del Carmen Pérez Pérez</li>
                            <li>Cristi Fabiola Hernández Jiménez</li>
                            <li>Elvira Vidal Carrera</li>
                        </ul>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_directorio_division_2">
                    <div class="area_directorio_division_2_titulo"><h3>Personal docente</h3></div>
                    <div class="area_directorio_division_2_info">
                        <div style=" width: 34%;float: left;" class="tiempo_completo">
                            <p class="negritas">Tiempo completo</p>
                            <p>&nbsp;</p>
                            <ol>
                                <li>Ing. Áureo Rivera Córdova</li> 
                                <li>Ing. Claudia Ma. del Carmen Ceniceros González</li>
                                <li>Ing. Daniel Gutiérrez Ramos</li> 
                                <li>Ing. Eduardo Torres Aguilar</li>
                                <li>Ing. Elsa Emilia Uicab Córdova</li> 
                                <li>Ing. Gabriel Ramón Hernández</li>
                                <li>Ing. Gutiérrez Ramos Daniel</li>
                                <li>Ing. Jorge Luis Soberano Montuy</li>
                                <li>Ing. José A. Irineo Mijangos</li> 
                                <li>Ing. José del Carmen Hernández de la Cruz</li>
                                <li>Ing. José Fernando Córdova Gómez</li> 
                                <li>Fís. Marcos Andrés Jiménez Moreno</li> 
                                <li>Ing. Nancy Elena Hernández Morales</li>
                                <li>Ing. Noemí Monserrato Goñi Vera</li>
                                <li>M.I.P.A. René Méndez Villegas</li>
                                <li>M.I.P.A. Santiago Mar Balderas</li>
                                <li>Ing. William Montiel Reyes</li>
                                <li>Lic. Bruno Ehuan Pino</li>
                                <li>M.I.P.A. Juan Ismael Ledesma Herrera</li>
                            </ol>
                        </div>
                        <div style=" width: 65%;float: right;" class="hora_semana_mes">
                            <p class="negritas">Hora semana mes</p>
                            <p>&nbsp;</p>

                            <ol>
                                <li class="column1">Ing. Abel de la Cruz Hernández</li>
                                <li class="column1">M. en A. Ada del Rosario Alejandro Pantoja</li> 
                                <li class="column1">M. en I. Andrés Arias de la Cruz</li> 
                                <li class="column1">Lic. Ángel Mario López Pérez</li> 
                                <li class="column1">Lic. Antonia Gómez de los Santos</li> 
                                <li class="column1">Ing. Claudia Alejandra Quiroz Sánchez</li> 
                                <li class="column1">Lic. Damiana Romero Balcázar</li> 
                                <li class="column1">Ing. Eduardo Manuel Osorio Bautista</li> 
                                <li class="column1">Ing. Felipa Palafox León</li> 
                                <li class="column1">Ing. Jaime Pérez Carreón</li> 
                                <li class="column1">M. en I. Jesús Campos García</li> 
                                <li class="column1">Lic. Jesús Leyva Rodriguez</li> 
                                <li class="column1">Lic. Jesús Manuel Angulo Castellanos</li> 
                                <li class="column1">Ing. José Victor Guillen Mendoza</li> 
                                <li class="column1">Ing. Luiz Sosa Castro</li> 
                                <li class="column1">Ing. Luz Adriana Ruiz Méndez </li>
                                <li class="column1">Lic. Marbella Jiménez Medina</li> 
                                <li class="column1">Lic. Marco Antonio Vázquez Martín</li>
                                <li class="column2 reset">Ing. Margarita Alvarado Jaimes</li> 
                                <li class="column2">M. en E. Margarita Barrueta Chable</li> 
                                <li class="column2">Ing. María Candelaria Tejero Rivas</li> 
                                <li class="column2">Lic. Marili Córdova Juárez </li>
                                <li class="column2">Lic. Marisol de la Cruz Gómez</li> 
                                <li class="column2">Ing. Mónica Andrade Medina</li> 
                                <li class="column2">Lic. Monserrat Ángulo Alejandro </li>
                                <li class="column2">Fís. Neiber Nairobi Vázquez Valenzuela</li> 
                                <li class="column2">Lic. Neyra Beatriz Mayo Calles</li> 
                                <li class="column2">Fís. Pedro Álvarez Peregrino</li> 
                                <li class="column2">Ing. Ramiro Olive López</li> 
                                <li class="column2">Ing. Refugio Zacarías Hernández </li>
                                <li class="column2">Lic. Saayde Hernández Contreras</li> 
                                <li class="column2">Ing. Santiago León García</li> 
                                <li class="column2">Biol. Silvia Catalina Lau Vázquez </li>
                                <li class="column2">Lic. Teresa de los Ángeles Jiménez Martínez</li>
                                <li class="column2">Lic. Toni Martínez Ramos</li>
                            </ol>
                        </div>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="area_directorio_division_3">
                    <div class="area_directorio_division_2_info contacto">
                        <p class="negritasContacto">Contacto</p>
                        <ul>

                            <li>N&uacute;mero directo: +52 (993) 3.58.22.15</li>
                            <li>Conmutador: +52 (993) 3.58.22.22 Ext. 3004</li>
                            <li>Correo institucional: <a href="#" id="emailLink">d.quimica@uttab.edu.mx</a></li>

                        </ul>
                    </div>
                </div>
                <div class="corte"></div>

            </div>
            <div class="corte"></div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../../includePie.jsp?origen=division" flush="true" />
        <script>
            $(function () {
                $('#emailLink').on('click', function (event) {
                    event.preventDefault();
                    var email = 'd.quimica@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });

            });
        </script>
    </body>
</html>

