<%-- 
    Document   : index
    Created on : 20/06/2013, 09:24:03 AM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; División Académica de Procesos Industriales &#124; Directorio</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,División Académica de Procesos Industriales,Directorio">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/divisiones.min.css">
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css"/>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../../includeMenu.jsp?origen=division" flush="true"/>
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_division"><h3>División Académica de Procesos Industriales</h3></div>
            <div class="area_botones_division">
                <a href="ProcesosIndustriales" target="_self"><img src="img/divisionesUsoComun/infraestructura.png" width="122" height="28" alt="Infraestructura"/></a>&nbsp;&nbsp;&nbsp;
                <a href="CuerposAcademicosPI" target="_self"><img src="img/divisionesUsoComun/btn_cuerpos_academicos.png" width="122" height="28" alt="Cuerpos académicos"/></a>&nbsp;&nbsp;&nbsp;
                <a href="LogrosPI" target="_self"><img src="img/divisionesUsoComun/logros.png" width="122" height="28" alt="Logros"/></a>&nbsp;&nbsp;&nbsp;
                <a href="DirectorioPI" target="_self"><img src="img/divisionesUsoComun/directorio.png" width="122" height="28" alt="Directorio"  style="opacity:0.8;filter:alpha(opacity=80);"/></a>
            </div>

            <div class="area_directorio_division">
                <div class="area_directorio_division_titulo"><h3>Directorio</h3></div>
                <div class="area_directorio_division_1">
                    <div class="area_directorio_division_1_titulo"><h3>Administrativo</h3></div>
                    <div class="area_directorio_division_1_info">
                        <p class="negritas">Director</p>
                        <ul>
                            <li>Mtro. Luis Alberto Escobedo Cazan</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Asistente</p>
                        <ul>
                            <li>Ing. Claudia Patricia Reyes Ligonio</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p class="negritas">Secretaria</p>
                        <ul>
                            <li>Lic. Antonia Córdova Acopa</li>
                        </ul>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
                <div class="area_directorio_division_2">
                    <div class="area_directorio_division_2_titulo"><h3>Personal docente</h3></div>
                    <div class="area_directorio_division_2_info">
                        <div style=" width: 49%;float: left;" class="tiempo_completo">
                            <p class="negritas">Tiempo completo</p>
                            <p>&nbsp;</p>
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
                                <li>Ing. Luis Alberto Escobedo Cazan</li>
                                <li>Ing. Marcelino Chuc Muñoz</li>
                                <li>Lic. Marco Antonio Velázquez Rojas</li>
                                <li>M. en I. Rafael García Jiménez</li>
                                <li>M. en C. Roberto Rocher Córdova</li>
                                <li>Ing. Tarcilo Oropeza Olmos</li>
                            </ol>
                        </div>
                        <div style=" width: 49%;float: right;" class="hora_semana_mes">
                            <p class="negritas">Hora semana mes</p>
                            <p>&nbsp;</p>

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
                            </ol>
                        </div>
                    </div>
                    <div class="corte"></div>
                </div>
                <div class="area_directorio_division_3">
                    <div class="area_directorio_division_2_info contacto">
                        <p class="negritasContacto">Contacto</p>
                        <ul>

                            <li>N&uacute;mero directo: +52 (993) 3.58.22.11</li>
                            <li>Conmutador: +52 (993) 3.58.22.22 Ext. 1001</li>
                            <li>Correo institucional: <a href="#" id="emailLink">d.ppymi@uttab.edu.mx</a></li>
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
                    var email = 'd.ppymi@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });

            });
        </script>
    </body>
</html>

