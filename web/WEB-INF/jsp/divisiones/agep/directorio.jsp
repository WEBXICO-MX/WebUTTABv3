<%-- 
    Document   : index
    Created on : 20/06/2013, 09:24:03 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; División Académica de Administración y Gestión de Proyectos  &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Administración y Gestión de Proyectos,Directorio">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/divisiones.min.css">
        <style>
            /* Para listas ordenadas a 2 columnas*/
            * html ol li {position: relative;}
            .area_directorio_division_2_info .hora_semana_mes ol,.area_directorio_division_2_info .tiempo_completo ol { margin: 0 0 1em 1em; padding: 0;}
            .area_directorio_division_2_info .hora_semana_mes ol li {line-height: 1.2em;margin: 0;padding: 0;}
            .area_directorio_division_2_info .hora_semana_mes ol li.column1 { margin-left: 0em; }
            .area_directorio_division_2_info .hora_semana_mes ol li.column2 { margin-left: 20em; }
            .area_directorio_division_2_info .hora_semana_mes ol li.column3 { margin-left: 20em; }
            .area_directorio_division_2_info .hora_semana_mes li.reset{ margin-top: -19.26em;}

            /* Bring the first item of each column 
            back up to the level of item 1.
            Vertical return = items * height.
            Here, NUMERO DE ITEMS (16) items * 1.2em line-height = -19.2em */

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
            <div class="area_titulo_division"><h3>División Académica de Administración y Gestión de Proyectos</h3></div>
            <div class="area_botones_division">
                <a href="AGEP" target="_self"><img src="img/divisionesUsoComun/infraestructura.png" width="122" height="28" alt="Infraestructura"/></a>&nbsp;&nbsp;&nbsp;
                <a href="CuerposAcademicosAGEP" target="_self"><img src="img/divisionesUsoComun/btn_cuerpos_academicos.png" width="122" height="28" alt="Cuerpos académicos"/></a>&nbsp;&nbsp;&nbsp;
                <a href="LogrosAGEP" target="_self"><img src="img/divisionesUsoComun/logros.png" width="122" height="28" alt="Logros"/></a>&nbsp;&nbsp;&nbsp;
                <a href="DirectorioAGEP" target="_self"><img src="img/divisionesUsoComun/directorio.png" width="122" height="28" alt="Directorio" style="opacity:0.8;filter:alpha(opacity=80);"/></a>
            </div>

            <div class="area_directorio_division">
                <div class="area_directorio_division_titulo"><h3>Directorio</h3></div>
                <div class="area_directorio_division_1">
                    <div class="area_directorio_division_1_titulo"><h3>Administrativo</h3></div>
                    <div class="area_directorio_division_1_info">
                        <p class="negritas">Director</p>
                        <ul>
                            <li>M. en C. Marcel Ruiz Martínez</li>

                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Secretarias</p>
                        <ul>
                            <li>L.C.P. Mayra Rodríguez Giorgana</li> 
                            <li>TSU Beatriz Pérez Naranjo</li>
                            <li>L.R.C. María del Pilar Vidal López</li>
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
                                <li>M. en A. Claudia Fabiola Ávila Guzmán</li>
                                <li>M. en A. Elsy Janeth Alejandro Pantoja</li>
                                <li>M.I.P.A. Juan Javier Castillo Ramiro</li>
                                <li>M. en A. Juana Guerrero González</li> 
                                <li>M. en A. María Guadalupe Bustamante Cornelio</li>
                                <li>M.C.E. María Ydolina Rosales Pérez</li>
                                <li>M. en A. Norma Angélica Hernández Gómez</li>  
                                <li>M. en A. Oscar Portilla Salas</li> 
                                <li>M. en A. Ramón Ramón Castillo</li>
                                <li>Dr. Sergio Valle Mijangos</li> 
                                <li>M. en A. Venilde Herrera Roldán</li>
                            </ol>
                        </div>
                        <div style=" width: 65%;float: right;font-size: 13px;" class="hora_semana_mes">
                            <p class="negritas">Hora semana mes</p>
                            <p>&nbsp;</p>

                            <ol>
                                <li class="column1">M. en A. Abigail Gómez Córdova</li> 
                                <li class="column1">Lic. Ana Patricia Bustamante Cornelio</li>
                                <li class="column1">Lic. Ana Patricia Torres Macías</li>
                                <li class="column1">Dr. Blanca Lilia Ramos González</li>
                                <li class="column1">M. en E. Eduardo Estañol Vidrio</li>
                                <li class="column1">Lic. Erika Ramírez Díaz</li>
                                <li class="column1">Dr. Ernesto Madrazo Arias</li>
                                <li class="column1">M.I.A. Esmeralda Medina Santiago</li> 
                                <li class="column1">M. en C. Freddy Alcudia de los Santos</li> 
                                <li class="column1">Dr. Gilberto Montalvo Zamudio</li> 
                                <li class="column1">M. en A. Humberto Hernández Arias</li> 
                                <li class="column1">M.I.A. Iracema Valenzuela López</li> 
                                <li class="column1">Dr. Ithzel Díaz Cordero</li> 
                                <li class="column1">Dr. Juan Jaime Turrubiates García</li>
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
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="area_directorio_division_3">
                    <div class="area_directorio_division_2_info contacto">
                        <p class="negritasContacto">Contacto</p>
                        <ul>

                            <li>N&uacute;mero directo: +52 (993) 3.58.22.18</li>
                            <li>Conmutador: +52 (993) 3.58.22.22 Ext. 5009</li>
                            <li>Correo institucional: <a href="#" id="emailLink">d.agep@uttab.edu.mx</a></li>
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
                    var email = 'd.agep@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });

            });
        </script>
</body>
</html>

