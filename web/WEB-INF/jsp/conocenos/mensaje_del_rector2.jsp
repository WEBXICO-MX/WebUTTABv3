<%-- 
    Document   : mensaje_del_rector2
    Created on : 17-nov-2015, 11:31:02
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Mensaje del rector</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Licenciatura en Gestión y Desarrollo Turístico">
        <meta name="keywords" content="conócenos,mensaje del rector,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="${pageContext.request.contextPath}img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/conocenos2.min.css"/>
        <!--[if lt IE 9]>
        <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/ie.min.css"/>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeHeader.min.jsp?origen=conocenos" flush="true"  />
        <!-- Cuerpo -->
        <main>
            <section class="conocenos_section">
                <header class="conocenos_titulo">
                    <h2><span class="texto_resaltado">Conócenos</span> /</h2>
                    <h1>Mensaje del rector</h1>
                    <div class="corte"></div>
                </header>
                <article class="conocenos_contenido">
                    <section class="conocenos_texto">
                        <br/>
                        <p>En la Universidad Tecnológica de Tabasco (UTTAB) estamos ciertos de que los avances científicos y el progreso técnico deben ser empleados para satisfacer las necesidades de la sociedad a partir de una aplicación ética y una visión humanista.</p><br/>
                        <figure><img src="${pageContext.request.contextPath}/img/conocenos/mensaje_del_rector/mensaje_rector1-min.png" alt="Fernando Calzada Falc&oacute;n"/></figure><br/>
                        <p class="primera_linea">Nuestro quehacer universitario tiene como propósito la preparación de individuos autónomos e integrales que desempeñen funciones de gestión productiva, administrativa y de supervisión dentro de los respectivos niveles de competencia. El objetivo primordial es contribuir en la transformación del sector productivo y el desarrollo de Tabasco, la región sureste y el país en su conjunto, con un amplio sentido de responsabilidad social.</p><br/>
                        <p class="primera_linea">La Universidad pone un especial énfasis en la consolidación de las diversas opciones de educación continua, así como en los servicios de calidad en beneficio de los egresados, las empresas y las instituciones en general, bajo la premisa de la búsqueda permanente de la excelencia en todos los procesos. </p><br/>
                        <p class="primera_linea">En cada ciclo escolar llevamos a cabo una gran cantidad de actividades, en el entendido de que la formación del capital humano resulta estratégica para avanzar por la senda del desarrollo. Asumimos de igual forma los retos que plantean los avances tecnológicos y la integración a nivel mundial, visualizándolos como alicientes para la mejora continua y, sobre todo, como elementos que hay que traducir en ventajas comparativas y competitivas.</p><br/>
                        <p>La UTTAB ratifica su compromiso con la calidad educativa a partir de ocho ejes centrales:</p><br/>
                        <figure><img src="${pageContext.request.contextPath}/img/conocenos/mensaje_del_rector/mensaje_rector2-min.png" alt="8 ejes centrales"/></figure><br/>
                        <p class="primera_linea">Esta página electrónica constituye un espacio de comunicación e intercambio entre quienes formamos parte de la comunidad universitaria y la sociedad en su conjunto. Se trata de una opción altamente trascendente para proporcionar información a todas las personas interesadas en conocer mejor a la Universidad Tecnológica de Tabasco y, por supuesto, es un medio para recibir sugerencias y aportaciones que nos permitan mantenernos a la vanguardia.</p><br/>
                        <p class="primera_linea">Esperando que la navegación por nuestro portal sea de su agrado, le doy las gracias por su visita y queda abierta la invitación para que conozca las instalaciones de esta Casa de Estudios donde será siempre bien recibido.</p><br/>
                        <p class="negritas">¡Formación innovadora, compromiso con la calidad!</p><br/>
                        <p class="negritas">Fernando Calzada Falc&oacute;n</p>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
        </main>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.min.jsp?origen=conocenos" flush="true" />
    </body>
</html>