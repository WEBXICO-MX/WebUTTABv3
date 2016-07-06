<%-- 
    Document   : ciut
    Created on : 12/08/2013, 03:15:57 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Idiomas</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro certificador de exámenes de francés DELF-DALF">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/unidades_negocio.min.css">
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=unidades_negocio" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_ciut"><h3>Centro de Idiomas de la Universidad Tecnológica de Tabasco</h3></div>
            <div class="area_info_ciut">
                <div class="area_info_ciut_1">
                    <div class="area_info_ciut_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_ciut_1_info">
                        <p><img src="img/unidades_negocio/ciut/CIUT_13.jpg" width="876" height="333" alt="Centro de idiomas UT"/>
                        </p><br/>
                        <p>El Centro de idiomas imparte cursos de inglés, francés e italiano al público en general y a la comunidad universitaria.</p><br/>
                        <p>Si ya cuentas con conocimientos del idioma inglés o francés, puedes presentar el examen de ubicación gratuito y de esta manera identificaremos tu nivel de acuerdo a nuestro esquema de estudios.</p>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="area_info_ciut_2">
                    <div class="area_info_ciut_2_titulo"><h4>Servicios</h4></div>
                    <div class="area_info_ciut_2_info">
                        <ul>
                            <li>Cursos de formación general en idiomas</li>
                            <li>Cursos de acuerdo a tu disponibilidad de horario</li>
                            <li>Inglés para negocios</li>
                            <li>Cursos de capacitación para profesores de inglés</li>
                            <li>Traducción de documentos escolares para revalidación de estudios</li>
                            <li>Exámenes de ubicación gratuito en los idiomas inglés y francés</li>
                            <li>Cursos de preparación para exámenes TOEFL ITP & TOEFL Junior</li>
                            <li>Aplicación del examen TOEFL ITP & TOEFL Junior</li>
                            <li>Cursos de preparación para exámenes de Certificación de la Universidad de Cambridge PET, FCE, CAE & TKT</li>
                        </ul>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="area_info_ciut_3">
                    <div class="area_info_ciut_3_titulo"><h4>Horarios de cursos matutinos y vespertinos</h4></div>
                    <div class="area_info_ciut_3_info">
                        <img src="img/unidades_negocio/ciut/CIUT_31.png" width="439" height="329" alt="Centro de idiomas UT" style="float: right;margin-left: 15px;"/>
                        <ul>
                            <li>Lunes-miércoles y viernes de 16:00 a 18:00 horas</li>
                            <li>Lunes-miércoles y viernes de 17:00 a19:00 horas</li>
                            <li>Viernes de 14:00 a 19:00 horas</li>
                            <li>Sábados de 08:00 a 13:00 horas</li>
                            <li>Sábados de 13:30 a 18:30 horas</li>
                            <li>Domingos de 09:00 a 14:00 horas</li>
                        </ul>
                        <br/>
                        <p class="negritas">Horario de atención:</p>
                        <ul>
                            <li>Lunes a viernes de 08:00 a 20:00 horas</li>
                            <li>Sábados de 08:00 de 16:00 horas</li>
                            <li>Domingos de 08:00 a 14:00 horas</li>
                        </ul>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="area_info_ciut_4">
                    <div class="area_info_ciut_4_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>Carolina Guerrero Díaz</p>
                        <p>Coordinadora del Centro de Idiomas </p>
                        <p>Número directo: +52 (993) 3.58.22.07 ext. 2030</p>
                        <p>Correo institucional: <a href="#" id="emailLink">ciut@uttab.edu.mx</a></p>
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
                    var email = 'ciut@uttab.edu.mx';
                    window.location = 'mailto:' + email;
                });

            });
        </script>
    </body>
</html>