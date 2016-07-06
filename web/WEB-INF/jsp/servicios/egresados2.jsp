<%-- 
    Document   : egresados2
    Created on : 26-nov-2015, 11:17:57
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Egresados</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Egresados">
        <meta name="keywords" content="servicios,Egresados,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Servicios</span> /</h2>
                    <h1>Egresados</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <figure style="float:right">
                            <s:url id="url_cursos" action="viewFile" namespace="">
                                <s:param name="i" value="1"></s:param>
                                <s:param name="d" value="%{'egresados'}"></s:param>
                            </s:url>
                            <s:a href="%{url_cursos}" target="_blank"><img src="${pageContext.request.contextPath}/img/servicios/egresados/btn_cursos-min.png" alt="Cursos"/></s:a>
                            <s:a action="bolsa_trabajo" namespace="/servicios"><img src="${pageContext.request.contextPath}/img/servicios/egresados/btn_bolsa_trabajo-min.png" alt="Bolsa de trabajo"/></s:a>
                            <!--<img src="${pageContext.request.contextPath}/img/servicios/egresados/btn_contactanos-min.png" alt="Contáctanos"/>-->
                        </figure>
                        <div class="corte"></div>
                    </section>
                    <section class="servicios_texto_full">
                        <figure><img src="${pageContext.request.contextPath}/img/servicios/egresados/egresados1-min.png" alt="Egresados"/></figure>
                        <div class="corte"></div>
                    </section>
                    <section class="servicios_texto">
                        <p>El seguimiento de egresados en la UTTAB, tiene como objetivo conocer la situación de los egresados con respecto a sus principales características socio-económicas, empleo actual, desempeño profesional, tiempo libre, estudios de bachillerato, elección de carrera, estudios de licenciatura, continuación de la formación, opinión sobre la formación profesional recibida, recomendaciones para mejorar el perfil de egreso y satisfacción con la institución y con la carrera cursada de los egresados de nivel superior de los diversos programas educativos.</p><br/>
                        <p>El seguimiento de los egresados representa para la Universidad Tecnológica de Tabasco, la posibilidad de contar con información sobre los procesos formativos que se llevan a cabo. Sin duda es posible impulsar la mejora y actualización permanente de los planes y programas de estudios de las diferentes carreras que se ofertan en esta universidad. Incidiendo de esta manera, en políticas educativas institucionales acordes al Modelo Universitario enfocado a competencias profesionales, atendiendo  las demandas y necesidades de nuestra sociedad.</p><br/>
                        <p>El seguimiento de egresados en la UTTAB se basa principalmente en el esquema básico para el estudio de egresados propuesto por la Coordinación General de Universidades Tecnológicas y son una estrategia para el autoconocimiento y la mejora de  la relación educación-empleo, con el propósito de descubrir cómo se producen los profesionales adecuados para los empleos existentes y/o cómo formar personas con capacidad para mejorar empleos ante las exigencias de la sociedad actual.</p><br/>
                        <p>Por tanto, los egresados para la UTTAB, son los actores centrales, pues representan el resultado directo de la formación; son ellos, los que ponen a prueba en los escenarios laborales, los conocimientos, habilidades, aptitudes y actitudes que les transmitió en la universidad.</p><br/>
                        <div class="corte"></div>
                    </section>
                    <section class="servicios_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Gabriela Castillo Falcón</p>
                                <p>Encargada de la coordinación de Bolsa de Trabajo</p>
                                <p>Número directo: +52 (993) 3.58.22.07</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 2010</p>
                                <p>Correo institucional: <a href="mailto:btrabajo@uttab.edu.mx">btrabajo@uttab.edu.mx</a></p>
                                <div class="corte"></div>
                            </article>
                        </div>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=servicios" flush="true" />
    </body>
</html>