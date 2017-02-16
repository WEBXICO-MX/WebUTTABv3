<%-- 
    Document   : admision3
    Created on : 26-nov-2015, 10:52:52
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Admisión a la UTTAB</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Admisión a la UTTAB">
        <meta name="keywords" content="servicios,Admisión a la UTTAB,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios3.min.css"/>
        <!--[if lt IE 9]>
           <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
       <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Servicios</span> /</h2>
                    <h1>Admisión a la UTTAB</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <img src="${pageContext.request.contextPath}/img/servicios/admision/admision1-min.png" alt="Admisión a la UTTAB"/>
                        <p>Si eres egresado de bachiller y deseas continuar tu formación profesional con nosotros es importante saber que la Universidad Tecnológica de Tabasco tiene ingreso de alumnos a los niveles Técnico Superior Universitario y Licenciatura en los periodos septiembre-diciembre, enero-abril y mayo-agosto.</p>
                        <p class="negritas">Requisitos generales para nuevo ingreso:</p>
                        <ul>
                            <li>Ser egresado de bachillerato</li>
                            <li>Cumplir con la convocatoria de admisión que establece la Universidad en la página  <s:a action="Home" namespace="">www.uttab.edu.mx</s:a></li>
                            </ul>
                            <p>Para el caso de los aspirantes extranjeros deberán realizar el trámite de acuerdo al Reglamento Escolar en su Artículo 5.- Los aspirantes mexicanos que hayan cursado estudios de Enseñanza Media Superior en el extranjero, y los extranjeros que deseen ingresar a la universidad, deberán presentar los documentos que acrediten su estancia legal en el país y cumplir con los requisitos correspondientes, para la revalidación de dichos estudios en nuestro país.</p>
                            <p>El trámite de revalidación deberá solicitarse ante la Dirección General de Acreditación e Incorporación y Revalidación de la Secretaría de Educación.</p>
                        </section>
                        <section class="servicios_texto">
                            <h3>Etapas del proceso de admisión del nivel Técnico Superior Universitario</h3>
                            <p><span class="negritas">Etapa 1:</span> aspirante a la UT</p>
                            <ul>
                                <li>Registrarse por internet de acuerdo a la convocatoria para cada proceso de admisión</li>
                                <li>Pagar la ficha del examen</li>
                                <li>Presentar el examen CENEVAL</li>
                                <li>Estar en la relación de Aceptados a la UTTAB (ver página principal <s:a action="Home" namespace="">www.uttab.edu.mx</s:a>)</li> 
                            </ul>

                            <p><span class="negritas">Etapa 2:</span> el alumno aceptado:</p> 
                            <ul><li>Realizar el trámite de inscripción correspondiente</li></ul> 
                            <p><span class="negritas">Etapa 3:</span> inscripciones al nivel Técnico Superior Universitario: </p> 
                            <p>Requisitos: </p>
                            <ul>
                                <li>Pago de inscripción y colegiatura (imprimir desde la  <s:a action="Home" namespace="">www.uttab.edu.mx</s:a>  la ficha) ingresar folio CENEVAL y realizar el pago en cualquier sucursal del banco que se indique en la ficha</li>
                                <li>Original del acta de nacimiento reciente y tres copias tamaño carta</li>
                                <li style="list-style: none; margin: 10px 0 10px 0">Para el caso de extranjeros, deberán presentar Acta de nacimiento debidamente legalizada por el Servicio Consular Mexicano o apostillada en el país de origen. En caso de que no esté en idioma español deberá presentar su traducción incluyendo la del apostille, por perito autorizado por el Tribunal Superior de Justicia</li>
                                <li>Original del certificado de bachillerato legalizado (cuando aplique la legalización)</li>
                                <li>Original de la certificación del bachiller de procedencia (colegio de bachilleres)</li>
                                <li>Original del certificado médico que indique el tipo sanguíneo, emitido por una institución de salud pública oficial (expedido con una fecha no mayor a un mes previo a la inscripción)</li>
                                <li>Dos fotografías recientes tamaño infantil</li>
                                <li>Copia de la CURP</li>
                            </ul>
                            <p><span class="negritas">Etapa 4:</span> asistir al curso de inducción y examen psicométrico</p>
                        </section>
                        <section class="servicios_texto">
                            <h3>Etapas de proceso de admisión nivel Licenciatura</h3>
                            <p><span class="negritas">Etapa 1:</span> aspirante a la continuidad de estudios</p>
                            <ul>
                                <li>Haber concluido los estudios de TSU en el programa educativo afín a la carrera de nivel Licenciatura que desee cursar</li>
                                <li>Registrarse en la página web de la Universidad de acuerdo a la convocatoria para cada proceso de admisión</li>
                                <li>Inscribirse de acuerdo a las fechas señaladas</li>
                            </ul>

                            <p><span class="negritas">Etapa 2:</span> inscripción al nivel Licenciatura</p> 
                            <p>Requisitos:</p>
                            <ul>
                                <li>Pago de inscripción y colegiatura (imprimir desde la página  <s:a action="Home" namespace="">www.uttab.edu.mx</s:a>  la ficha) y realizar el pago en cualquier sucursal del banco correspondiente</li>
                                <li>Original del acta de nacimiento reciente y tres copias tamaño carta </li>
                                <li>Original del certificado de bachillerato legalizado (cuando aplique la legalización)</li>
                                <li>Original de la certificación del bachiller de procedencia</li>
                                <li>Original del certificado médico que indique el tipo sanguíneo, emitido por una institución de salud pública oficial (expedido con una fecha no mayor a un mes previo a la inscripción)</li>
                                <li>Dos fotografías recientes tamaño infantil</li>
                                <li>Copia de la CURP</li>
                                <li>Copia de comprobante de domicilio</li>
                            </ul>
                        </section>
                        <section class="servicios_texto">
                            <div class="ficha_contacto">
                                <header><h3>Contacto</h3></header>
                                <article>
                                    <p>Alicia Brown Valenzuela</p>
                                    <p>Jefa del departamento de Control Escolar</p>
                                    <p>Número directo +52 (993)3.58.22.08</p>
                                    <p>Conmutador: +52 (993)3.58.22.22 Ext. 9049</p>
                                    <p>Correo institucional: <a href="mailto:servicios.escolares@uttab.edu.mx ">servicios.escolares@uttab.edu.mx </a></p>
                                    <div class="corte"></div>
                                </article>
                            </div>
                        </section>
                    </article>
                    <div class="corte"></div>
                </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />                    
        </main>
    </body>
</html>