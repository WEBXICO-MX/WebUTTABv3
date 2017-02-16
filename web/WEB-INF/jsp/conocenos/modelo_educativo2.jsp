<%-- 
    Document   : modelo_educativo2
    Created on : 17-nov-2015, 15:42:47
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Modelo educativo</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco, Modelo educativo">
        <meta name="keywords" content="conócenos,modelo educativo,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/conocenos3.min.css"/>
        <!--[if lt IE 9]>
            <script src="${pageContext.request.contextPath}/bower_components/html5shiv/dist/html5shiv.min.js" type="text/javascript"></script>
        <![endif]-->
    </head>
    <body>
        <main>
            <jsp:include page="../index3Header.min.jsp" flush="true"  />
            <section class="conocenos_section">
                <header class="conocenos_titulo">
                    <h2><span class="texto_resaltado">Conócenos</span> /</h2>
                    <h1>Modelo educativo</h1>
                    <div class="corte"></div>
                </header>
                <article class="conocenos_contenido">
                    <section class="conocenos_texto">
                        <br/>
                        <p>El modelo educativo que se aplica en las Universidades Tecnológicas presenta diferencias significativas respecto a los esquemas tradicionales de nivel superior.</p><br/>
                        <img src="${pageContext.request.contextPath}/img/conocenos/modelo_educativo/modelo_educativo1-min.png" alt="modelo educativo"/>
                        <p>Entre las características más importantes del modelo educativo, se tienen las siguientes:</p>
                        <ul>
                            <li>Tres niveles educativos: Técnico Superior Universitario (TSU), Licencia Profesional y Licenciatura</li>
                            <li>Educación intensiva de dos o tres años posteriores al bachillerato, que posibilita la incorporación inmediata de los estudiantes al sector productivo</li>
                            <li>Carreras profesionales que responden a las necesidades del sector productivo</li>
                            <li>Todos los programas educativos cuentan con un perfil tecnológico</li>
                            <li>Altos niveles de calidad académica que se sustentan en una plantilla de docentes capacitados y con experiencia en el sector productivo</li>
                            <li>Una proporción importante de profesores es de tiempo completo, lo que asegura su activa participación en las asesorías y las tutorías</li>
                            <li>Preponderancia de clases prácticas con un 70% del total de contenido en el caso del TSU y la Licencia Profesional, así como del 60% para la Licenciatura</li>
                            <li>Laboratorios y talleres con equipo tecnológico especializado</li>
                            <li>La estructura curricular de los programas educativos está organizada por unidades de aprendizaje y áreas de conocimiento que, en su conjunto, logran la competencia profesional</li>
                            <li>Fuerte vinculación entre la escuela y la empresa. En el último cuatrimestre de cada nivel educativo se realiza una estadía profesional con una duración de 500 horas, donde los alumnos, además de desempeñarse de forma práctica en condiciones productivas reales, tienen oportunidad de afianzar su primer empleo</li>
                            <li>Formación permanente de egresados a través de cursos de educación continua</li>
                            <li>Todos los programas educativos tienen los siguientes atributos: CALIDAD, PERTINENCIA, INTENSIDAD, CONTINUIDAD, POLIVALENCIA y FLEXIBILIDAD</li>
                        </ul><br/>
                        <p class="primera_linea">En el caso concreto de la Universidad Tecnológica de Tabasco (UTTAB) se ofrecen dos de los tres niveles educativos que contempla el modelo educativo de las universidades tecnológicas: TSU y licenciatura.</p>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
           <jsp:include page="../index3Footer.min.jsp" flush="true"  />
        </main>
    </body>
</html>