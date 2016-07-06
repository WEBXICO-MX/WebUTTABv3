<%-- 
    Document   : centro_gastronomico
    Created on : 12/08/2013, 03:11:11 PM
    Author     : Weisß
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro Gastronómico Kuku-Uche</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro Gastronómico Kuku-Uche">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
           <link rel="shortcut icon"  href=""img/favicon.ico"/> 
         <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/unidades_negocio.min.css" media="all" />
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css" >
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=unidades_negocio" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_centro_gastronomico"><h3>Centro Gastronómico Kuku-Uche</h3></div>
            <div class="area_btn_centro_gastronomico">
                <a href="javascript:void(0);" onclick="window.open('viewFile.action?i=1&d=centro_gastronomico', '_blank');"><img src="img/unidades_negocio/centro_gastronomico/btn_menu.png" width="151" height="28" alt="Menú"/></a>
            </div>
            <div class="area_info_centro_gastronomico">
                <div class="area_info_centro_gastronomico_1">
                    <div class="area_info_centro_gastronomico_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_centro_gastronomico_1_info">
                        <p><img src="img/unidades_negocio/centro_gastronomico/Kuku-Uche_15.jpg" alt="Centro Gastronómico Kuku-Uche"/>
                        </p><br/>
                        <p>El restaurante-cafetería-escuela es un concepto único en el Estado en el cual conjunta el servicio de alimentos para toda la comunidad universitaria y la capacitación como complemento de la formación del alumnado de diversas carreras de nuestra universidad, a su vez, el restaurante representa un espacio de becas para los estudiantes de la institución.</p><br/>
                        <p>Lleva como nombre "Kuku Uche", que significa "Ven a Comer" en Chol, en el que se brindan servicios de alimentación saludable, balanceada y accesible, a través del trabajo de su personal capacitado, el cual en su mayoría son egresados de esta Universidad.</p>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="area_info_centro_gastronomico_2">
                    <div class="area_info_centro_gastronomico_2_titulo"><h4>Servicios</h4></div>
                    <div class="area_info_centro_gastronomico_2_info">
                        <p>El centro gastronómico ofrece los siguientes servicios de alimentos y bebidas a clientes externos e internos.</p><br/>
                        <ul>
                            <li>Coffee breaks</li>
                            <li>Bocadillos</li> 
                            <li>Buffet</li>
                            <li>Banquetes</li>
                            <li>Desayunos</li> 
                            <li>Comidas</li>
                            <li>Panadería y repostería</li>
                        </ul>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="area_info_centro_gastronomico_3">
                    <div class="area_info_centro_gastronomico_3_titulo"><h4>Becarios</h4></div>
                    <div class="area_info_centro_gastronomico_3_info">
                        <p><img src="img/unidades_negocio/centro_gastronomico/Kuku-Uche_31.png" width="879" height="336" alt="Centro Gastronómico Kuku-Uche"/>
                        </p><br/>
                        <p>Son alumnos de las carreras de gastronomía y turismo de la UTTAB que obtienen y refuerzan conocimientos prácticos al desarrollar actividades propias de su área en el restaurante Kuku Uche por 4 horas diarias durante un cuatrimestre.</p><br/>
                        <p class="negritas">Beneficios:</p>
                        <ul>
                            <li>Beca de alimentos</li>
                            <li>Oportunidad de desarrollar habilidades, destrezas y una cultura de trabajo en situación real</li>
                        </ul><br/>
                        <p class="negritas">Requisitos:</p>
                        <ul>
                            <li>Ser alumno de la UTTAB</li>
                            <li>Compromiso y disposición para trabajar en equipo y realizar actividades concernientes a un restaurante</li>
                            <li>Iniciativa, responsabilidad y actitud de servicio</li>
                        </ul>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="area_info_centro_gastronomico_4">
                    <div class="area_info_centro_gastronomico_4_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Ana Gabriela Balán Reyes</p>
                        <p>Coordinadora del Centro Gastronómico</p>
                        <p>Conmutador: +52 (993) 3.58.22.22 Ext. 6001</p>
                        <p>Correo institucional: <a href="#" id="emailLink">c.gastronomico@uttab.edu.mx</a></p>
                        <p></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=unidades_negocio" flush="true" />
        <script>
            $(function () {
                $('#emailLink').on('click', function (event) {
                    event.preventDefault();
                    var email = 'c.gastronomico@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });

            });
        </script>
    </body>
</html>