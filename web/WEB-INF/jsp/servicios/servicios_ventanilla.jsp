<%-- 
    Document   : alumnos
    Created on : 11/07/2013, 12:43:50 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Servicios en ventanilla</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Servicios en ventanilla">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="css/servicios.min.css">
        <link rel="icon" href="img/favicon.ico"/>
        <!--[if IE]>
        <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <%if (!(request.getParameter("d") != null)) {%>
        <jsp:include page="../includeMenu.jsp?origen=servicios" flush="true"  />
        <%}%>
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_control_escolar2"><h3>Servicios en ventanilla</h3></div>        
            <div class="area_info_control_escolar2">
                <div class="area_info_control_escolar2_2" style="width: 100%;margin:0;">
                    <div class="area_info_control_escolar2_2_info" style="margin:0 auto;">
                        <p>Catálogo de pagos para alumnos y egresados de la Universidad Tecnológica de Tabasco.</p><br/>
                        <p>El procedimiento para solicitar cualquier servicio es el siguiente: </p><br/>
                        <ol style="margin-left: 50px;">
                            <li>Verificar el  costo y tipo de servicio en la ventanilla de la Dirección de Servicios  Escolares y/o caja de la UTTAB.</li>
                            <li>Realizar el pago correspondiente.</li>
                            <li>Presentar en ventanilla de servicios escolares el  recibo de pago. </li>
                            <li>Recibir por parte del personal de ventanilla el  servicio.  </li>
                        </ol>
                        <p>&nbsp;</p>
                        <br/>
                        <table style="width:100%;">
                            <tr>
                                <td align="center">Concepto</td>
                                <td align="center">Costo del servicio</td>
                                <td align="center">Área que brinda el servicio</td>    
                                <td align="center">Observación</td>
                            </tr>
                            <tr>
                                <td><p align="center">Ficha de  ingreso a la UTTAB (examen de admisión)</p></td>
                                <td align="center">$250.00</td>
                                <td rowspan="17" align="center">Departamento de<br>
                                    Control Escolar</td>
                                <td>Aplica a los aspirantes a  ingresar a la universidad, el pago se realiza en el banco de acuerdo a la  convocatoria para cada proceso de admisión </td>
                            </tr>
                            <tr>
                                <td>Inscripción y colegiatura  TSU</td>
                                <td align="center">$1,140.00</td>
                                <td>Alumnos nuevo ingreso TSU</td>
                            </tr>
                            <tr>
                                <td>Inscripción y colegiatura  LIC</td>
                                <td align="center">$2,550.00</td>
                                <td>Alumnos </td>
                            </tr>
                            <tr>
                                <td>Colegiatura  cuatrimestral  TSU</td>
                                <td align="center">$890.00</td>
                                <td>Alumnos </td>
                            </tr>
                            <tr>
                                <td>Colegiatura  cuatrimestral  LIC</td>
                                <td align="center">$1,550.00</td>
                                <td>Alumnos </td>
                            </tr>
                            <tr>
                                <td>Multa por pago de  colegiatura fuera de tiempo </td>
                                <td align="center">$70.00</td>
                                <td>Alumnos </td>
                            </tr>
                            <tr>
                                <td>Multa por reinscripción  fuera de tiempo</td>
                                <td align="center">$70.00</td>
                                <td>Alumnos </td>
                            </tr>
                            <tr>
                                <td>Constancias  de estudios: 
                                    <ul style="list-style-position:outside; margin-left:0px;">
                                        <li>con calificaciones</li>
                                        <li>sin calificaciones</li>
                                        <li>con créditos</li>
                                        <li>con las asignaturas del cuatrimestre actual</li>

                                    </ul>

                                </td>
                                <td align="center">$25.00</td>
                                <td>Alumnos </td>
                            </tr>
                            <tr>
                                <td>Reposición de credenciales  de alumnos </td>
                                <td align="center">$40.00</td>
                                <td>Alumnos </td>
                            </tr>
                            <tr>
                                <td>Reposición de claves de  acceso al sistema</td>
                                <td align="center">$15.00</td>
                                <td>Alumnos</td>
                            </tr>
                            <tr>
                                <td>Baja temporal no tramitada </td>
                                <td align="center">$222.50</td>
                                <td>Alumnos </td>
                            </tr>
                            <tr>
                                <td>Préstamos de documentos<br>
                                    originales TSU:<br>
                                    <ul style="margin-left:0px;">
                                        <li>acta de nacimiento</li>
                                        <li>certificado de bachillerato</li>
                                    </ul></td>
                                <td align="center">$ 15.00 </td>
                                <td>Alumnos</td>
                            </tr>
                            <tr>
                                <td>Baja  definitiva (devolución de documentos originales)</td>
                                <td align="center">$30.00</td>
                                <td>Alumnos</td>
                            </tr>
                            <tr>
                                <td>Resguardo de documentos  alumnos desertores después de 1 año</td>
                                <td align="center">$890.00</td>
                                <td>Alumnos desertores</td>
                            </tr>
                            <tr>
                                <td>Certificación  de documentos en copias 
                                    <ul style="margin-left:0px;">
                                        <li>acta de nacimiento</li>
                                        <li>certificado de bachillerato</li>
                                    </ul>
                                </td>
                                <td align="center">$ 30.00</td>
                                <td>Alumnos</td>
                            </tr>
                            <tr>
                                <td>Expedición de certificado  parcial de estudios</td>
                                <td align="center">$350.00</td>
                                <td>Alumnos</td>
                            </tr>
                            <tr>
                                <td>Equivalencias  de estudios (asignaturas)<strong>  </strong></td>
                                <td align="center">$150.00</td>
                                <td>Alumnos </td>
                            </tr>
                            <tr>
                                <td>Constancia de egresados:
                                    <ul style="margin-left:0px;">
                                        <li>con calificaciones</li>
                                        <li>constancia de terminación de estudios</li>
                                    </ul>
                                </td>
                                <td align="center">$25.00</td>
                                <td rowspan="14" align="center">Departamento de Titulación y<br>
                                    Seguimiento de Egresados</td>
                                <td>Egresados</td>
                            </tr>
                            <tr>
                                <td>Constancia de registro  de título y expedición de cédula profesional</td>
                                <td align="center">$25.00</td>
                                <td>Egresados</td>
                            </tr>
                            <tr>
                                <td>Préstamos de documentos originales a egresados:<br>
                                    <ul style="margin-left:0px;">
                                        <li>acta de nacimiento</li>
                                        <li>certificado de bachillerato</li>
                                        <li>certificado de estudios UTTAB</li>
                                        <li>título</li>
                                    </ul>
                                </td>
                                <td align="center">$30.00</td>
                                <td>Egresados</td>
                            </tr>
                            <tr>
                                <td>Certificación  de documentos en copias 
                                    <ul style="margin-left:0px;">
                                        <li>acta de nacimiento</li>
                                        <li>certificado de bachillerato</li>
                                        <li>certificado de estudios UTTAB</li>
                                        <li>título</li>
                                    </ul>
                                </td>
                                <td align="center">$30.00</td>
                                <td>Egresados</td>
                            </tr>
                            <tr>
                                <td>Duplicado de certificado de  estudios TSU</td>
                                <td align="center">$450.00</td>
                                <td>Egresados</td>
                            </tr>
                            <tr>
                                <td>Resguardo de documentos  egresados después de 1 año</td>
                                <td align="center">$1,100.00</td>
                                <td>Egresados</td>
                            </tr>
                            <tr>
                                <td>Título y cédula profesional  TSU</td>
                                <td align="center">$1,800.00</td>
                                <td>Egresados</td>
                            </tr>
                            <tr>
                                <td>Título y cédula profesional TSU<br/>(egresados que realicen el trámite de titulación después de un año)</td>
                                <td align="center">$2,700.00</td>
                                <td>Egresados</td>
                            </tr>
                            <tr>
                                <td>Título y cédula profesional  TSU para extranjeros</td>
                                <td align="center">$2,500.00</td>
                                <td>Egresados</td>
                            </tr>
                            <tr>
                                <td>Título y cédula profesional  LIC </td>
                                <td align="center">$3,800.00</td>
                                <td>Licenciaturas</td>
                            </tr>
                            <tr>
                                <td>Título y cédula  profesional  LIC para extranjeros</td>
                                <td align="center">$4,200.00</td>
                                <td>Licenciaturas</td>
                            </tr>
                            <tr>
                                <td>Duplicado de cédula  profesional (mexicanos y extranjeros) TSU</td>
                                <td align="center">$380.00</td>
                                <td>Egresados</td>
                            </tr>
                            <tr>
                                <td>Duplicado de cédula  profesional (mexicanos y extranjeros) LIC</td>
                                <td align="center">$550.00</td>
                                <td>Licenciaturas </td>
                            </tr>
                            <tr>
                                <td>Duplicado de certificado de  estudios de licenciatura</td>
                                <td align="center">$650.00</td>
                                <td>Licenciaturas</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>        
        </div>
        <!-- Cuerpo -->
        <%if (!(request.getParameter("d") != null)) {%>
        <jsp:include page="../includePie.jsp?origen=servicios" flush="true" />
        <%}%>
    </body>
</html>