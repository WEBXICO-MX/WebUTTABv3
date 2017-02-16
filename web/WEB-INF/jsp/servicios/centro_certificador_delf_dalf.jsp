<%-- 
    Document   : centro_certificador_delf_dalf
    Created on : 23-nov-2015, 12:30:38
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Centro Certificador de Exámenes de Francés DELF-DALF</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Centro Certificador de Exámenes de Francés DELF-DALF">
        <meta name="keywords" content="servicios,Centro Certificador de Exámenes de Francés DELF-DALF,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios3.min.css"/>
        <style>
            table {
                border-collapse: collapse;
            }

            table, th, td {
                border: 1px solid black;
            }
        </style>
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
                    <h1>Centro Certificador de Exámenes de Francés DELF-DALF</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <img src="${pageContext.request.contextPath}/img/servicios/centro_certificador_delf_dalf/centro_certificador1-min.png" alt="Centro Certificador de Exámenes de Francés DELF-DALF"/>
                        <h3>¿Quiénes somos?</h3>
                        <p>El Centro Certificador DELF-DALF de la Universidad Tecnológica de Tabasco es un proyecto que resulta de la cooperación entre la embajada de Francia, de México y la UTTAB e inició sus actividades en 2008.</p>
                        <p>Tiene la responsabilidad de organizar y supervisar que todas las sesiones de exámenes durante el año se realicen conforme al calendario de la Coordinación Nacional DELF-DALF con sede en el Instituto Francés de America Latina (IFAL), de acuerdo a las indicaciones de calidad emitidas desde el Centro Internacional de Estudios Pedagógicos (CIEP) del Ministerio de Educación Francés.</p>
                    </section>
                    <section class="servicios_texto">
                        <h3>¿Qué son los exámenes DELF y DALF?</h3>
                        <p>Son certificaciones oficiales de francés otorgados por el Ministerio Francés de Educación Nacional por medio del Centro Internacional de Estudios Pedagógicos (CIEP).</p>
                        <ul>
                            <li>DELF significa: Diploma de Estudios de Lengua Francesa</li>
                            <li>DALF significa: Diploma Avanzado de Lengua Francesa</li>
                        </ul>
                    </section>
                    <section class="servicios_texto">
                        <h3>¿Para qué presentar un examen DELF-DALF?</h3>
                        <p>Porque permiten el reconocimiento y la validación internacional del dominio en el idioma francés en universidades y en centros de idioma; sea por motivos personales o profesionales.</p>
                    </section>
                    <section class="servicios_texto">
                        <h3>Servicios que ofrecemos</h3>
                        <p>El centro DELF-DALF ofrece al público interno y externo la posibilidad de acreditar una certificación a nivel internacional en lengua francesa, es decir, certifica que el alumno o la persona (empleado, profesor) sea capaz de hablar, escribir, comprender y escuchar el idioma.</p>
                        <p>Además de la aplicación y organización de los exámenes, nuestro centro ofrece:</p>
                        <ul>
                            <li>Asesorías y consultorías sobre las certificaciones DELF-DALF, TCF, etc</li>
                            <li>Evaluación de diagnóstico en el idioma francés</li>
                            <li>Talleres de preparación a la certificación DELF para estudiantes</li>
                            <li>Cursos de preparación para las certificaciones de francés DELF y DALF</li>
                            <li>Asesoría y apoyo técnico a los estudiantes de francés del programa de movilidad Licencia Profesional a Francia, intercambio a países francófonos</li>
                            <li>Cursos de francés del servicio y de los negocios</li>
                            <li>Traducción de documentos científicos y documentos jurídicos</li>
                            <li>Apoyo en firma de convenios DELF-DALF entre instituciones México-Francia</li>
                        </ul><br/>
                        <p>Los diplomas DELF y DALF son entregados por el Ministerio de Educación Francés para certificar las competencias en lengua francesa. El DELF y DALF están compuestos por seis diplomas independientes que corresponden a los seis niveles del marco común europeo de referencia para las lenguas.</p>
                        <table style="width: 50%">
                            <thead>
                                <tr>
                                    <th>CECR</th>
                                    <th>DELF/DALF</th>
                                    <th>USUARIO</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>A1</td>
                                    <td>DELF A1</td>
                                    <td>Elemental</td>
                                </tr>
                                <tr>
                                    <td>A2</td>
                                    <td>DELF A2</td>
                                    <td>Elemental</td>
                                </tr>
                                <tr>
                                    <td>B1</td>
                                    <td>DELF B1</td>
                                    <td>Independiente</td>
                                </tr>
                                <tr>
                                    <td>B2</td>
                                    <td>DELF B2</td>
                                    <td>Independiente</td>
                                </tr>
                                <tr>
                                    <td>C1</td>
                                    <td>DALF C1</td>
                                    <td>Experimentado</td>
                                </tr>
                                <tr>
                                    <td>C2</td>
                                    <td>DALF C2</td>
                                    <td>Experimentado</td>
                                </tr>
                            </tbody>
                        </table><br/>
                        <p>Los diplomas DELF también existen en versión adaptada a jóvenes adolescentes.</p><br/>
                        <table style="width: 40%">
                            <thead>
                                <tr>
                                    <th>CECR</th>
                                    <th>DELF/DALF</th>
                                    <th>USUARIO</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>A1</td>
                                    <td>DELF junior A1</td>
                                    <td>Elemental</td>
                                </tr>
                                <tr>
                                    <td>A2</td>
                                    <td>DELF junior A2</td>
                                    <td>Elemental</td>
                                </tr>
                                <tr>
                                    <td>B1</td>
                                    <td>DELF junior B1</td>
                                    <td>Independiente</td>
                                </tr>
                                <tr>
                                    <td>B2</td>
                                    <td>DELF junior B2</td>
                                    <td>Independiente</td>
                                </tr>
                            </tbody>
                        </table><br/>
                        <p>¿A cuántas horas de aprendizaje equivale cada nivel y cuál es el costo?</p><br/>
                        <table style="width: 40%;">
                            <thead>
                                <tr>
                                    <th>Nivel</th>
                                    <th>Horas</th>
                                    <th>Costos</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>DELF A1</td>
                                    <td>- 90/100 h</td>
                                    <td>$ 750</td>
                                </tr>
                                <tr>
                                    <td>DELF A2</td>
                                    <td>- 190/200 h</td>
                                    <td>$ 850</td>
                                </tr>
                                <tr>
                                    <td>DELF B1</td>
                                    <td>- 350/380 h</td>
                                    <td>$ 900</td>
                                </tr>
                                <tr>
                                    <td>DELF B2</td>
                                    <td>- 600/670 h</td>
                                    <td>$ 1500</td>
                                </tr>
                                <tr>
                                    <td>DALF C1</td>
                                    <td>- 750/780 h</td>
                                    <td>$ 2,200</td>
                                </tr>
                                <tr>
                                    <td>DALF C2</td>
                                    <td>- + de 900h</td>
                                    <td>$ 2,500</td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                    <section class="servicios_texto">
                        <div class="ficha_contacto">
                            <header><h3>Contacto</h3></header>
                            <article>
                                <p>Juan Carlos Olán Sánchez</p>
                                <p>Secretario del Centro Certificador DELF - DALF</p>
                                <p>Conmutador: +52 (993) 3.58.22.22 Ext. 1008|7002</p>
                                <p>Correo institucional: <a href="mailto:cdelfdalf@uttab.edu.mx">cdelfdalf@uttab.edu.mx</a></p>
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