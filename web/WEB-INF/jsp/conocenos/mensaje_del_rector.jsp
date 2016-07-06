<%-- 
    Document   : mensaje_del_rector
    Created on : 8/07/2013, 12:10:45 PM
    Author     : Weisß
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Mensaje del Rector</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Mensaje del Rector">
        <meta name="keywords" content="tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
        <!--[if IE]>
        <link rel="shortcut icon"  href="img/favicon.ico"/> 
        <![endif]-->
        <link rel="icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="css/conocenos.min.css">
        <!--[if lte IE 8]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <link type="text/css" href="css/ie.min.css" rel="stylesheet">
        <![endif]-->
    </head>
    <body>
        <jsp:include page="../includeMenu.jsp?origen=conocenos" flush="true"  />
        <!-- Cuerpo -->
        <div class="contenedor">
            <div class="area_titulo_mensaje_rector">
                <h3>Mensaje del Rector</h3></div>
            <div class="area_info_mensaje_rector">
                <img src="img/conocenos/mensaje_del_rector/rector.png" width="340" height="280" alt="Fernando Calzada Falcón" style="float: left; margin-right: 15px;margin-bottom: 15px;"/>
                <p>En la Universidad Tecnológica de Tabasco (UTTAB) estamos ciertos de que los avances científicos y el progreso técnico deben ser empleados para satisfacer las necesidades de la sociedad, a partir de una aplicación ética y una visión humanista. </p><br/> 
                <p>Nuestro quehacer universitario tiene como propósito la preparación de individuos autónomos e integrales, que desempeñen funciones de gestión productiva, administrativa y de supervisión dentro de los respectivos niveles de competencia. El objetivo primordial es contribuir en la transformación del sector productivo y el desarrollo de Tabasco, la región sureste y el país en su conjunto, con un amplio sentido de responsabilidad social. </p><br/> 
                <p>La Universidad pone un especial énfasis en la consolidación de las diversas opciones de educación continua, así como en los servicios de calidad en beneficio de los egresados, las empresas y las instituciones en general, bajo la premisa de la búsqueda permanente de la excelencia en todos los procesos. </p><br/>
                <p>En cada ciclo escolar llevamos a cabo una gran cantidad de actividades, en el entendido de que la formación del capital humano resulta estratégica para avanzar por la senda del desarrollo. Asumimos de igual forma los retos que plantean los avances tecnológicos y la integración a nivel mundial, visualizándolos como alicientes para la mejora continua y, sobre todo, como elementos que hay que traducir en ventajas comparativas y competitivas.</p><br/>
                <p>La UTTAB ratifica su compromiso con la calidad educativa a partir de ocho ejes centrales:</p><br/>
                <img src="${pageContext.request.contextPath}/img/conocenos/mensaje_del_rector/ejes_centrales.png" alt="Ejes centrales"/><br/>
                <p>Esta página electrónica constituye un espacio de comunicación e intercambio entre quienes formamos parte de la comunidad universitaria y la sociedad en su conjunto. Se trata de una opción altamente trascendente para proporcionar información a todas las personas interesadas en conocer mejor a la Universidad Tecnológica de Tabasco y, por supuesto, es un medio para recibir sugerencias y aportaciones que nos permitan mantenernos a la vanguardia.</p><br/>
                <p>Esperando que la navegación por nuestro portal sea de su agrado, le doy las gracias por su visita y queda abierta la invitación para que conozca las instalaciones de esta Casa de Estudios, donde será siempre bien recibido.</p><br/>
                <p class="negritas">¡Formación innovadora,</p>
                <p class="negritas">compromiso con la calidad!</p><br/>
                <p class="negritas">Fernando Calzada Falc&oacute;n</p>
            </div>
        </div>
        <!-- Cuerpo -->
        <jsp:include page="../includePie.jsp?origen=conocenos" flush="true" />
    </body>
</html>