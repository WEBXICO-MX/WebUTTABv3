<%-- 
    Document   : biblioteca
    Created on : 23-nov-2015, 12:30:05
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Biblioteca</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Biblioteca">
        <meta name="keywords" content="servicios,Biblioteca,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
        <jsp:include page="../includeHeader.min.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Servicios / Alumnos</span> /</h2>
                    <h1>Biblioteca</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <figure><img src="${pageContext.request.contextPath}/img/servicios/biblioteca/biblioteca1-min.png" alt="Biblioteca"/></figure>
                    </section>
                    <section class="servicios_texto">
                        <div class="boton_biblioteca libro_del_mes left">
                            <s:url var="url_libro_del_mes" action="viewFile" namespace="">
                               <s:param name="i" value="18"></s:param>
                               <s:param name="d" value="%{'biblioteca'}"></s:param>
                            </s:url>
                            <span><s:a href="%{url_libro_del_mes}" target="_blank">Libro del mes</s:a></span>
                        </div>
                        <div class="boton_biblioteca nuevas_adquisiones right">
                            <s:url var="url_nuevas_adquisiones" action="viewFile" namespace="">
                               <s:param name="i" value="15"></s:param>
                               <s:param name="d" value="%{'biblioteca'}"></s:param>
                            </s:url>
                            <span><s:a href="%{url_nuevas_adquisiones}" target="_blank">Nuevas adquisiciones</s:a></span>
                        </div>
                        <div class="boton_biblioteca biblioteca_digital left">
                            <span><a href="http://www.bibliotecaecest.mx/" target="_blank">Biblioteca digital</a></span>
                        </div>
                        <div class="boton_biblioteca janium right">
                            <span><a href="http://sibisut.utleon.edu.mx/janium-bin/janium_login_opac.pl?bib=ut67" target="_blank">JANIUM</a></span>
                        </div>
                        <div class="boton_biblioteca ebsco left">
                            <span><a href="http://search.ebscohost.com" target="_blank">EBSCO</a></span>
                        </div>
                        <div class="boton_biblioteca cengage right">
                            <span><a href="http://infotrac.galegroup.com/itweb/uttabtab" target="_blank">CENGAGE Learning</a></span>
                        </div>
                    </section>
                    <section class="servicios_texto">
                        <header><h3>Antecedentes</h3></header>
                        <article>
                            <p>Desde sus inicios la Universidad Tecnológica de Tabasco, consciente de las necesidades informativas de la comunidad estudiantil, brinda apoyo al proceso enseñanza-aprendizaje mediante la prestación de los servicios bibliotecarios. Es por ello que durante su primera etapa de crecimiento se adquirió un total de 1,359 libros.</p><br/>
                            <p class="primera_linea">Posteriormente, y como consecuencia de la creación de nuevas carreras, se da un incremento en la población educativa aunado a la demanda de los servicios; lo cual da pie a la construcción de un edificio para la biblioteca.</p><br/>
                            <p class="primera_linea">Es así como en agosto de 2004 fue inaugurado por el Ingeniero José Francisco Fuentes Esperón (†), rector en turno de la UTTAB (período 2002-2008), el inmueble que alberga la biblioteca, mismo que fue equipado gracias al apoyo de las autoridades federales y estatales como plataforma para las actividades académicas; surgiendo con ello la instauración de nuevos servicios puestos a disposición de la comunidad universitaria.</p><br/>
                            <p class="primera_linea">En octubre de 2009, tras haber cumplido un mes de deceso el Ingeniero Fuentes Esperón (†), se llevó a cabo el homenaje luctuoso. Así como la develación del busto y fotografía del mismo en la entrada de la biblioteca que a partir de ese día lleva su nombre.</p>
                        </article>
                    </section>
                    <section class="servicios_texto">
                        <header><h3>¿Quiénes somos?</h3></header>
                        <article>
                            <p class="primera_linea">La biblioteca "Ing. José Francisco Fuentes Esperón" tiene como objetivo brindar acceso a la información y al conocimiento de forma innovadora a través de diversos medios, recursos y servicios, de tal manera que esté al alcance de la comunidad universitaria; así como promover el hábito de la lectura como elemento fundamental de la superación personal y profesional hacia el éxito seguro de toda persona.</p><br/>
                        </article>
                    </section>
                    <section class="servicios_texto">
                        <header><h3>Horarios de atención</h3></header>
                        <article>
                            <p>Lunes a viernes de 8:00 a 21:00 hrs.</p><br/>
                        </article>
                    </section>
                    <section class="servicios_texto">
                        <header><h3>Servicios</h3></header>
                        <article>
                            <ul>
                                <li>Catálogo de acceso público en línea (OPAC)</li>
                                <li>Préstamo de acervo bibliográfico, hemerográfico y audiovisual</li>
                                <li>Hemeroteca y mapoteca</li>
                                <li>Biblioteca digital y acceso a bases de datos</li>
                                <li>Fonoteca virtual</li>
                                <li>Actividades de promoción bibliotecaria
                                    <ul>
                                        <li>Talleres de formación de usuarios</li>
                                        <li>Círculos de lectura</li>
                                        <li>Círculos de escucha</li>
                                        <li>Visitas guiadas</li>
                                        <li>Orientación de usuarios</li>
                                    </ul>
                                </li>
                                <li>Trámite de no adeudo en biblioteca
                                    <ul>
                                        <li>Constancia (baja)</li>
                                        <li>Firma (titulación)</li>
                                    </ul>
                                </li>
                                <li>Fotocopiado, impresión y escáner</li>
                                <li>Guarda objetos</li>
                                <li>Internet inalámbrico</li>
                            </ul>
                        </article>
                    </section>
                    <section class="servicios_texto">
                        <header><h3>Espacios</h3></header>
                        <article>
                            <ul>
                                <li>Sala de consulta general</li>
                                <li>Sala de lectura "En un lugar de la mancha"</li>
                                <li>Salas de internet</li>
                                <li>Sala audiovisual</li>
                                <li>Salas de grupo</li>
                                <li>Sala de la fonoteca virtual</li>
                                <li>Módulos individuales de estudio</li>
                            </ul>
                        </article>
                    </section>
                    <section class="servicios_texto">
                        <header><h3>Pago de servicios</h3></header>
                        <article>
                            <p>El procedimiento para solicitar estos servicios es el siguiente:</p><br/>
                            <ul>
                                <li>Verificar el costo y tipo del servicio</li>
                                <li>Realizar el pago en caja</li>
                                <li>Presentar en biblioteca el recibo de pago, verificando que el concepto solicitado sea el correcto</li>
                            </ul><br/>
                            <p class="negritas">Nota: El recibo de pago por servicios bibliotecarios será canjeado por un bono y podrás utilizarlo para servicio de impresión, escáner o  fotocopiado.</p><br/>
                            <table style="width:100%;">
                                <thead>
                                    <tr>
                                        <th style="width:25%;">Concepto</th>
                                        <th style="width:25%;">Costo</th>
                                        <th style="width:50%;">Observación</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Multa por recargo de libros</td>
                                        <td>$10.00</td>
                                        <td>La multa es por libro y día de retardo</td>
                                    </tr>
                                    <tr>
                                        <td>Servicios bibliotecarios</td>
                                        <td>$20.00</td>
                                        <td>
                                            <p>Puede ser utilizado para cualquiera de los servicios: </p><br/>
                                            <table style="width:100%;">
                                                <tbody>
                                                    <tr>
                                                        <td style="width:50%;">Impresión b/n</td>
                                                        <td style="width:50%;">$1.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Escáner</td>
                                                        <td>$1.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Fotocopiado</td>
                                                        <td>$0.50</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </article>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
    </body>
</html>