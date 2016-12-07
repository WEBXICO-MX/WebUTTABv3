<%-- 
    Document   : index
    Created on : 20/06/2013, 09:24:03 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; División académica de Tecnologías de la Información y Comunicación &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División académica de Tecnologías de la Información y Comunicación,Directorio">
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
            .area_directorio_division_2_info .hora_semana_mes li.reset{ margin-top: -11em;}

            /* Bring the first item of each column 
            back up to the level of item 1.
            Vertical return = items * height.
            Here, NUMERO DE ITEMS (9) items * 1.2em line-height = -10.8em*/

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
            <div class="area_titulo_division"><h3>Divisi&oacute;n Acad&eacute;mica de Tecnolog&iacute;as de la Informaci&oacute;n y Comunicaci&oacute;n</h3></div>
            <div class="area_botones_division">
                <a href="TIC" target="_self"><img src="img/divisionesUsoComun/infraestructura.png" width="122" height="28" alt="Infraestructura"/></a>&nbsp;&nbsp;&nbsp;
                <a href="CuerposAcademicosTIC" target="_self"><img src="img/divisionesUsoComun/btn_cuerpos_academicos.png" width="122" height="28" alt="Cuerpos académicos"/></a>&nbsp;&nbsp;&nbsp;
                <a href="LogrosTIC" target="_self"><img src="img/divisionesUsoComun/logros.png" width="122" height="28" alt="Logros"/></a>&nbsp;&nbsp;&nbsp;
                <a href="DirectorioTIC" target="_self"><img src="img/divisionesUsoComun/directorio.png" width="122" height="28" alt="Directorio"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>
            </div>

            <div class="area_directorio_division">
                <div class="area_directorio_division_titulo"><h3>Directorio</h3></div>
                <div class="area_directorio_division_1">
                    <div class="area_directorio_division_1_titulo"><h3>Administrativo</h3></div>
                    <div class="area_directorio_division_1_info">
                        <p class="negritas">Director</p>
                        <ul>
                            <li>Lic. José Luis Martínez Rivera</li>

                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Asistentes</p>
                        <ul>
                            <li>Lic. Imelda del Carmen Villegas Ovando</li>
                            <li>Lic. Abel Osorio Jiménez</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Secretaría</p>
                        <ul>
                            <li>Leticia Avendaño Hernández</li>
                        </ul>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_directorio_division_2">
                    <div class="area_directorio_division_2_titulo"><h3>Personal docente</h3></div>
                    <div class="area_directorio_division_2_info">
                        <div style=" width: 31%;float: left;" class="tiempo_completo">
                            <p class="negritas">Tiempo      completo</p>
                            <p>&nbsp;</p>
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
                        <div style=" width: 63%;float: right;" class="hora_semana_mes">
                            <p class="negritas">Hora semana mes</p>
                            <p>&nbsp;</p>

                            <ol>
                                <li class="column1">Lic. Julio Cesar Arias Ovando</li>
                                <li class="column1">M.E. Rocío del Carmen Duran Maldonado</li>
                                <li class="column1">M.E. Roberto Fernández Ulin</li>
                                <li class="column1">M.E. Marvin Hernández Velázquez</li>
                                <li class="column1">Ing. Yesenia Madrazo Cruz</li>
                                <li class="column1">M.A. Carlos Mario Martínez Izquierdo</li>
                                <li class="column1">M.E. Candelario Méndez Olán</li>
                                <li class="column1">M.E. Patricia Mendoza Cruz.</li>
                                <li class="column2 reset">Lic. Carlos Francisco Pensabe Rivera</li>
                                <li class="column2">Ing. Maximiliano Santiago Pérez</li>
                                <li class="column2">Lic. María De La Luz Valdez Ramos</li>
                                <li class="column2">Lic. Margarita Vázquez Lara</li>
                                <li class="column2">M.A.T.I. Rafael Gonzalo Álvarez Campos</li>
                            </ol>
                        </div>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="area_directorio_division_3">
                    <div class="area_directorio_division_3_info contacto">
                        <p class="negritasContacto">Contacto</p>
                        <ul>

                            <li>N&uacute;mero directo: +52 (993) 3.58.22.03</li>
                            <li>Conmutador: +52 (993) 3.58.22.22 Ext. 8000 y 8001</li>
                            <li>Correo institucional: <a href="#" id="emailLink">d.tic@uttab.edu.mx</a></li>
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
                    var email = 'd.tic@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });

            });
        </script>
    </body>
</html>

