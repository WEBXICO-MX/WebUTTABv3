<%-- 
    Document   : centro_incubacion2.jsp
    Created on : 25/11/2015, 10:14:34 AM
    Author     : NJLN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro de Incubación y Desarrollo de Negocios</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro de Incubación y Desarrollo de Negocios">
        <meta name="keywords" content="vinculación,Centro de Incubación y Desarrollo de Negocios,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/vinculacion2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.jsp?origen=vinculacion" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="vinculacion_section">
                <header class="vinculacion_titulo">
                    <h2><span class="texto_resaltado">Vinculación</span> /</h2>
                    <h1>Centro de Incubación y Desarrollo de Negocios</h1>
                    <div class="corte"></div>
                </header>
                <article class="vinculacion_contenido">
                    <section class="vinculacion_texto">
                        <figure style="position: relative">
                            <img src="${pageContext.request.contextPath}/img/vinculacion/incubadora/centro_incubacion_desarrollo_negocios.png" alt="Centro de Incubación y Desarrollo de Negocios"/><!-- Glosario de términos -->
                            <!-- CAPPI -->
                            <s:a action="cappi" namespace="/vinculacion"><img src="${pageContext.request.contextPath}/img/vinculacion/incubadora/btn_cappi.png" alt="Centro de Apoyo para la Protección de la Propiedad Intelectual (CAPPI)" class="icono_cappi"/></s:a>
                            <!-- Proyectos incubados -->
                            <s:a action="proyectos_incubados" namespace="/vinculacion"><img src="${pageContext.request.contextPath}/img/vinculacion/incubadora/btn_proyectos_incubados.png" alt="Proyectos Incubados" class="icono_proyectos_incubados"/></s:a>
                        </figure>
                    </section>
                    <section class="vinculacion_texto">
                        <h4 class="tituloContenido">¿Quiénes somos?</h4><br/>
                        <p>La Universidad Tecnológica de Tabasco a lo largo de diez años por su trabajo y resultados en materia de emprendimiento y negocios, ha logrado posicionarse como la institución con la incubadora de empresas de mayor reconocimiento en Tabasco y pionera en el subsistema de Universidades Tecnologicas en el país.</p><br/>
                        <p>Durante el 2013, destaca de manera especial el logro, con base en lo dispuesto en las Reglas de Operación del Fondo de Apoyo para la Micro, Pequeña y Mediana Empresa (Fondo Pyme), así como los lineamientos del Instituto Nacional del Emprendedor (INADEM) del reconocimiento para el Centro de Incubación y Desarrollo de Negocios de la Universidad como Incubadora Básica, con lo cual está integrado a la Red de Incubadoras de Empresas “Para mover a México”. Así como, incubadora acreditada entre las instituciones de educación superior en Tabasco.</p><br/>
                        <p>El Centro de Incubación y Desarrollo de Negocios de la UTTAB , impulsa la creación de nuevas empresas a través de consultoría, asesoría y capacitación técnica, financiera, de logística y de mercado, para la implementación de su Modelo de Negocios, asi como un programa de acompañamiento integral para la introducción de su producto o servicios al mercado.</p>
                    </section>
                    <section class="vinculacion_texto">
                        <h4 class="tituloContenido">Nuestro objetivo</h4><br>
                        <p>Impulsar empresas facilitando su crecimiento y fortaleciendo su desarrollo durante su etapa de despegue.</p>
                    </section>
                    <section class="vinculacion_texto">
                        <h4 class="tituloContenido">Etapas del proceso de incubación</h4><br/>
                        <p class="negritas">Pre-Incubación</p>
                        <p>Se analiza por expertos la deseabilidad de su producto en el mercado, la factibilidad técnica del mismo y la viabilidad financiera del proyecto, con el fin de establecer la factibilidad del proyecto y asesoría en la planeación y la creación de MiPyMES.</p><br>
                        <p class="negritas">Incubación</p>
                        <p>Durante esta etapa, se apoya al emprendedor a través de diversas herramientas para desarrollar e implementar su plan de negocios e iniciar la operación de su empresa.</p><br>
                        <ul>
                            <li>Apoyo en la elaboración del plan de negocios, con enfoque financiero</li>
                            <li>Apoyo en el registro de marca</li>
                            <li>Diseño de imagen corporativa</li>
                            <li>Consultoria especializada</li>
                            <li>Apoyo en servicios tecnológicos de acuerdo al tipo:
                                <ul>
                                    <li>Tabla nutrimental</li>
                                    <li>Asesoría técnica</li>
                                    <li>Estudios de vida de anaquel</li>
                                </ul>
                            </li>
                            <li>Uso de instalaciones físicas para iniciar tu empresa, hasta por un año</li>
                        </ul>
                        <br>
                        <p>El proceso de incubación cumple con varios objetivos:</p>
                        <br>
                        <ul>
                            <li>Impulsar un modelo de negocio viable para empresas de nueva creación</li>
                            <li>Desarrollar un plan de negocios viable para la empresa de nueva creación (start-up)</li>
                            <li>Desarrollar un plan de acción para iniciar con la operación de la empresa de nueva creación (start-up)</li>
                            <li>Desarrollar el portafolio de productos/servicios de la empresa de nueva creación (start-up)</li>
                            <li>Desarrollar habilidades para analizar, diseñar, mejorar y controlar la administración de la empresa de nueva creación (start-up)</li>
                        </ul>
                        <br>
                        <p>Para el logro de estos objetivos, el Centro Incubación y Desarrollo de Negocios de la UTTAB ofrece a los incubados distintas herramientas como son consultoría especializada, asesoría empresarial, oportunidades de networking, reuniones y apoyo de consultores especialistas para el desarrollo de su empresa.</p>
                        <br>
                        <p class="negritas">Post-Incubación</p>
                        <p>El objetivo de la post-incubación es consolidar el crecimiento de las empresas incubadas, a través de consultoría especializada y acercamientos a fuentes de financiamiento.</p>
                        <ul>
                            <li>Fideicomiso Creando Empresarios. H. Ayuntamiento del Centro, Tabasco</li>
                            <li>Programa de Emprendedores Juveniles. Instituto de la Juventud de Tabasco</li>
                            <li>Fondo Empresarial Tabasco. Secretaría de Desarrollo Económico y Turismo del Estado</li>
                            <li>Programa de Apoyo al Desarrollo Agroindustrial y Comercialización (PADAC). Secretaría de Desarrollo Forestal y Pesquero de Tabasco</li>
                        </ul>
                        <br>
                        <figure class="contenidoCentrado">
                            <img src="${pageContext.request.contextPath}/img/vinculacion/incubadora/centro-de-incubacion_15-min.png" alt="proceso incubación"/>
                        </figure>
                    </section>
                    <section class="vinculacion_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>José Alfredo Moreno Díaz</p>
                                <p>Jefe del Departamento del Centro de Incubación y Desarrollo de Negocios</p>
                                <p>Tel: +52 (993) 3.58.22.22 Ext. 2015</p>
                                <p>Correo institucional: <a href="mailto:emprendedores@uttab.edu.mx">emprendedores@uttab.edu.mx</a></p>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=vinculacion" flush="true" />
    </body>
</html>