<%-- 
    Document   : alumnos
    Created on : 11/07/2013, 12:43:50 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <!--[if IE]>
          <link rel="shortcut icon"  href=""img/favicon.ico"/> 
        <![endif]-->

        <link rel="icon" href="img/favicon.ico"/>
        <title>UTTAB &#124; Alumnos</title>
        <!-- Meta data -->
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco, Alumnos">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link media="all" type="text/css" href="css/servicios.min.css" id="stylesheet-css" rel="stylesheet">
        <!--<meta http-equiv="refresh" content="30">-->
        <!--[if lte IE 8]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <link type="text/css" href="css/ie.min.css" rel="stylesheet">
        <![endif]-->
        <script>
            function msgConsultaCalificaciones()
            {
                var msg = "";
                msg += "ATENCIÓN\n\n Sera redireccionado a http://saiiut.uttab.edu.mx/,\n";
                msg += "donde debera iniciar sesión con su usuario y contraseña,\n";
                msg += "despues que se despliegue el menú vaya a:\n\n";
                msg += "Academia -> Alumnos -> Reportes -> Ver mis calificaciones";
                alert(msg);
                window.open('http://saiiut.uttab.edu.mx/', '_blank');
            }
        </script>
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=servicios" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_alumnos"><h3>Alumnos</h3></div>
            <div class="area_btn_alumnos">
                <a href="javascript:void(0);" title="Consulta calificaciones" onclick="msgConsultaCalificaciones();"><img src="img/servicios/alumnos/btn_consulta_calif2.png" width="151" height="28" alt="Consulta Calificaciones"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="ServiciosVentanilla" target="_self" title="Trámites y costos"><img src="img/servicios/alumnos/btn_tramites2.png" width="151" height="28" alt="Tramites y Costos"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <!--<img src="img/servicios/alumnos/btn_talleres.png" width="151" height="28" alt="Talleres"/>-->
            </div>
            <div class="area_info_alumnos">
                <div class="area_info_alumnos_0">
                    <div class="area_info_alumnos_0_titulo"><h4>Curso de inducci&oacute;n</h4></div>
                    <div class="area_info_alumnos_0_info">
                        <p>Se imparte a los alumnos de nuevo ingreso con la finalidad de darles a conocer el modelo del sistema de las UT's y los servicios que brinda la universidad.</p>
                    </div>
                </div>
                <div class="area_info_alumnos_1">
                    <div class="area_info_alumnos_1_titulo"><h4>Atención psicopedag&oacute;gica</h4></div>
                    <div class="area_info_alumnos_1_info">
                        <img src="img/servicios/alumnos/Alumnos_24.png" width="470" height="215" alt="Alumnos" style="float: right; margin-left: 10px;"/>

                        <p>Es un espacio creado con el firme propósito de orientar y contribuir al pleno desarrollo de las potencialidades en el ámbito personal y profesional de los alumnos.</p><br/>
                        <ul>
                            <li>Consultas individuales</li>
                            <li>Consultas grupales</li>
                            <li>Talleres</li>
                            <li>Conferencias</li>
                            <li>Examen psicométrico a los alumnos de nuevo ingreso</li>
                        </ul><br/><br/><br/>
                    </div>
                </div>
                <div class="area_info_alumnos_2">
                    <div class="area_info_alumnos_2_titulo"><h4>Tutor&iacute;as</h4></div>
                    <div class="area_info_alumnos_2_info">
                        <p><img src="img/servicios/alumnos/Alumnos_31.png" width="470" height="215" alt="Alumnos" style="float:left;margin-right: 10px;"/></p>
                        <p>La tutoría es el proceso de acompañamiento de tipo personal y académico a lo largo del proceso formativo para mejorar el rendimiento académico, solucionar 
                            problemas escolares, desarrollar hábitos de estudio y métodos de aprendizaje, trabajo, reflexión y convivencia social, donde el tutor juega un papel importante
                            en el proceso educativo.</p><br/>

                        <p>Se brindan platicas, cursos y talleres a los maestros tutores.</p><br/><br/><br/><br/>
                    </div>
                </div>
                <div class="area_info_alumnos_3">
                    <div class="area_info_alumnos_3_titulo"><h4>Becas internas</h4></div>
                    <div class="area_info_alumnos_3_info">
                        <p>Las becas internas se otorgan a los alumnos de escasos recursos o de un nivel socioeconómico bajo. Estas pueden ser:</p><br/>
                        <ul>
                            <li>Beca Lilián Argüelles de Fuentes
                                <ul style="list-style: none; margin-left: 20px;">
                                    <li>-Fotocopias</li>
                                    <li>-Alimentos</li>
                                    <li>-Transporte</li>
                                </ul>
                            </li>

                            <li>Becas por alto rendimiento académico</li>
                        </ul>
                        <p>Es la que otorga la Universidad al alumno, con promedio entre nueve punto cero y diez punto cero de calificación y consisten en la exención parcial o total del pago
                            de sus colegiaturas.</p><br/>

                        <p>La exención del pago se hace en base a:</p><br/><br/>
                        <table style=" border-spacing: 20px;border:0;">
                            <thead>
                                <tr>
                                    <th>Promedio</th>
                                    <th>Bonificación</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>9.0 a 9.2</td>
                                    <td>25%</td>
                                </tr>
                                <tr>
                                    <td>9.3 a 9.5</td>
                                    <td>50%</td>
                                </tr>
                                <tr>
                                    <td>9.6 a 9.8</td>
                                    <td>75%</td>
                                </tr>
                                <tr>
                                    <td>9.9 a 10.0</td>
                                    <td>100%</td>
                                </tr>
                            </tbody>
                        </table><br/>

                        <p>Para el caso de la nomenclatura alfanumérica utilizada en la modalidad de evaluación de educación basada en competencias profesionales, la asignación 
                            automática a que se refiere este artículo considera los siguientes apoyos: AU = 100%</p><br/>
                        <ul>
                            <li>Becas por alto rendimiento deportivo
                                <ul class="miUl">                     
                                    <li>Se concede al alumno con promedio mínimo de 8.0 (ocho), de acuerdo a los lugares obtenidos, en los torneos deportivos nacionales y
                                        oficiales del Sistema Nacional de Universidades Tecnológicas.<br/> La exención del pago de colegiatura por cuatro meses a partir del mes posterior a la realización
                                        del evento, se aplica de la siguiente manera:</li><br/>
                                    <li>Primer Lugar 100%</li>
                                    <li>Segundo Lugar 75%</li>
                                    <li>Tercer Lugar 50%</li><br/>
                                    <li>Para el caso de la escala alfanumérica, la calificación mínima requerida es el equivalente a SA.</li>
                                </ul>
                            </li><br/>

                            <li>Becas de permanencia deportiva o cultural
                                <ul class="miUl">
                                    <li>Se otorga de acuerdo a los lineamientos establecidos para ello se requiere que el alumno forme parte del equipo o grupo representativo de la Universidad en eventos oficiales del Sistema Nacional de Universidades Tecnológicas.</li>
                                </ul>
                            </li><br/>


                            <li>Becas de inscripción, colegiatura y titulación para trabajadores de la universidad que deseen cursar una carrera en nuestra institución</li><br/>

                            <li>Becas por vínculo familiar
                                <ul class="miUl">
                                    <li>Esta se otorga solo a personas con vínculo familiar directo del trabajador de la universidad que desee cursar una carrera en nuestra institución.</li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="area_info_alumnos_4">
                    <div class="area_info_alumnos_4_titulo"><h4>Becas externas</h4></div>
                    <div class="area_info_alumnos_4_info">
                        <p>Las becas externas se estipulan de acuerdo a los requisitos establecidos en las convocatorias publicadas por la Subsecretaria de Educación Superior.</p>
                        <p><a href="http://www.cnbes.sep.gob.mx" target="_blank">www.cnbes.sep.gob.mx</a></p><br/><br/>
                        <ul>
                            <li>Becas de transporte del H. Ayuntamiento del Centro
                                <ul class="miUl">
                                    <li>
                                        Son becas que otorga el gobierno del estado a través del H. Ayuntamiento del Municipio del Centro y consiste en otorgar un apoyo económico para el transporte
                                        camino casa - escuela y viceversa, el monto varía de acuerdo a la distancia en kilómetros que recorre el alumno. La solicitud de esta beca la realiza el alumno en el H. 
                                        Ayuntamiento del Municipio del Centro.
                                    </li>
                                </ul>
                            </li><br/>
                            <li style="list-style: none;">
                                <img src="img/servicios/alumnos/Alumnos_39.png" width="215" height="75" alt="Beca Pronabes" style="float: left; margin-right: 15px; margin-bottom: 25px;"/>
                            </li>
                            <li>Beca Pronabes
                                <ul class="miUl">
                                    <li>Es una beca que otorga el gobierno Federal, a través de la Secretaría de Educación Pública en coordinación con el gobierno del estado y las instituciones públicas
                                        de educación superior cuyo requisito principal es contar con un promedio mínimo de calificaciones de 8.0 o su equivalente en una escala de 0 a 10.</li>
                                    <li><a href="http://becas.setab.gob.mx/" target="_blank">http://becas.setab.gob.mx/</a></li>
                                </ul>
                            </li><br/>
                            
                            <li style="list-style: none;">
                                <img src="img/servicios/alumnos/Alumnos_42.png" width="215" height="75" alt="CONACYT" style="float: left; margin-right: 15px;"/>
                            </li>
                            <li>Beca Conacyt
                                <ul class="miUl">
                                    <li>
                                        Son becas de apoyo a madres solteras, jefas de familia que se otorgan para la formación profesional (Licenciatura y formación técnica de tercer nivel).
                                    </li>
                                    <li><a href="http://www.conacyt.gob.mx" target="_blank">www.conacyt.gob.mx</a></li>
                                </ul>
                            </li><br/>
                            <li>Becanet (Becas para la educación superior)
                                <ul>
                                    <li class="miLi2">
                                        Las becas Becanet Superior son otorgadas por la Secretaría de Educación Pública del Gobierno de México, como parte de un programa de becas para la
                                        educación superior, están orientadas a estudiantes de instituciones públicas de educación superior de México. Están divididas en:
                                    </li><br/>

                                    <li>Becas Becanet de excelencia</li>
                                    <li>Becas Becanet de vinculación</li>
                                    <li>Becas Becanet de servicio social</li>
                                    <li>Becas Becanet de titulación</li>
                            </li>
                        </ul>
                        </li>

                        </ul><br/>
                        <p>La solicitud de becas Becanet Superior en sus distintas modalidades, se realizará por internet desde la web.</p>
                    </div>
                </div>
                <div class="area_info_alumnos_5">
                    <div class="area_info_alumnos_5_titulo"><h4>Servicio de transporte escolar</h4></div>
                    <div class="area_info_alumnos_5_info">
                        <p>La Universidad ofrece a los alumnos el servicio de transporte gratuito para asistir a clases, contando con el apoyo de un minibús, 
                            dos autobuses y un autobús para viajes foráneos, mismos que están adscritos a la Dirección de Administración y Finanzas, bajo este contexto se
                            establecieron 6 corridas diarias de lunes a viernes en los siguientes horarios y rutas de transporte:</p><br/>
                        <ul class="miUl">
                            <li><label class="negritas">06:30 Horas</label> de Walmart de Avenida Universidad y Ruíz Cortines a Universidad Tecnológica, directo por la avenida Luis Donaldo Colosio Murrieta.</li><br/>

                            <li><label class="negritas">06:30 Horas</label> Central Camionera, (Bajando la escalera Frente a zapateria D'Class) a Universidad Tecnológica, directo por la avenida Luis Donaldo
                                Colosio Murrieta.</li><br/>

                            <li><label class="negritas">15:15 Horas</label> de Universidad Tecnológica - Soriana - Mercado de la Sierra, directo.</li><br/>

                            <li><label class="negritas">16:15 Horas</label> de Universidad Tecnológica - Soriana - Mercado de la Sierra, directo.</li><br/>

                            <li><label class="negritas">17:15 Horas</label> de Universidad Tecnológica - Soriana - Mercado de la Sierra, directo.</li><br/>

                            <li><label class="negritas">21:15 Horas</label> de Universidad Tecnológica - (Parrilla por dentro solo si suben alumnos de esa zona) - Soriana - Mercado de la Sierra - Catedral - Av.
                                Mina - Central Camionera.</li><br/>

                            <li><label class="negritas">22:15 Horas</label> de Universidad Tecnológica - (Parrilla por dentro solo si suben alumnos de esa zona) - Soriana - Mercado de la Sierra - Catedral - Av.
                                Mina - Central Camionera.</li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=servicios" flush="true" />
    </body>
</html>
