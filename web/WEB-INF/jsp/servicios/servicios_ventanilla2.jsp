<%-- 
    Document   : servicios_ventanilla2
    Created on : 25-nov-2015, 10:34:52
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Servicios en ventanilla</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Licenciatura en Gestión y Desarrollo Turístico">
        <meta name="keywords" content="servicios,Servicios en ventanilla,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            table {
                border-collapse: collapse;
                width:100%;
            }
            table thead tr th {
                text-align: center;
                width:25%;
            }
            table tbody tr td {
                padding: 5px; 
                text-align: center;
            }
            
            table td, table th {
                border: 1px solid black;
            }
            table tr:first-child th {
                border-top: 0;border-right: 0;border-left: 0;
            }
            table tr:first-child td{
                border-top: 0;
            }
            table tr:last-child td {
                /*border-bottom: 0;*/
            }
            table tr td:first-child,
            table tr th:first-child {
                border-left: 0;
            }
            table tr td:last-child,
            table tr th:last-child {
                border-right: 0;
            }
        </style>
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="servicios_section">
                <header class="servicios_titulo">
                    <h2><span class="texto_resaltado">Alumnos / Control Escolar </span>/</h2>
                    <h1>Servicios en ventanilla</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <br/><br/>
                        <p>Catálogo de pagos para alumnos y egresados de la Universidad Tecnológica de Tabasco.</p><br/>
                        <p>El procedimiento para solicitar cualquier servicio es el siguiente: </p><br/>
                        <ol style="list-style-position: inside; list-style: none;">
                            <li>Verificar el  costo y tipo de servicio en la ventanilla de la Dirección de Servicios  Escolares y/o caja de la UTTAB.</li>
                            <li>Realizar el pago correspondiente.</li>
                            <li>Presentar en ventanilla de servicios escolares el  recibo de pago. </li>
                            <li>Recibir por parte del personal de ventanilla el  servicio.  </li>
                        </ol><br/>
                        <h3>Servicios de ventanilla</h3>
                        <table>
                            <thead>
                                <tr>
                                    <th>Concepto</th>
                                    <th>Costo del servicio</th>
                                    <th>Área que brinda el servicio</th>    
                                    <th>Observación</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><p>Ficha de  ingreso a la UTTAB (examen de admisión)</p></td>
                                    <td>$350.00</td>
                                    <td rowspan="17">Departamento de<br>
                                        Control Escolar</td>
                                    <td style="text-align: justify;">Aplica a los aspirantes a ingresar a la universidad, el pago se realiza en el banco de acuerdo a la convocatoria para cada proceso de admisión</td>
                                </tr>
                                <tr>
                                    <td>Inscripción y colegiatura  TSU</td>
                                    <td>$1,140.00</td>
                                    <td>Alumnos nuevo ingreso TSU</td>
                                </tr>
                                <tr>
                                    <td>Inscripción y colegiatura  LIC</td>
                                    <td>$2,550.00</td>
                                    <td>Alumnos </td>
                                </tr>
                                <tr>
                                    <td>Colegiatura  cuatrimestral  TSU</td>
                                    <td>$890.00</td>
                                    <td>Alumnos </td>
                                </tr>
                                <tr>
                                    <td>Colegiatura  cuatrimestral  LIC</td>
                                    <td>$1,550.00</td>
                                    <td>Alumnos </td>
                                </tr>
                                <tr>
                                    <td>Multa por pago de  colegiatura fuera de tiempo </td>
                                    <td>$70.00</td>
                                    <td>Alumnos </td>
                                </tr>
                                <tr>
                                    <td>Multa por reinscripción  fuera de tiempo</td>
                                    <td>$70.00</td>
                                    <td>Alumnos </td>
                                </tr>
                                <tr>
                                    <td style="text-align: justify;">Constancias  de estudios: 
                                        <ul style="list-style-position:outside; margin-left:0px;">
                                            <li>con calificaciones</li>
                                            <li>sin calificaciones</li>
                                            <li>con créditos</li>
                                            <li>con las asignaturas del cuatrimestre actual</li>
                                        </ul>
                                    </td>
                                    <td>$25.00</td>
                                    <td>Alumnos </td>
                                </tr>
                                <tr>
                                    <td>Reposición de credenciales  de alumnos </td>
                                    <td>$40.00</td>
                                    <td>Alumnos </td>
                                </tr>
                                <tr>
                                    <td>Reposición de claves de  acceso al sistema</td>
                                    <td>$15.00</td>
                                    <td>Alumnos</td>
                                </tr>
                                <tr>
                                    <td>Baja temporal no tramitada </td>
                                    <td>$222.50</td>
                                    <td>Alumnos </td>
                                </tr>
                                <tr>
                                    <td style="text-align: justify;">Préstamo de documentos<br>
                                        originales TSU:<br>
                                        <ul style="margin-left:0px;">
                                            <li>acta de nacimiento</li>
                                            <li>certificado de bachillerato</li>
                                        </ul></td>
                                    <td>$ 15.00 </td>
                                    <td>Alumnos</td>
                                </tr>
                                <tr>
                                    <td>Baja  definitiva (devolución de documentos originales)</td>
                                    <td>$30.00</td>
                                    <td>Alumnos</td>
                                </tr>
                                <tr>
                                    <td>Resguardo de documentos  alumnos desertores después de 1 año</td>
                                    <td>$890.00</td>
                                    <td>Alumnos desertores</td>
                                </tr>
                                <tr>
                                    <td style="text-align: justify;">Certificación  de documentos en copias 
                                        <ul style="margin-left:0px;">
                                            <li>acta de nacimiento</li>
                                            <li>certificado de bachillerato</li>
                                        </ul>
                                    </td>
                                    <td>$ 30.00</td>
                                    <td>Alumnos</td>
                                </tr>
                                <tr>
                                    <td>Expedición de certificado  parcial de estudios</td>
                                    <td>$350.00</td>
                                    <td>Alumnos</td>
                                </tr>
                                <tr>
                                    <td>Equivalencias  de estudios (asignaturas)<strong>  </strong></td>
                                    <td>$150.00</td>
                                    <td>Alumnos </td>
                                </tr>
                                <tr>
                                    <td style="text-align: justify;">Constancia de egresados:
                                        <ul style="margin-left:0px;">
                                            <li>con calificaciones</li>
                                            <li>constancia de terminación de estudios</li>
                                        </ul>
                                    </td>
                                    <td>$25.00</td>
                                    <td rowspan="14">Departamento de Titulación y<br>
                                        Seguimiento de Egresados</td>
                                    <td>Egresados</td>
                                </tr>
                                <tr>
                                    <td>Constancia de registro  de título y expedición de cédula profesional</td>
                                    <td>$25.00</td>
                                    <td>Egresados</td>
                                </tr>
                                <tr>
                                    <td style="text-align: justify;">Préstamo de documentos originales a egresados:<br>
                                        <ul style="margin-left:0px;">
                                            <li>acta de nacimiento</li>
                                            <li>certificado de bachillerato</li>
                                            <li>certificado de estudios UT</li>
                                            <li>título</li>
                                        </ul>
                                    </td>
                                    <td>$30.00</td>
                                    <td>Egresados</td>
                                </tr>
                                <tr>
                                    <td style="text-align: justify;">Certificación  de documentos en copias 
                                        <ul style="margin-left:0px;">
                                            <li>acta de nacimiento</li>
                                            <li>certificado de bachillerato</li>
                                            <li>certificado de estudios UT</li>
                                            <li>título</li>
                                        </ul>
                                    </td>
                                    <td>$30.00</td>
                                    <td>Egresados</td>
                                </tr>
                                <tr>
                                    <td>Duplicado de certificado de  estudios TSU</td>
                                    <td>$450.00</td>
                                    <td>Egresados</td>
                                </tr>
                                <tr>
                                    <td>Resguardo de documentos  egresados después de 1 año</td>
                                    <td>$1,100.00</td>
                                    <td>Egresados</td>
                                </tr>
                                <tr>
                                    <td>Título y cédula profesional  TSU</td>
                                    <td>$1,800.00</td>
                                    <td>Egresados</td>
                                </tr>
                                <tr>
                                    <td>Título y cédula profesional TSU<br/>(egresados que realicen el trámite de titulación después de un año)</td>
                                    <td>$2,700.00</td>
                                    <td>Egresados</td>
                                </tr>
                                <tr>
                                    <td>Título y cédula profesional  TSU para extranjeros</td>
                                    <td>$2,500.00</td>
                                    <td>Egresados</td>
                                </tr>
                                <tr>
                                    <td>Título y cédula profesional  LIC </td>
                                    <td>$3,800.00</td>
                                    <td>Licenciaturas</td>
                                </tr>
                                <tr>
                                    <td>Título y cédula  profesional  LIC para extranjeros</td>
                                    <td>$4,200.00</td>
                                    <td>Licenciaturas</td>
                                </tr>
                                <tr>
                                    <td>Duplicado de cédula  profesional (mexicanos y extranjeros) TSU</td>
                                    <td>$380.00</td>
                                    <td>Egresados</td>
                                </tr>
                                <tr>
                                    <td>Duplicado de cédula  profesional (mexicanos y extranjeros) LIC</td>
                                    <td>$550.00</td>
                                    <td>Licenciaturas </td>
                                </tr>
                                <tr>
                                    <td>Duplicado de certificado de  estudios de licenciatura</td>
                                    <td>$650.00</td>
                                    <td>Licenciaturas</td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=servicios" flush="true" />
    </body>
</html>