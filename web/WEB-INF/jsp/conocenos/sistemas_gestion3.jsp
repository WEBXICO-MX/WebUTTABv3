<%-- 
    Document   : sistemas_gestion3
    Created on : 17-nov-2015, 15:56:27
    Author     : Weiss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>UTTAB &#124; Sistemas Institucionales de Gestión</title>
        <meta charset="UTF-8">
        <meta name="author" content="Depto. Desarrollo de sistemas UTTAB">
        <meta name="description" content="Universidad Tecnológica de Tabasco,Sistemas Institucionales de Gestión">
        <meta name="keywords" content="conócenos,sistemas institucionales de gestión,tsu,educación,tecnologías,ingeniería,industrial,tecnológica,uttab,desarrollo,química,procesos,tabasco,universidad,servicios,gastronomía,page,comunicación,negocios,administración,aviso,proyectos,alumnos,escolar,mantenimiento,institucional,programa,competencias">
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
                    <h1>Sistemas Institucionales de Gestión</h1>
                    <div class="corte"></div>
                </header>
                <article class="conocenos_contenido">
                    <section class="conocenos_texto">
                        <header><h3>Sistema de Gestión de la Calidad</h3></header>
                        <article>
                            <p>La UTTAB es referente regional en la implementación y certificación del Sistema de Gestión de la Calidad (SGC).</p>
                            <p class="primera_linea">Desde el año 2000 se ha administrado y mantenido un SGC con enfoque al cliente y a procesos, lo cual ha permitido el logro de los resultados esperados.</p>
                            <p class="primera_linea">Alineado con la estrategia y desarrollo institucionales, el SGC funge como la herramienta más importante para tomar acciones que busquen alcanzar la satisfacción del cliente con base en el impulso en la mejora continua.</p>
                            <p class="primera_linea">El modelo de procesos del SGC en la UTTAB contempla 5 macroprocesos (2 sustantivos u orientados al cliente, 1 directivo y 2 de soporte), tal como puede apreciarse en el siguiente esquema:</p>
                            <img src="${pageContext.request.contextPath}/img/conocenos/sistemas_gestion/sistemas_institucionales1-min.png" alt="Sistema de Gestión de la Calidad" style="width: 946px; height: 477px"/>
                            <p class="primera_linea">El Sistema de Gestión de la Calidad tiene como alcance los procesos que lleva a cabo la Universidad Tecnológica de Tabasco para otorgar y desarrollar servicios educativos de nivel superior, así como acciones de capacitación, educación continua y provisión de servicios tecnológicos.</p>
                        </article>
                    </section>
                    <section class="conocenos_texto">
                        <header><h3>Sistema de Gestión Ambiental</h3></header>
                        <article>
                            <p class="primera_linea">En el año 2009 la UTTAB se sumó a los principios de la Carta de la Tierra y, desde entonces a la fecha, ha promovido con diferentes iniciativas el respeto a los seres vivos, la justicia y la paz social.</p>
                            <p class="primera_linea">En 2010 la Coordinación General de Universidades Tecnológicas promovió la iniciativa de UT Sustentable, teniendo como ejes: agua, aire, suelo, gestión de residuos, salud y ahorro energético. En ese mismo año se efectuaron en la UTTAB los primeros autodiagnósticos ambientales, estableciéndose el Sistema de Gestión Ambiental ISO 14001:2004, como estrategia para lograr mejoras ambientales.</p>
                            <p class="primera_linea">En 2011 se efectuó el Comité de Medio Ambiente de la UTTAB integrado por docentes y administrativos con el objetivo de planear, comunicar, implementar, mantener y evaluar el Sistema de Gestión Ambiental (SGA) para la UTTAB.</p>
                            <p class="primera_linea">A partir de 2012 se llevó a cabo el Sistema de Gestión Ambiental basado en la norma ISO 14001:2004 que promueve la estandarización de las actividades productivas y de servicios para disminuir los impactos negativos al ambiente y lograr un desarrollo sustentable.</p>
                            <p class="primera_linea">Los ejes del sistema de gestión ambiental son:</p>
                            <ul>
                                <li>Reducción de costos de servicios (agua, energía eléctrica, gas, transporte y disposición final de los residuos)</li>
                                <li>Reconocimiento de los sectores sociales y productivos</li>
                                <li>Participación de los proveedores en la cultura ambiental</li>
                                <li>Promoción para la participación del personal y las partes interesadas</li>
                                <li>Cumplimiento del marco legal ambiental</li>
                                <li>Uso eficiente de los recursos naturales</li>
                                <li>Mejora en la imagen institucional</li>
                                <li>Desarrollo de la mejora continua</li>
                                <li>Confianza de los clientes</li>
                            </ul>
                        </article>
                    </section>
                </article>
                <div class="corte"></div>
            </section>
            <jsp:include page="../index3Footer.min.jsp" flush="true"  />
        </main>
    </body>
</html>