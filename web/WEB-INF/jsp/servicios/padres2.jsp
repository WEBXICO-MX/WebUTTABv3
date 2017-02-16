<%-- 
    Document   : tutorias
    Created on : 25-nov-2015, 12:31:11
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Tutorías</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Tutorías">
        <meta name="keywords" content="servicios,Tutorías,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/servicios3.min.css"/>
        <style>
            ol { list-style-type: lower-alpha; list-style-position: inside;}
            ol > li { margin-bottom: 15px;}
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
                    <h2><span class="texto_resaltado">Servicios / Alumnos</span> /</h2>
                    <h1>Tutorías</h1>
                    <div class="corte"></div>
                </header>
                <article class="servicios_contenido">
                    <section class="servicios_texto">
                        <img src="${pageContext.request.contextPath}/img/servicios/tutorias/tutorias1-min.png" alt="Tutorías"/>
                    </section>
                    <section class="servicios_texto">
                        <h3>Tutorías</h3>
                        <p>La Universidad Tecnológica de Tabasco ofrece a sus estudiantes un Programa Institucional de Tutorías (PITA) cuyo objetivo es contribuir a la formación integral de los alumnos a través del acompañamiento personal y académico para reducir los índices de reprobación y deserción, incrementar el nivel de aprovechamiento académico, así como propiciar una conducta apropiada por los alumnos en sus actividades universitarias.</p>
                        <p class="primera_linea">La acción tutorial en nuestra universidad está orientada a la formación integral del estudiante de acuerdo al modelo 70% práctica y 30% teoría, teniendo como base la utilización de modelos centrados en el alumno y la orientación hacia el aprendizaje que permita el desarrollo de la inteligencia, la conducta y la afectividad.</p>
                        <p class="primera_linea">Cada división académica asigna a un profesor de tiempo completo o de asignatura para atender a un grupo determinado de alumnos, cuya responsabilidad es:</p>
                        <ul>
                            <li>Detectar problemas de conducta individual o grupal</li>
                            <li>Identificar la problemática de índole académica, socioeconómica y familiar del alumno que afecte su rendimiento</li>
                            <li>Ayudar al alumno a explorar sus capacidades y/o a compensar sus deficiencias, propugnando por la autoformación con base en el apoyo mutuo y en el trabajo en común</li>
                            <li>Mantenerse en comunicación con los padres de familia en casos específicos</li>
                            <li>Es importante destacar que el tutor canaliza al alumno con el área correspondiente cuando las diversas problemáticas rebasan su capacidad o formación</li>
                        </ul>
                        <p>Los horarios de las tutorías se ocuparán en función a las necesidades de cada uno de los casos:</p>
                        <ol>
                            <li>Tutorías
                                <ul>
                                    <li>Entrevista diagnóstica</li>
                                    <li>Entrevista de seguimiento</li>
                                    <li>Orientación (grupal e individual)</li>
                                    <li>Evaluación</li>
                                </ul>
                            </li>
                            <li>Cursos
                                <ul>
                                    <li>Optativas</li>
                                    <li>Nivelación</li>
                                    <li>Complementación</li>
                                </ul>
                            </li>
                            <li>Asesorías
                                <ul>
                                    <li>Asesoría académica</li>
                                    <li>Asesoría en proyectos</li>
                                    <li>Otras actividades relacionadas con la tutoría que pueden realizarse fuera del horario de esta, pueden ser:</li>
                                </ul>
                            </li>
                            <li>Consulta psicopedagógica
                                <ul>
                                    <li>Problemas psicológicos y conductuales</li>
                                    <li>Problemas de aprendizaje</li>
                                </ul>
                            </li>
                            <li>Consultorio médico
                                <ul>
                                    <li>Atención médica</li>
                                </ul>
                            </li>
                            <li>Trámite de becas
                                <ul>
                                    <li>Trámite y renovación de becas</li>
                                </ul>
                            </li>
                            <li>Centro de innovación educativa
                                <ul>
                                    <li>Material autodidacta</li>
                                </ul>
                            </li>
                            <li>UT-virtual
                                <ul>
                                    <li>Cursos del mapa curricular en plataforma</li>
                                </ul>
                            </li>
                        </ol>
                        <p>Si el padre o responsable del alumno desea tener una entrevista con el tutor puede solicitarla al director de la carrera vía correo electrónico.</p>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />        
        </main>
    </body>
</html>