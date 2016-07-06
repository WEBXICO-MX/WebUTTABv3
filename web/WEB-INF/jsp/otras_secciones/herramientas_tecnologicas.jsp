<%-- 
    Document   : index
    Created on : 08-may-2015, 12:58:32
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Herramientas Tecnológicas</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco, radio UTTAB">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/otras_secciones.min.css">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}/img/favicon.ico"/> 
        <![endif]-->
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.min.css">
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="/WEB-INF/jsp/includeMenu.jsp" flush="true"  />
        <!-- Cuerpo -->
        <div id="contenedor2" style="margin-top: 44px;">
            <div class="area_titulo">
                <div style="width:400px; margin-left: 28px; margin-top: 5px;float:left;"><h3>Herramientas Tecnológicas</h3></div>
                <div style="width:90px; height: 36px; float: right; margin-top: 5px;">
                    <a href="javascript:void(0);" onclick="mostrar10();"><img id="mostrar1" src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/boton1_precionado.png" alt="Opción 1"/></a>&nbsp;&nbsp;
                    <a href="javascript:void(0);" onclick="mostrar20();"><img id="mostrar2" src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/boton2_suelto.png" alt="Opción 2"/></a>
                </div>
            </div>
            <div class="area_info">
                <div class="area_info_1">
                    <h4>Microsoft Office365</h4>
                    <img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/office365.png" alt="Microsoft Office365"/>
                    <br>
                    <p>La universidad cuenta con el programa Microsoft Office365 que ofrece los siguientes servicios:</p>
                    <br/>
                    <ul>
                        <li>Correo Institucional</li>
                        <li>Calendario</li> 
                        <li>Office en la nube</li>
                        <li>Videoconferencia</li>
                        <li>25 GB de Almacenamiento en  la nube  mediante OneDrive</li>
                        <li>Compartir archivos</li>
                    </ul>
                    <p>Puedes trabajar de forma colaborativa tus documentos, almacenarlos en OneDrive y consultarlos desde cualquier lugar con acceso a internet.</p>
                    <br/>
                    <a href="https://login.microsoftonline.com/" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/btn_office365.png" alt="Microsoft Office365" class="btn"></a>
                    <div class="corte"></div>
                </div>
                <div class="area_info_1">
                    <h4>Microsoft DreamSpark</h4>
                    <img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/dream_spark.png" alt="Microsoft DreamSpark"/>
                    <br>
                    <p>Es una tienda virtual de Microsoft que te permite descargar software de sistemas operativos, servidores, herramientas de desarrollo y aplicaciones, es decir una gama de 198 tipos de software sin costo para uso académico.</p> 
                    <br/>
                    <p>Para acceder a este beneficio se requiere que proporciones la cuenta de correo electrónico  a tus profesores o a la Dirección de Informática.</p>
                    <br/>
                    <a href="http://e5.onthehub.com/WebStore/ProductsByMajorVersionList.aspx?ws=d0ea9034-cf13-e211-a76f-f04da23e67f6&vsro=8&JSEnabled=1" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/btn_dream_spark.png" alt="Microsoft DreamSpark" class="btn"/></a>
                    <div class="corte"></div>
                </div>
                <div class="area_info_1">
                    <h4>Autodesk</h4>
                    <img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/autodesk.png" alt="Autodesk"/>
                    <br>
                    <p>Autodesk te ofrece más de 38 tipos de software en temas de Ingeniería, Diseño y Simulación, que puedes descargar en tu computadora para uso académico sin costo  por tres años. </p>
                    <br/>
                    <p>Este programa es de gran utilidad para los alumnos de las Divisiones Académicas de Procesos Industriales, Quimica y Tecnologías de la Información y Comunicación.</p>
                    <br/>
                    <a href="http://www.autodesk.com/education/free-software/all" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/btn_autodesk.png" alt="Autodesk" class="btn"/></a>
                    <div class="corte"></div>
                </div>
                <div class="area_info_1">
                    <h4>IBM Academic Initiative</h4>
                    <img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/ibm_academic_initiative.png" alt="IBM Academic Initiative"/>
                    <br>
                    <p>Este convenio  permite a los docentes  la descarga de material gratuito,  así como   acceder a cursos en línea que sirven de apoyo para fortalecer el contenido de las materias que imparten.</p>
                    <br/>
                    <a href="http://www-304.ibm.com/ibm/university/academic/pub/page/academic_initiative" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/btn_ibm_academic_initiative.png" alt="IBM Academic Initiative" class="btn"/></a>
                    <div class="corte"></div>
                </div>
                <div class="area_info_1">
                    <h4>CUDI</h4>
                    <img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/CUDI.png" alt="CUDI"/>
                    <br>
                    <p>CUDI es el organismo que busca impulsar el desarrollo de aplicaciones de esta red fomentando la colaboración en proyectos de investigación y educación entre sus miembros.</p>
                    <br/>
                    <a href="http://www.cudi.edu.mx/" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/btn_CUDI.png" alt="CUDI" class="btn"/></a>
                </div>
                <div class="area_info_1">
                    <h4>Académica</h4>
                    <img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/academia.jpg" alt="Académica"/>
                    <br>
                    <p>Académica.mx   es un portal donde puedes encontrar cursos gratuitos, repositorios digitales, blogs, videos, objetos de aprendizaje y temas de interés académico. </p>
                    <br/>
                    <a href="http://www.academica.mx " target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/btn_academia.png" alt="Académica" class="btn"/></a>
                    <div class="corte"></div>
                </div>
                <div class="area_info_1">
                    <h4>Yammer</h4>
                    <img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/yammer.png" alt="Yammer"/>
                    <br>
                    <p>Nuestra red inclusion privada que tiene como objetivo conocer las actividades relevantes de la universidad y su entorno organizacional. </p>
                    <br/>
                    <p>Los beneficios de usar esta red inclusion son los siguientes:</p>
                    <br/>
                    <p>Mejorar la comunicación, realizar trabajo colaborativo, gestionar el conocimiento, movilidad y accesibilidad. </p>
                    <br/>
                    <p>Para ingresar debes de contar con cuenta de correo institucional y acceder al siguiente enlace:</p>
                    <br/>
                    <a href="https://www.yammer.com/uttab.edu.mx/" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/btn_microsoft_virtual_academy.png" alt="Yammer" class="btn"/></a>
                    <div class="corte"></div>
                </div>
                <div class="area_info_2">
                    <h4>Microsoft Virtual Academy</h4>
                    <img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/microsoft_virtual_academy.png" alt="Microsoft Virtual Academy"/>
                    <br>
                    <p>La Academia virtual de Microsoft (MVA, por sus siglas en inglés) ofrece capacitación en línea sobre tecnologías Microsoft, impartida por expertos para contribuir a que los tecnólogos estén en continuo aprendizaje, con centenares de cursos en 11 idiomas. La misión de esta plataforma consiste en ayudar a los desarrolladores, profesionales de TI bien informados y estudiantes avanzados a conocer las tecnologías de punta, desarrollar sus habilidades e impulsarlos en sus carreras.</p>
                    <br/>
                    <p>Conviértete en un miembro de la Academia virtual de Microsoft, de manera de poder obtener puntos por su aprendizaje, lograr diferentes niveles de calificación y estatus relacionados a otros en su país o a nivel mundial, además de obtener certificados al completar el curso. Su panel personal lo ayuda a llevar el registro de su progreso y así poder compararlo con su plan personal de aprendizaje.</p>
                    <br/>
                    <a href="http://www.microsoftvirtualacademy.com/" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/btn_microsoft_virtual_academy.png" alt="Microsoft Virtual Academy" class="btn"/></a>
                    <div class="corte"></div>
                </div>
                <div class="area_info_2">
                    <h4>Curso Enseñando con Tecnología</h4>
                    <br/>
                    <p>El Curso en línea Enseñando con Tecnología los docentes tendrán la oportunidad al finalizar su capacitación de recibir un Diploma,  Como segunda opción pueden hacer su examen de Certificación Microsoft Certified Educator (MCE).</p>
                    <br/>
                    <ul>
                        <li class="negritas">Objetivo del curso:</li>
                        <li style=" list-style-type: none;">Prácticas de enseñanza innovadoras, fuertemente apoyadas por el uso de la tecnología de comunicación de información (ICT) refuerzan la adquisición de los estudiantes de competencias para el siglo XXII. Enseñando con tecnología es más que una capacitación tecnológica. Ayuda a desarrollar una comprensión más profunda de las TIC y cómo usarla para apoyar la enseñanza y aprendizaje de prácticas innovadoras.</li>
                        <li class="negritas">Beneficios:</li>
                        <li style=" list-style-type: none;">Los cursos son accesibles.</li>
                        <li style=" list-style-type: none;">Acceso a los cursos cuando y donde lo necesite y disponible en la mayoría de los dispositivos con conexión a internet. </li>
                        <li style=" list-style-type: none;">Basado en los estándares de tecnología maestro reconocido a nivel mundial incluyendo La UNESCO marco de competencias TIC para docentes (UNESCO TIC-CFT), enfoque de alfabetización tecnología y ISTE NETS para docentes.</li>
                        <li style=" list-style-type: none;">Creado por educadores para educadores. Apoya en el cumplimiento de estándares del currículo como la U. S. Normas Fundamentales comunes que requieren un alto nivel de integración de la tecnología.</li>
                        <li class="negritas">Certificación:</li>
                        <li style=" list-style-type: none;">Como segundo paso los Docentes pueden obtener la certificación MCE</li>
                        <li style=" list-style-type: none;">MCE – Microsoft Certified Educator  <a href="https://www.microsoft.com/learning/en-us/mce-certification.aspx" target="_blank">https://www.microsoft.com/learning/en-us/mce-certification.aspx</a></li>
                    </ul>
                    <br/>
                    <a href="http://www.educatornetwork.com/Sites/PD/ProfessionalDevelopment/Educators/Courses?lang=Spanish#es" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/btn_curso_ensenando_tecnologia.png" alt="Curso Enseñando con Tecnología" class="btn" /></a>
                    <div class="corte"></div>
                </div>
                <div class="area_info_2">
                    <h4>Microsoft YouthSpark</h4>
                    <img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/microsoft_youthspark.png" alt="Microsoft YouthSpark"/>
                    <br>
                    <p>Aprender sobre programación se vuelve una ventana de oportunidades para el acceso a un mejor futuro. Todos los jóvenes de la universidad pueden beneficiarse de aprender ciencias de la computación básica, independientemente de su profesión a futuro. Las ciencias de la computación tocan todos los aspectos de la vida cotidiana. </p>
                    <br/>
                    <a href="http://www.tupuedesmexico.org/" target="_blank"><img src="${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/btn_microsoft_youthspark.png" alt="Microsoft YouthSpark" class="btn" /></a>
                    <div class="corte"></div>
                </div>
                <div class="corte"></div>
            </div>

        </div>
        <!-- Cuerpo -->
        <jsp:include page="/WEB-INF/jsp/includePie.jsp" flush="true" />
        <script>

            function mostrar10()
            {
                $('.area_info_2').css('display', 'none');
                $('.area_info_1').css('display', 'inline-block');

                $('#mostrar1').prop('src', '${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/boton1_precionado.png');
                $('#mostrar2').prop('src', '${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/boton2_suelto.png');
            }
            function mostrar20()
            {
                $('.area_info_1').css('display', 'none');
                $('.area_info_2').css('display', 'inline-block');
                $('#mostrar1').prop('src', '${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/boton1_suelto.png');
                $('#mostrar2').prop('src', '${pageContext.request.contextPath}/img/otras_secciones/herramientas_tecnologicas/boton2_precioando.png');
            }
        </script>
    </body>
</html>