<%-- 
    Document   : centro_incubacion
    Created on : 7/08/2013, 08:31:10 AM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de incubación y desarrollo de negocios</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de incubación y desarrollo de negocios">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
           <link rel="shortcut icon"  href=""img/favicon.ico"/> 
         <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/vinculacion.min.css">
        <!--[if lte IE 8]>
        <link type="text/css" href="css/ie.min.css" rel="stylesheet">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            .Caja{ width:184px;height:181px; padding:10px;}
            .Caja h4 { margin-bottom: 10px}
            .Caja ul { font-size: 12px; text-align: left}
            .Caja1{ float: left; background-image: url(img/vinculacion/centro_incubacion/Caja1.png);}
            .Caja1 ul li{ list-style-image: url(img/vinculacion/centro_incubacion/Punto_azul.png)}
            .Caja2{ float: left; background-image: url(img/vinculacion/centro_incubacion/Caja2.png);}
            .Caja2 ul li{ list-style-image: url(img/vinculacion/centro_incubacion/punto_verde_agua.png)}
            .Caja3{ float: right; background-image: url(img/vinculacion/centro_incubacion/Caja3.png);}
            .Caja3 ul li{ list-style-image: url(img/vinculacion/centro_incubacion/Punto_verde.png)}
            .Flecha{ width: 132px; height: 202px;background-image: url(img/vinculacion/centro_incubacion/Flecha1.png);background-repeat: no-repeat;background-position: center;}
            .Flecha1 { float: left;}
            .Flecha2 { float: left;}
        </style>
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=vinculacion" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_centro_incubacion"><h3>Centro de Incubación y Desarrollo de Negocios</h3></div>
            <div class="area_btn_centro_incubacion">
                <a href="CentroIncubacion" target="_self"><img src="img/vinculacion/centro_incubacion/CIDEN-UT.png" width="151" height="28" alt="CIE-UT" id="cie_ut" style="opacity:0.8;filter:alpha(opacity=80);"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="ProyectosIncubados" target="_self"><img src="img/vinculacion/centro_incubacion/btn_proyectos_incubados2.png" width="151" height="28" alt="Proyectos incubados" id="proyectos_incubados"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="https://www.youtube.com/watch?v=gpLr8aI-_xo" target="_blank"><img src="img/vinculacion/centro_incubacion/btn_video.png" width="151" height="29" alt="Video"/></a>
            </div>
            <div class="area_info_centro_incubacion" id="area_info_centro_incubacion">
                <div class="area_info_centro_incubacion_1">
                    <div class="area_info_centro_incubacion_1_titulo"><h4>¿Quiénes somos?</h4></div>
                    <div class="area_info_centro_incubacion_1_info">
                        <p><img src="img/vinculacion/centro_incubacion/Incubadoras_20.png" width="876" height="354" alt="Centro de Incubación y Desarrollo de Negocios"/></p><br/>
                        <p>La Universidad Tecnológica de Tabasco a lo largo de diez años por su trabajo y resultados en materia de emprendimiento y negocios, ha logrado posicionarse como la institución con la incubadora de empresas de mayor reconocimiento en Tabasco y pionera en el subsistema de Universidades Tecnologicas  en el país.</p><br/>
                        <p>Durante el 2013, destaca de manera especial el logro, con base en lo dispuesto en las Reglas de Operación del Fondo de Apoyo para la Micro, Pequeña y Mediana Empresa (Fondo Pyme), así como los lineamientos del Instituto Nacional del Emprendedor (INADEM) del reconocimiento para el Centro de Incubación y Desarrollo de Negocios de la Universidad como Incubadora Básica, con lo cual está integrado a la Red de Incubadoras de Empresas “Para mover a México”. Así como, incubadora acreditada entre las instituciones de educación superior en Tabasco.</p><br/>
                        <p>El Centro de Incubación y Desarrollo de Negocios de la UTTAB , impulsa  la creación de nuevas empresas a través de consultoría, asesoría y capacitación técnica, financiera, de logística y de mercado, para la implementación de su Modelo de Negocios, asi como un programa de acompañamiento integral para la introducción de su producto o servicios  al mercado.</p>
                    </div>
                </div>

                <div class="area_info_centro_incubacion_2">
                    <div class="area_info_centro_incubacion_2_titulo"><h4>Nuestro objetivo</h4></div>
                    <div class="area_info_centro_incubacion_2_info">
                        <p>Impulsar empresas facilitando su crecimiento y fortaleciendo su desarrollo durante su etapa de despegue.</p><br/>
                    </div>
                </div>

                <div class="area_info_centro_incubacion_3" style="margin-bottom: 20px;">
                    <div class="area_info_centro_incubacion_3_titulo"><h4>Etapas del proceso de incubación</h4></div>
                    <div class="area_info_centro_incubacion_3_info">
                        <img src="img/vinculacion/centro_incubacion/BotonI.png" alt="BotonI" style="vertical-align: bottom"/>&nbsp;&nbsp;<span style="font-size: 16px; font-weight: bold;">Pre-Incubación</span><br/>
                        <p>Se analiza por expertos la deseabilidad de su producto en el mercado, la factibilidad técnica del mismo y la viabilidad financiera del proyecto, con el fin de establecer la factibilidad del proyecto y asesoría en la planeación y la creación de MiPyMES.</p><br/>
                        <img src="img/vinculacion/centro_incubacion/BotonII.png" alt="BotonII" style="vertical-align: bottom"/>&nbsp;&nbsp;<span style="font-size: 16px; font-weight: bold;">Incubación</span><br/>
                        <p>Durante esta etapa, se apoya al emprendedor a través de diversas herramientas para desarrollar e implementar su plan de negocios e iniciar la operación de su empresa.</p><br/>
                        <ul>
                            <li>Apoyo en la elaboración del plan de negocios, con enfoque financiero</li>
                            <li>Apoyo en el registro de marca </li>
                            <li>Diseño de imagen corporativa</li>
                            <li>Consultoria especializada.</li>
                            <li>Apoyo en servicios tecnológicos de acuerdo al tipo :
                                <ol style="list-style-position: inside;margin-left: 20px;">
                                    <li>Tabla nutrimental</li>
                                    <li>Asesoría técnica</li>
                                    <li>Estudios de vida de anaquel</li>
                                </ol>
                            </li>
                            <li>Uso de instalaciones físicas para iniciar tu empresa, hasta por un año</li>
                        </ul><br/>
                        <img src="img/vinculacion/centro_incubacion/Foto.png" alt="Centro de incubación y desarrollo de negocios"/><br/><br/>
                        <p>El proceso de incubación cumple con varios objetivos:</p><br/>
                        <ul>
                            <li>Impulsar un modelo de negocio viable para empresas de nueva creación </li>
                            <li>Desarrollar un plan de negocios viable para la empresa de nueva creación (start-up)</li>
                            <li> Desarrollar un plan de acción para iniciar con la operación de la empresa de nueva creación (start-up)</li>
                            <li>Desarrollar el portafolio de productos/servicios de la empresa de nueva creación (start-up)</li>
                            <li>Desarrollar habilidades para analizar, diseñar, mejorar y controlar la administración de la empresa de nueva creación (start-up)</li>
                        </ul><br/>
                        <p>Para el logro de estos objetivos, el Centro Incubación y Desarrollo de Negocios de la UTTAB ofrece a los incubados distintas herramientas como son consultoría especializada, asesoría empresarial, oportunidades de networking, reuniones y apoyo de consultores especialistas para el desarrollo de su empresa.</p><br/>
                        <img src="img/vinculacion/centro_incubacion/BotonIII.png" alt="BotonIII" style=" vertical-align: bottom;"/>&nbsp;&nbsp;<span style="font-size: 16px; font-weight: bold;">Post-Incubación</span><br/>
                        <p>El objetivo de la post-incubación es consolidar el crecimiento de las empresas incubadas, a través de consultoría especializada y acercamientos a fuentes de financiamiento.</p><br/>
                        <ul>
                            <li>Fideicomiso Creando Empresarios. H. Ayuntamiento del Centro, Tabasco</li>
                            <li>Programa de Emprendedores Juveniles. Instituto de la Juventud de Tabasco</li>
                            <li>Fondo Empresarial Tabasco. Secretaría de Desarrollo Económico y Turismo del Estado</li>
                            <li>Programa de Apoyo al Desarrollo Agroindustrial y Comercialización (PADAC). Secretaría de Desarrollo Forestal y Pesquero de Tabasco</li>
                        </ul>
                        <br/>
                        <div class="Caja Caja1">
                            <h4>PRE-INCUBACIÓN</h4>
                            <ul>
                                <li>Factibilidad técnica</li>
                                <li>Viabilidad financiera</li>
                            </ul>
                        </div>
                        <div class="Flecha Flecha1"></div>
                        <div class="Caja Caja2">
                            <h4>INCUBACIÓN</h4>
                            <ul>
                                <li>Apoyo en los registro de marca</li>
                                <li>Diseño de imagen corporativa</li>
                                <li>Consultoría especializada</li>
                                <li>Apoyo en servicios tecnológicos</li>
                                <li>Apoyo en instalaciones físicas para iniciar tu empresa, hasta por un año</li>
                            </ul>
                        </div>
                        <div class="Flecha Flecha2"></div>
                        <div class="Caja Caja3">
                            <h4>POST-INCUBACIÓN</h4>
                            <ul>
                                <li>Consultoría especializada</li>
                                <li>Capacitación especializada</li>
                                <li>Acercamiento a fuentes de financiamiento</li>
                                <li>Mesas de negocios</li>
                                <li>Acompañamiento empresarial</li>
                            </ul>
                        </div>
                        <div class="corte"></div>
                    </div>
                </div>   

                <div class="area_info_centro_incubacion_4">
                    <div class="area_info_extension_universitaria_2_contacto">
                        <p class="negritasContacto">Contacto</p>
                        <p>José Alfredo Moreno Díaz</p>
                        <p>Jefe del Departamento del Centro de Incubación y Desarrollo de Negocios</p>
                        <p>Tel: +52 (993) 3.58.22.22 Ext. 2015</p>
                        <p>Correo institucional: <a href="#" id="emailLink">emprendedores@uttab.edu.mx</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=vinculacion" flush="true" />
        <script>
            $(function () {
              $('#emailLink').on('click', function (event) {
                event.preventDefault();
                var email = 'emprendedores@uttab.edu.mx';
                window.location = 'mailto:' + email;
              });
            });
        </script>
    </body>
</html>